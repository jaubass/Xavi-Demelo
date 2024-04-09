const textoAnimacion = document.querySelector('.typing-animation');

function animateFadingText(words, index = 0) {
    textoAnimacion.textContent = '';
    const fadeInDuration = 2000;
    const fadeOutDuration = 2000;
    const pauseDuration = 2000;

    function fadeOut() {
        textoAnimacion.style.opacity = 0;
        setTimeout(fadeIn, fadeOutDuration);
    }

    function fadeIn() {
        index = (index + 1) % words.length;
        textoAnimacion.textContent = words[index];
        textoAnimacion.style.opacity = 1;
        setTimeout(fadeOut, pauseDuration);
    }

    fadeIn();
}

animateFadingText([
    "igualtat & música",
    "drets & infància",
    "teatre & compromís",
    "respecte & LGTBIQ+",
    "ecologisme & clown"
]);
