// função de somar números
function adicionar(a,b){
    return a + b;
}

// função de calcular o dobro
function calcularDobro(valor){
    return valor * 2;
}

// TESTE DE INTEGRAÇÃO
describe ("Teste de integração", function(){
    it("deve somar dois números e calcular o dobro", function(){
        const resultadoSoma = adicionar(2,3);
        const resultadoDobro = calcularDobro(resultadoSoma);
        expect(resultadoDobro).toBe(10);
    });
    it("deve somar dois números e calcular o dobro mesmo com númerso negativos", function(){
        const resultadoSoma = adicionar(-3,-3);
        const resultadoDobro = calcularDobro(resultadoSoma);
        expect(resultadoDobro).toBe(-12);
    })
})


function concatenarTexto(parte1, parte2){
    return parte1 + ' ' + parte2;
}


function converter(texto){
    return texto.toUpperCase();
}

describe("Segundo teste de integração", function(){
    it("Deve juntar dois textos e deixar maiúsculo", function(){
        const texto = concatenarTexto("tudo","bem");
        const textoMaiusculo = converter(texto);
        
        expect(textoMaiusculo).toBe("TUDO BEM")
    });
    it("Deve lidar con String vazia", function(){
        const texto = concatenarTexto("","teste");
        const textoMaiusculo = converter(texto);
        expect(textoMaiusculo).toBe(" TESTE")
    })
})

// Exercícios

// Exercício 1
function somarValores(valor1, valor2, valor3, valor4) {
    return valor1 + valor2 + valor3 + valor4;
}

function avaliarMedia(somaDosValores, quantidadeDeValores) {
    if (somaDosValores / quantidadeDeValores >= 6) {
        return "Aprovado";
    } else {
        return "Reprovado";
    }
}

describe("Teste de validação de soma e média", function () {
    it("Deve verificar a soma dos valores", function () {
        const resultado = somarValores(10, 9, 8, 7);
        expect(resultado).toBe(34);
    });
    it("Deve verificar se a média aprova o aluno", function () {
        const resultado = somarValores(7, 7, 7, 7);
        const situacao = avaliarMedia(resultado, 4);
        expect(situacao).toBe("Aprovado");
    });
    it("Deve verificar se a média reprova o aluno", function () {
        const resultado = somarValores(5, 5, 5, 5);
        const situacao = avaliarMedia(resultado, 4);
        expect(situacao).toBe("Reprovado");
    });
});

// Exercício 2
function multiplicarValores(x, y) {
    return x * y;
}

function calcularTriploDoResultado(numero) {
    return numero * 3;
}

describe("Teste de multiplicação e triplo", function () {
    it("Deve validar se o triplo da multiplicação está correto", function () {
        const produto = multiplicarValores(3, 3);
        const triplo = calcularTriploDoResultado(produto);
        expect(triplo).toBe(27);
    });
    it("Deve validar multiplicação com números negativos", function () {
        const produto = multiplicarValores(-3, -3);
        const triplo = calcularTriploDoResultado(produto);
        expect(triplo).toBe(27);
    });
    it("Deve validar multiplicação de positivo com negativo", function () {
        const produto = multiplicarValores(-3, 3);
        const triplo = calcularTriploDoResultado(produto);
        expect(triplo).toBe(-27);
    });
});

// Exercício 3
function obterDesconto(valorTotal) {
    if (valorTotal <= 100) {
        return 0.95;  
    } else if (valorTotal >= 101 && valorTotal <= 500) {
        return 0.90;  
    } else if (valorTotal > 500) {
        return 0.85; 
    }
}

function aplicarPercentualDesconto(valorTotal, percentual) {
    return valorTotal * percentual;
}

describe("Teste de aplicação de desconto", function () {
    it("Deve verificar o desconto de 5%", function () {
        const valorInicial = 100;
        const percentual = obterDesconto(valorInicial);  
        const valorComDesconto = aplicarPercentualDesconto(valorInicial, percentual);  
        expect(valorComDesconto).toBe(95);
    });
    it("Deve verificar o desconto de 10%", function () {
        const valorInicial = 150;
        const percentual = obterDesconto(valorInicial);  
        const valorComDesconto = aplicarPercentualDesconto(valorInicial, percentual);  
        expect(valorComDesconto).toBe(135);
    });
    it("Deve verificar o desconto de 15%", function () {
        const valorInicial = 600;
        const percentual = obterDesconto(valorInicial);  
        const valorComDesconto = aplicarPercentualDesconto(valorInicial, percentual);  
        expect(valorComDesconto).toBe(510);
    });
});


