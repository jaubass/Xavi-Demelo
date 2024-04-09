const hamburguesa = document.querySelector('.hamburguesa');
const menuDesplegable = document.querySelector('.menu-desplegable');
const pildoraMenu = document.querySelector('.pildora-menu');

hamburguesa.addEventListener('click', function() {
    menuDesplegable.classList.toggle('activo');
    pildoraMenu.classList.toggle('activo');
    toggleScroll();
});

function toggleScroll() {
    document.body.classList.toggle('no-scroll');
}
