const stickyMenu = document.querySelector('.sticky__contenido');
let lastScroll = 0;
let scrolledDown = false;

window.addEventListener('scroll', function() {
    const currentScroll = window.scrollY;

    if (currentScroll > lastScroll) {
        // Scroll hacia abajo
        if (!scrolledDown) {
            stickyMenu.classList.add('visible');
            scrolledDown = true;
        }
        stickyMenu.classList.add('active');
    } else {
        // Scroll hacia arriba
        stickyMenu.classList.remove('active');
    }

    lastScroll = currentScroll;
});
