let lastScrollPosition = 0;
let greenThreshold = 20;
let scrollThreshold = 20;
let isScrollingUp = false;

window.addEventListener('scroll', function() {
    let title = document.querySelector('.hero__content--title');
    let span = title.querySelector('span');
    let scrollPosition = window.scrollY;

    isScrollingUp = scrollPosition < lastScrollPosition;

    if (isScrollingUp && scrollPosition > 0) {
        span.style.color = '#C6DF76';
    } else {
        if (scrollPosition >= 0 && scrollPosition <= greenThreshold) {
            span.style.color = '#C6DF76';
        } else {
            span.style.color = '#FE72A9';
        }
    }

    lastScrollPosition = scrollPosition;
});
