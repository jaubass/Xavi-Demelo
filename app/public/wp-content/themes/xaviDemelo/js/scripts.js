document.addEventListener("DOMContentLoaded", function() {
    const hamburguesa = document.querySelector('.hamburguesa');
    const menuDesplegable = document.querySelector('.menu-desplegable');
    const pildoraMenu = document.querySelector('.pildora-menu');
    const pildoraMenuDesplegado = document.querySelector('.pildora-menu-desplegado');
    const filtroBtns = document.querySelectorAll('.filtro-btn');
    const publicacionesContainer = document.getElementById('publicaciones-container');

    hamburguesa.addEventListener('click', function() {
        menuDesplegable.classList.toggle('activo');
        pildoraMenu.classList.toggle('activo');
        toggleScroll();
    });

    pildoraMenuDesplegado.addEventListener('click', function() {
        menuDesplegable.classList.remove('activo');
        pildoraMenu.classList.remove('activo');
        toggleScroll();
    });

    // Desactivar el desplazamiento del cuerpo cuando el menú está desplegado
    function toggleScroll() {
        document.body.classList.toggle('no-scroll');
    }

    // Evento de clic para los botones de filtro
    filtroBtns.forEach(function(btn) {
        btn.addEventListener('click', function() {
            const categoria = this.getAttribute('data-categoria');
            filtrarPublicaciones(categoria);
        });
    });

    // Función para filtrar y mostrar las publicaciones correspondientes
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

    // Sticky header
    const header = document.querySelector('.header');
    window.addEventListener('scroll', function() {
        if (window.scrollY > 0) {
            header.classList.add('scroll-activo');
        } else {
            header.classList.remove('scroll-activo');
        }
    });
});
