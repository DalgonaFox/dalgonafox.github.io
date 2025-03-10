
const quizData = [
    {
        question: "What is the phase of mitosis in which the chromosomes line up in the center of the cell?",
        a: "Prophase",
        b: "Metaphase",
        c: "Anaphase",
        d: "Telophase",
        correct: "b",
        image: "/websites/redesign/divisaocelular/src/img/metafase.png",
        explain: "During metaphase, the chromosomes line up in the center of the cell, forming the metaphase plate. This ensures that each daughter cell will receive an identical copy of the chromosomes."
    },
    {
        question: "During mitosis, at which stage do the sister chromatids separate?",
        a: "Interphase",
        b: "Prophase",
        c: "Metaphase",
        d: "Anaphase",
        correct: "d",
        image: "/websites/redesign/divisaocelular/src/img/anafase.png",
        explain: "In anaphase, the sister chromatids are separated and pulled to opposite poles of the cell. This is essential for each daughter cell to receive the correct amount of genetic material."
    },
    {
        question: "Which of the following structures is responsible for separating the chromosomes during mitosis? ",
        a: "Nucleus",
        b: "Centriole",
        c: "Mitotic spindle",
        d: "Lysosome",
        correct: "c",
        image: "/websites/redesign/divisaocelular/src/img/metafase.png",
        explain: "The mitotic spindle is made up of microtubules that attach to the centromeres of the chromosomes and pull them towards opposite poles of the cell during anaphase."
    },

    {
        question: "At what stage does crossing over occur?",
        a: "Prophase I",
        b: "Metaphase I",
        c: "Prophase II",
        d: "Anaphase I",
        correct: "a",
        image: "/websites/redesign/divisaocelular/src/img/cromossomo.png",
        explain: "During Metaphase I, the homologous pairs line up on the metaphase plate. They are thus close enough for crossing over to occur."
    },

    {
        question: "In meiosis, which element is separated in Anaphase I?",
        a: "Mitotic spindle",
        b: "Cytoplasm",
        c: "Sister chromatids",
        d: "Chromosomes",
        correct: "d",
        image: "/websites/redesign/divisaocelular/src/img/anafase1.png",
        explain: "During Anaphase I, homologous chromosomes separate. Unlike Anaphase II, in which the sister chromatids separate."
    },

    {
        question: "How many daughter cells are generated at the end of meiosis?",
        a: "2",
        b: "3",
        c: "4",
        d: "6",
        correct: "c",
        image: "/websites/redesign/divisaocelular/src/img/telofase2.png",
        explain: "Mitosis produces two daughter cells identical to the mother cell. Meiosis, on the other hand, produces 4 daughter cells with different genetic material to the mother cell."
    },
    {
        question: "What defines homologous chromosomes?",
        a: "Being identical",
        b: "Similar shape and size",
        c: "Same version of genes",
        d: "If they split",
        correct: "b",
        image: "/websites/redesign/divisaocelular/src/img/cromossomo.png",
        explain: "The two chromosomes of a homologous pair are very similar to each other and have the same size and shape. However, they don't necessarily have the same versions of genes."
    },
    
    {
        question: "What is the name given to the phase of the cell cycle in which g1, s and g2 are found?",
        a: "Cell division",
        b: "Intercellular",
        c: "Telophase",
        d: "Interphase",
        correct: "d",
        image: "/websites/redesign/divisaocelular/src/img/cellcycle.png",
        explain: "Interphase is the preparation of cells for division, separated into three stages, G1, S and G2"
    },
    {
        question: "At what point during interphase does DNA spiralize?",
        a: "G1",
        b: "S",
        c: "G2",
        d: "None of the above",
        correct: "c",
        image: "/websites/redesign/divisaocelular/src/img/espiral.gif",
        explain: "In the third stage of interphase, G2, the DNA spiralizes/condenses, generating the shape of a chromosome, thus beginning the division."
    },
    {
        question: "How does the formation of a new DNA strand occur?",
        a: "Increase its size",
        b: "Reduces its size",
        c: "DNA is duplicated",
        d: "Does not form",
        correct: "c",
        image: "/websites/redesign/divisaocelular/src/img/dna.png",
        explain: "In the S stage of interphase, the DNA undergoes duplication, generating a new strand and the famous X shape of the chromosome."
    },
];

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

let currentQuiz = 0;
let score = 0;
let selectedAnswer = null;

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

function deselectAnswers() {
    selectedAnswer = null;
    a_btn.classList.remove('selected', 'correct', 'incorrect');
    b_btn.classList.remove('selected', 'correct', 'incorrect');
    c_btn.classList.remove('selected', 'correct', 'incorrect');
    d_btn.classList.remove('selected', 'correct', 'incorrect');
}

function selectAnswer(answer) {
    deselectAnswers();
    selectedAnswer = answer;
    document.getElementById(answer).classList.add('selected');
}

function updateScore() {
    scoreEl.innerText = `Points: ${score}/${quizData.length}`;
}

function showExplain(explanation) {
    explainText.innerText = explanation;
    explainText.style.display = 'block';
}

submitBtn.addEventListener('click', () => {
    if (selectedAnswer) {
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

nextBtn.addEventListener('click', () => {
    currentQuiz++;
    if (currentQuiz < quizData.length) {
        loadQuiz();
    } else {
        localStorage.setItem('finalScore', score);
        if (score < (quizData.length / 2)) {
            window.location.href = 'ohno.html';
        } else {
            window.location.href = 'congrats.html';
        }
    }
});

loadQuiz();
