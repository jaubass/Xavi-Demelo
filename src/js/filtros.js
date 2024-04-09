const filtroBtns = document.querySelectorAll('.filtro-btn');
const publicacionesContainer = document.getElementById('publicaciones-container');

filtroBtns.forEach(function(btn) {
    btn.addEventListener('click', function() {
        const categoria = this.getAttribute('data-categoria');
        filtrarPublicaciones(categoria);
    });
});

function filtrarPublicaciones(categoria) {
    const publicaciones = document.querySelectorAll('.espectacles__card');
    publicaciones.forEach(function(publicacion) {
        const categoriasPublicacion = publicacion.querySelectorAll('.espectacles__categoria');
        let mostrarPublicacion = false;
        categoriasPublicacion.forEach(function(cat) {
            if (categoria === 'todas' || cat.classList.contains('espectacles__categoria--' + categoria)) {
                mostrarPublicacion = true;
            }
        });
        // Mostrar u ocultar la publicación según la categoría seleccionada
        if (mostrarPublicacion) {
            publicacion.style.display = 'block';
        } else {
            publicacion.style.display = 'none';
        }
    });
}
