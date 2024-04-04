document.addEventListener("DOMContentLoaded", function() {
    const hamburguesa = document.querySelector('.hamburguesa');
    const menuDesplegable = document.querySelector('.menu-desplegable');
    const pildoraMenu = document.querySelector('.pildora-menu');
    const pildoraMenuDesplegado = document.querySelector('.pildora-menu-desplegado');
    const filtroBtns = document.querySelectorAll('.filtro-btn');
    const publicacionesContainer = document.getElementById('publicaciones-container');
    const textoAnimacion = document.querySelector('.typing-animation');
    const header = document.querySelector('.header');
    let lastScroll = 0;

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

    // Animate text
    // Función para animar el texto con desvanecimiento de palabras
    function animateFadingText(words, index = 0) {
        textoAnimacion.textContent = ''; // Limpiar el contenido inicial
        const fadeInDuration = 2000; // Duración de la transición de aparecer
        const fadeOutDuration =2000; // Duración de la transición de desaparecer
        const pauseDuration = 2000; // Duración de la pausa entre palabras

        function fadeOut() {
            textoAnimacion.style.opacity = 0; // Desvanecer la palabra actual
            setTimeout(fadeIn, fadeOutDuration); // Esperar hasta que se complete la transición de desvanecer
        }

        function fadeIn() {
            index = (index + 1) % words.length; // Avanzar al siguiente índice de la lista de palabras
            textoAnimacion.textContent = words[index]; // Mostrar la siguiente palabra
            textoAnimacion.style.opacity = 1; // Aparecer la siguiente palabra
            setTimeout(fadeOut, pauseDuration); // Esperar antes de desvanecer la palabra
        }

        fadeIn(); // Comenzar la animación
    }

    // Llamar a la función de animación con las palabras deseadas
    animateFadingText([
        "igualtat & música",
        "drets & infància",
        "teatre & compromís",
        "respecte & LGTBIQ+",
        "ecologisme & clown"
    ]);

    // Función para cambiar el color del texto
    let lastScrollPosition = 0; // Variable para almacenar la última posición de desplazamiento
    let greenThreshold = 20; // Altura en la que el texto vuelve a ser verde al hacer scroll hacia arriba
    let scrollThreshold = 20; // Cantidad mínima de desplazamiento para cambiar de color
    let isScrollingUp = false; // Estado para verificar si el usuario se está desplazando hacia arriba

    window.addEventListener('scroll', function() {
        let title = document.querySelector('.hero__content--title');
        let span = title.querySelector('span');
        let scrollPosition = window.scrollY;

        // Determinar la dirección del desplazamiento
        isScrollingUp = scrollPosition < lastScrollPosition;

        // Si el usuario está desplazándose hacia arriba y no está en la parte superior de la página, cambia el color del texto a verde
        if (isScrollingUp && scrollPosition > 0) {
            span.style.color = '#C6DF76'; // Cambiar el color del texto a verde
        } else {
            // Si el scrollPosition está entre 0 y greenThreshold, cambia el color del texto a verde
            if (scrollPosition >= 0 && scrollPosition <= greenThreshold) {
                span.style.color = '#C6DF76'; // Cambiar el color del texto a verde
            } else {
                // Si el scrollPosition es mayor que la última posición de desplazamiento, cambia el color del texto a rosa
                span.style.color = '#FE72A9'; // Cambiar el color del texto a rosa
            }
        }

        // Actualizar la última posición de desplazamiento
        lastScrollPosition = scrollPosition;
    });
});
