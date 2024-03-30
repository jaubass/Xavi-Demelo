document.addEventListener("DOMContentLoaded", function() {
    const hamburguesa = document.querySelector('.hamburguesa');
    const menuDesplegable = document.querySelector('.menu-desplegable');
    const pildoraMenu = document.querySelector('.pildora-menu');
    const pildoraMenuDesplegado = document.querySelector('.pildora-menu-desplegado');

    hamburguesa.addEventListener('click', function() {
        menuDesplegable.classList.toggle('activo');
        pildoraMenu.classList.toggle('activo');
    });

    pildoraMenuDesplegado.addEventListener('click', function() {
        menuDesplegable.classList.remove('activo');
        pildoraMenu.classList.remove('activo');
    });

    // Desactivar el desplazamiento del cuerpo cuando el menú está desplegado
    function toggleScroll() {
        document.body.classList.toggle('no-scroll');
    }

    hamburguesa.addEventListener('click', toggleScroll);
    pildoraMenuDesplegado.addEventListener('click', toggleScroll);
});


window.addEventListener('scroll', function() {
    const header = document.querySelector('.header');
    if (window.scrollY > 0) {
        header.classList.add('scroll-activo');
    } else {
        header.classList.remove('scroll-activo');
    }
});
