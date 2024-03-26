const { src, dest, watch, series, parallel } = require('gulp');

// CSS Y SASS
const sass = require('gulp-sass')(require('sass'));
const rename = require('gulp-rename');
const cleanCSS = require('gulp-clean-css');
const postcss = require('gulp-postcss');
const autoprefixer = require('autoprefixer');

// IMAGENES
const imagemin = require('gulp-imagemin');
const webp = require('gulp-webp');

function css(done) {
    // Compilar SASS
    src('src/scss/app.scss')
        // Manejar errores de compilación de Sass
        .pipe(sass().on('error', sass.logError))
        // Adapta el código a diferentes navegadores
        .pipe(postcss ([ autoprefixer() ]))
        // Compilar Sass y comprimir los estilos (expanded o compressed)
        .pipe(sass({ outputStyle: 'compressed' }))
        // Renombrar el archivo compilado
        .pipe(rename({ suffix: '.min' }))
        // Minificar el CSS
        .pipe(cleanCSS())
        // Guardar el archivo compilado en la ubicación deseada
        .pipe(dest('app/public/wp-content/themes/xaviDemelo/css'))
        
        done();
}

function imagenes() {
    return src('src/img/**/*')
        .pipe(imagemin({ optimizationLevel: 3 }))
        .pipe( dest('app/public/wp-content/themes/xaviDemelo/img'));
}

function versionWebp( done ) {
    src('src/img/**/*.(png,jpg)')
        .pipe( webp() )
        .pipe( dest('app/public/wp-content/themes/xaviDemelo/img'))
        done();
    }

function dev() {
    watch('src/scss/**/*.scss', css);
    watch('src/img/**/*', imagenes);
}

function dedaultTask() {

}

exports.dev = dev;
exports.css = css;
exports.imagenes = imagenes;
exports.versionWebp = versionWebp;
// Tareas por defaul arrancan con gulp
exports.default = series( imagenes, versionWebp, css, dev );