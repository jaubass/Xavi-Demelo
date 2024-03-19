const { src, dest, watch, series, parallel } = require('gulp');
// Importa el compilador Sass y lo inicializa con la implementación de Dart Sass
const sass = require('gulp-sass')(require('sass'));
// Importa el plugin para renombrar archivos
const rename = require('gulp-rename');
// Importa el plugin para minificar CSS
const cleanCSS = require('gulp-clean-css');
// Importa gulp-postcss y autoprefixer para agregar prefijos de navegador
const postcss = require('gulp-postcss');
const autoprefixer = require('autoprefixer');

// Función para compilar y minificar los estilos CSS
function css(done) {
    // Compilar SASS
    src('src/scss/app.scss')
        // Manejar errores de compilación de Sass y registrarlos en la consola
        .pipe(sass().on('error', sass.logError))
        // Aplicar autoprefixer para agregar prefijos de navegador
        .pipe(postcss([autoprefixer()]))
        // Compilar Sass y comprimir los estilos
        .pipe(sass({ outputStyle: 'compressed' }))
        // Renombrar el archivo compilado agregando el sufijo '.min'
        .pipe(rename({ suffix: '.min' }))
        // Minificar el CSS
        .pipe(cleanCSS())
        // Guardar el archivo compilado en la ubicación deseada
        .pipe(dest('app/public/wp-content/themes/xaviDemelo/css'));

    // Indicar a Gulp que la tarea ha finalizado
    done();
}

// Función para observar cambios en los archivos SCSS y ejecutar la tarea 'css' cuando ocurran
function dev() {
    watch('src/scss/**/*.scss', css);
}

// Función por defecto que se ejecuta cuando se inicia Gulp sin argumentos
function defaultTask() {
    // Ejecutar la tarea 'css' seguida de la tarea 'dev'
    return series(css, dev);
}

// Exportar las funciones como tareas de Gulp
exports.dev = dev; // Tarea para desarrollo
exports.css = css; // Tarea para compilar y minificar los estilos CSS
exports.default = defaultTask; // Tarea por defecto
