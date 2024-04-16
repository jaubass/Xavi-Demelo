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

// STICKY
const stickyMenu = document.getElementById('stickyMenu');
let lastScrollTop = 0;
const windowHeight = window.innerHeight;
const initialMenuOffset = document.querySelector('.sticky-menu').offsetTop;

// Función para manejar el scroll
window.addEventListener('scroll', function() {
  let scrollTop = window.pageYOffset || document.documentElement.scrollTop;

  // Controlamos el desplazamiento hacia abajo
  if (scrollTop > lastScrollTop && scrollTop > windowHeight / 2) {
    stickyMenu.classList.add('show-menu'); // Añadimos clase para mostrar el menú
  } 
  // Controlamos el desplazamiento hacia arriba
  else {
    // Ocultamos el menú si estamos a 100px del principio o si volvemos a la posición inicial del menú
    if (scrollTop <= 200) {
      stickyMenu.classList.remove('show-menu'); // Eliminamos clase para ocultar el menú
    }
  }
  
  lastScrollTop = scrollTop <= 0 ? 0 : scrollTop; // Aseguramos que no haya valores negativos
});





});
