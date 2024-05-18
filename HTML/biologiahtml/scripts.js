// Dados do quiz: perguntas, opções, imagens, explicações e respostas corretas
const quizData = [
    {
        question: "Qual é a capital do Brasil?",
        a: "Rio de Janeiro",
        b: "Brasília",
        c: "São Paulo",
        d: "Salvador",
        correct: "b",
        image: "img/1.png",
        explain: "A capital do Brasil é Brasília, construída em 1960."
    },
    {
        question: "Qual é a maior floresta tropical do mundo?",
        a: "Floresta Amazônica",
        b: "Floresta do Congo",
        c: "Floresta da Tasmânia",
        d: "Floresta da Baviera",
        correct: "a",
        image: "img/2.png",
        explain: "A maior floresta tropical do mundo é a Floresta Amazônica."
    },
    {
        question: "Quem pintou a Mona Lisa?",
        a: "Vincent Van Gogh",
        b: "Pablo Picasso",
        c: "Leonardo da Vinci",
        d: "Claude Monet",
        correct: "c",
        image: "img/3.png",
        explain: "A Mona Lisa foi pintada por Leonardo da Vinci."
    },
    {
        question: "Qual é o maior planeta do nosso sistema solar?",
        a: "Terra",
        b: "Marte",
        c: "Júpiter",
        d: "Saturno",
        correct: "c",
        image: "img/4.png",
        explain: "O maior planeta do nosso sistema solar é Júpiter."
    },
    {
        question: "Quantos continentes existem no mundo?",
        a: "5",
        b: "6",
        c: "7",
        d: "8",
        correct: "c",
        image: "img/5.png",
        explain: "Existem 7 continentes no mundo."
    }
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
