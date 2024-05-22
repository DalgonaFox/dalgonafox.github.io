// Dados do quiz: perguntas, opções, imagens, explicações e respostas corretas

const quizData = [
    //mitose
    {
        question: "Qual é a fase da mitose em que os cromossomos se alinham no centro da célula?",
        a: "Prófase",
        b: "Metáfase",
        c: "Anáfase",
        d: "Telófase",
        correct: "b",
        image: "img/metafase.png",
        explain: "Durante a metáfase, os cromossomos se alinham no centro da célula, formando a placa metafásica. Isso assegura que cada célula filha receberá uma cópia idêntica dos cromossomos."
    },
    {
        question: "Durante a mitose, em qual fase ocorre a separação das cromátides irmãs?",
        a: "Interfase",
        b: "Prófase",
        c: "Metáfase",
        d: "Anáfase",
        correct: "d",
        image: "img/anafase.png",
        explain: "Na anáfase, as cromátides irmãs são separadas e puxadas para polos opostos da célula. Isso é essencial para que cada célula filha receba a quantidade correta de material genético."
    },
    {
        question: "Qual das seguintes estruturas é responsável pela separação dos cromossomos durante a mitose? ",
        a: "Núcleo",
        b: "Centríolo",
        c: "Fuso mitótico",
        d: "Lisossomo",
        correct: "c",
        image: "img/metafase.png",
        explain: "O fuso mitótico é composto por microtúbulos que se ligam aos centrômeros dos cromossomos e os puxam para os polos opostos da célula durante a anáfase."
    },
    {
        question: "As alternativas corretas sobre a Mitose são: I) No final do processo, observa-se a formação de duas células-filhas geneticamente iguais. II) Ocorrem duas divisões celulares. III) Ocorre em células somáticas. IV) Ocorre uma divisão celular.",
        a: "I, II e IV",
        b: "II, III, IV",
        c: "I, III, IV",
        d: "I, II, IV",
        correct: "c",
        image: "img/interfase.jpg",
        explain: "Estão corretas as afirmações de que: No final do processo, observa-se a formação de duas células-filhas geneticamente iguais, ocorre em células somáticas e ocorre uma divisão celular."
    },
    /*{
        question: "Qual é a principal diferença entre mitose e meiose? ",
        a: "A mitose ocorre apenas em células germinativas, enquanto a meiose ocorre em células somáticas.",
        b: "A mitose resulta em duas células geneticamente idênticas, enquanto a meiose resulta em quatro células geneticamente diversas.",
        c: "A mitose ocorre em organismos multicelulares, enquanto a meiose ocorre em organismos unicelulares.",
        d: "A mitose ocorre apenas durante a reprodução sexual, enquanto a meiose ocorre durante a reprodução assexuada.",
        correct: "b",
        image: "img/5.png",
        explain: "A mitose produz duas células-filhas geneticamente idênticas à célula-mãe, enquanto a meiose produz quatro células-filhas geneticamente diversas, cada uma com metade do número de cromossomos da célula original. A meiose é crucial para a reprodução sexual, enquanto a mitose é usada para crescimento e reparo."
    },*/
    //meiose
    {
        question: "Em que fase ocorre o crossing over?",
        a: "Divisão celular",
        b: "Intercelular",
        c: "Telófase",
        d: "Intérfase",
        correct: "d",
        image: "img/crossingover.jpg",
        explain: ""
    },
    
    //interfase
    {
        question: "Qual o nome dado a fase do ciclo celular em que se encontram o g1, s e g2?",
        a: "Divisão celular",
        b: "Intercelular",
        c: "Telófase",
        d: "Intérfase",
        correct: "d",
        image: "img/ciclo.jpg",
        explain: ""
    },
    {
        question: "Em que momento da intérfase o DNA espiraliza?",
        a: "G1",
        b: "S",
        c: "G2",
        d: "Nenhum dos anteriores",
        correct: "c",
        image: "img/ciclo.jpg",
        explain: ""
    },
    {
        question: "Como ocorre a formação de um novo filamento do DNA?",
        a: "Aumenta seu tamanho",
        b: "Diminui seu tamanho",
        c: "DNA é duplicado",
        d: "Não forma um novo filamento",
        correct: "c",
        image: "img/dna.png",
        explain: ""
    },
];

// Seletores de elementos do DOM
const quiz = document.getElementById('quiz');
const questionEl = document.getElementById('question');
const questionImage = document.getElementById('question-image');
const a_btn = document.getElementById('a');
const b_btn = document.getElementById('b');
const c_btn = document.getElementById('c');
const d_btn = document.getElementById('d');
const submitBtn = document.getElementById('submit');
const nextBtn = document.getElementById('next');
const scoreEl = document.getElementById('score');
const card = document.getElementById('card');
const explainText = document.getElementById('explain-text');

// Variáveis de controle do quiz
let currentQuiz = 0;
let score = 0;
let selectedAnswer = null;

// Função que carrega a pergunta e opções na tela
function loadQuiz() {
    deselectAnswers();
    const currentQuizData = quizData[currentQuiz];
    questionEl.innerText = currentQuizData.question;
    questionImage.src = currentQuizData.image;
    
    a_btn.innerText = currentQuizData.a;
    b_btn.innerText = currentQuizData.b;
    c_btn.innerText = currentQuizData.c;
    d_btn.innerText = currentQuizData.d;
    
    questionImage.style.display = 'block';
    explainText.style.display = 'none';
    submitBtn.style.display = 'block';
    nextBtn.style.display = 'none';
    card.classList.remove('flipped');

    updateScore();
}

// Função que desmarca todas as opções de resposta
function deselectAnswers() {
    selectedAnswer = null;
    a_btn.classList.remove('selected', 'correct', 'incorrect');
    b_btn.classList.remove('selected', 'correct', 'incorrect');
    c_btn.classList.remove('selected', 'correct', 'incorrect');
    d_btn.classList.remove('selected', 'correct', 'incorrect');
}

// Função que seleciona uma resposta
function selectAnswer(answer) {
    deselectAnswers();
    selectedAnswer = answer;
    document.getElementById(answer).classList.add('selected');
}

// Função que atualiza a pontuação
function updateScore() {
    scoreEl.innerText = `Pontuação: ${score}/${quizData.length}`;
}

// Função que mostra a explicação
function showExplain(explanation) {
    explainText.innerText = explanation;
    explainText.style.display = 'block';
}

// Evento de clique no botão de envio
submitBtn.addEventListener('click', () => {
    if (selectedAnswer) {
        // Marca a resposta correta e incorreta
        if (selectedAnswer === quizData[currentQuiz].correct) {
            document.getElementById(selectedAnswer).classList.add('correct');
            score++;
            updateScore();
        } else {
            document.getElementById(selectedAnswer).classList.add('incorrect');
            document.getElementById(quizData[currentQuiz].correct).classList.add('correct');
        }
        showExplain(quizData[currentQuiz].explain);
        card.classList.add('flipped');
        questionImage.style.display = 'none';

        submitBtn.style.display = 'none';
        nextBtn.style.display = 'block';
    }
});

// Evento de clique no botão "Next"
nextBtn.addEventListener('click', () => {
    currentQuiz++;
    if (currentQuiz < quizData.length) {
        loadQuiz();
    } else {
        localStorage.setItem('finalScore', score);
        if (score < (quizData.length / 2)) {
            window.location.href = 'ahnao.html';
        } else {
            window.location.href = 'parabens.html';
        }
    }
});

// Carrega a primeira pergunta
loadQuiz();
