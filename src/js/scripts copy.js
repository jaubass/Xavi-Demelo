document.addEventListener("DOMContentLoaded", function() {
// Código principal que no está en funciones separadas

    // MENU
    var hamburguesa = document.querySelector('.hamburguesa');
    var menuDesplegable = document.querySelector('.menu-desplegable');

    hamburguesa.addEventListener('click', function() {
        menuDesplegable.classList.toggle('activo');
        document.body.classList.toggle('no-scroll'); // Para evitar el desplazamiento de la página cuando se abre el menú
    });

    // FILTROS
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

    /** STYCKY HEADER
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
    */

    // CARRUSEL DESTACATS
    let container = document.querySelector('.destacats-grid-container');
    let flechaIzquierda = document.querySelector('.flecha-izquierda');
    let flechaDerecha = document.querySelector('.flecha-derecha');

    flechaIzquierda.addEventListener('click', function () {
        container.scrollBy({
            left: -300, // Ajusta el valor según el ancho de un elemento en tu carrusel
            behavior: 'smooth' // Hace el desplazamiento suave
        });
    });

    flechaDerecha.addEventListener('click', function () {
        container.scrollBy({
            left: 300, // Ajusta el valor según el ancho de un elemento en tu carrusel
            behavior: 'smooth' // Hace el desplazamiento suave
        });
    });

    // CAMBIO COLOR TEXTO
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

    // ANIMATE TEXT
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

});