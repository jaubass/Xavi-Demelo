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
