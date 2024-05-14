<?php

function xavidemelo_setup() {
    // Imagenes destacadas
    add_theme_support('post-thumbnails');

    // Titulos dinamicos
    add_theme_support('title_tag');

}

add_action('after_setup_theme', 'xavidemelo_setup');

// Agregando menus
function xavidemelo_menus() {
    register_nav_menus( array(
        'menu-principal' => __('Menu Principal', 'xavidemelo'),
        'menu-footer' => __('Menu Footer', 'xavidemelo')
    ));
}

add_action('init', 'xavidemelo_menus');


// Carga hojas de estilos
function enqueue_custom_styles() {
    wp_enqueue_style('custom-style', get_stylesheet_directory_uri() . '/css/app.min.css');
}
add_action('wp_enqueue_scripts', 'enqueue_custom_styles');

function xavidemelo_scripts_styles() {
    wp_enqueue_script('scripts', get_template_directory_uri() . '/js/scripts.min.js', array(), '1.0.0', true);
}
add_action('wp_enqueue_scripts', 'xavidemelo_scripts_styles');


// Agregar Font Awesome al tema

function agregar_font_awesome() {
    wp_enqueue_style('font-awesome', 'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css', array(), '6.5.2');
}
add_action('wp_enqueue_scripts', 'agregar_font_awesome');


// Fuentes
function enqueue_custom_fonts() {
    // Cargar Google Fonts
    wp_enqueue_style('google-fonts', 'https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;0,900;1,400;1,500&display=swap', array(), null);
    // Cargar fuentes personalizadas
    wp_enqueue_style('custom-fonts', get_template_directory_uri() . '/css/custom-fonts.css', array(), '1.0', 'all');
}

add_action('wp_enqueue_scripts', 'enqueue_custom_fonts');
