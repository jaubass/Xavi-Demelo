document.addEventListener("DOMContentLoaded", function() {
    // MENU
    let hamburguesa = document.querySelector('.hamburguesa');
    let menuDesplegable = document.querySelector('.menu-desplegable');
    let pildoraMenuDesplegado = document.querySelector('.pildora-menu-desplegado');

    hamburguesa.addEventListener('click', function() {
        menuDesplegable.classList.toggle('activo');
        document.body.classList.toggle('no-scroll'); // Para evitar el desplazamiento de la página cuando se abre el menú
    });

    pildoraMenuDesplegado.addEventListener('click', function() {
        menuDesplegable.classList.remove('activo');
        document.body.classList.remove('no-scroll');
    });


    // STICKY
    const stickyMenu = document.getElementById('stickyMenu');
    let lastScrollTop = 0;
    const windowHeight = window.innerHeight;
    const initialMenuOffset = stickyMenu.offsetTop;
    let isAtBottom = false;

    // Función para manejar el scroll
    window.addEventListener('scroll', function() {
        let scrollTop = window.pageYOffset || document.documentElement.scrollTop;

        // Controlamos el desplazamiento hacia abajo
        if (scrollTop > lastScrollTop && scrollTop > windowHeight / 2) {
            stickyMenu.classList.add('show-menu'); // Añadimos clase para mostrar el menú
        } else {
            // Ocultamos el menú si estamos a 100px del principio o si volvemos a la posición inicial del menú
            if (scrollTop <= 200) {
                stickyMenu.classList.remove('show-menu'); // Eliminamos clase para ocultar el menú
            }
        }

        // Si llegamos al final de la página, desplazamos el menú hacia abajo 50px con transición suave
        if ((window.innerHeight + window.scrollY) >= document.body.offsetHeight && !isAtBottom) {
            stickyMenu.style.transition = 'bottom 0.5s ease-in-out'; // Aplicamos la transición
            stickyMenu.style.bottom = '50px';
            isAtBottom = true;
        } else if ((window.innerHeight + window.scrollY) < document.body.offsetHeight && isAtBottom) {
            stickyMenu.style.transition = 'bottom 0.5s ease-in-out'; // Aplicamos la transición
            stickyMenu.style.bottom = '0';
            isAtBottom = false;
        }

        lastScrollTop = scrollTop <= 0 ? 0 : scrollTop; // Aseguramos que no haya valores negativos
    });

        // BTN SCROLL TOP
        let btnScrollToTop = document.getElementById('btnScrollToTop');

        btnScrollToTop.addEventListener('click', function(event) {
            event.preventDefault(); // Evita el comportamiento predeterminado del botón
            scrollToTopSmoothly();
        });
    
        function scrollToTopSmoothly() {
            let currentPosition = document.documentElement.scrollTop || document.body.scrollTop;
    
            if (currentPosition > 0) {
                window.requestAnimationFrame(scrollToTopSmoothly);
                window.scrollTo(0, currentPosition - currentPosition / 8);
    
                // Si estamos cerca de la parte superior, ralentizamos el desplazamiento
                if (currentPosition < 10) {
                    window.scrollTo(0, currentPosition - currentPosition / 16);
                }
            }
        }


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

    // CARRUSEL DESTACATS
    let container = document.querySelector('.destacats-grid-container');
    let flechaIzquierda = document.querySelector('.flecha-izquierda');
    let flechaDerecha = document.querySelector('.flecha-derecha');

    flechaIzquierda.addEventListener('click', function () {
        container.scrollBy({
            left: -310, // Ajusta el valor según el ancho de un elemento en tu carrusel
            behavior: 'smooth' // Hace el desplazamiento suave
        });
    });

    flechaDerecha.addEventListener('click', function () {
        container.scrollBy({
            left: 308, // Ajusta el valor según el ancho de un elemento en tu carrusel
            behavior: 'smooth' // Hace el desplazamiento suave
        });
    });

    // Obtener todas las secciones excepto la de carrusel destacado
    const sections = document.querySelectorAll(".snap-section:not(.seccio-destacats)");

    sections.forEach(section => {
        section.addEventListener("click", function() {
            // Calcular la sección activa
            let currentSection = this;

            // Hacer scroll suave a la sección actual
            currentSection.scrollIntoView({ behavior: "smooth" });
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
            span.style.color = '#c9da8f';
        } else {
            if (scrollPosition >= 0 && scrollPosition <= greenThreshold) {
                span.style.color = '#c9da8f';
            } else {
                span.style.color = '#f682a5';
            }
        }

        lastScrollPosition = scrollPosition;
    });

    
    // BACKGROUND ANIMATION
    let panels = document.querySelectorAll('.panel');
    let footer = document.querySelector('.footer');

    function changeColor() {
        let scroll = window.scrollY + (window.innerHeight / 3);

        panels.forEach(function(panel) {
            let top = panel.offsetTop;
            let bottom = top + panel.offsetHeight;

            if (top <= scroll && bottom > scroll) {
                let colorClass = 'color-' + panel.getAttribute('data-color');
                document.body.className = colorClass;

                // Retrasar el cambio de color del footer para que sea más suave
                setTimeout(function() {
                    footer.style.backgroundColor = getComputedStyle(document.body).getPropertyValue('--panel-color-' + panel.getAttribute('data-color'));
                }, 50); // Ajusta el tiempo según tus necesidades
            }
        });
    }

    window.addEventListener('scroll', changeColor);
    changeColor();


// ANIMACION TALLERES //
    // Selecciona todos los elementos .tallers__imagen y .tallers__descripcion
    const elementos = document.querySelectorAll('.tallers__imagen, .tallers__descripcion');

    // Opciones para el Intersection Observer
    const opciones = {
        threshold: 0.6 // Cuando el 50% del elemento es visible
    };

    // Crear un Intersection Observer
    const observer = new IntersectionObserver((entradas, observer) => {
        entradas.forEach(entrada => {
            if (entrada.isIntersecting) {
                entrada.target.classList.add('show'); // Agrega la clase 'show' cuando el elemento es visible
                observer.unobserve(entrada.target); // Deja de observar el elemento una vez que se ha hecho visible
            }
        });
    }, opciones);

    // Observa cada elemento
    elementos.forEach(elemento => {
        observer.observe(elemento);
    });
});
