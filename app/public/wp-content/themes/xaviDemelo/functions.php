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
    // Enqueue normalize.css
    // wp_enqueue_style('normalize', get_template_directory_uri() . '/normalize.css', array(), '8.0.1');
    // Enqueue style.css, dependiendo de normalize.css
    wp_enqueue_style('style', get_stylesheet_uri(), array('normalize'), '1.0.0');
    // Enqueue JS
    wp_enqueue_script('scripts', get_template_directory_uri() . '/js/scripts.js', array(), '1.0.0', true);
}
add_action('wp_enqueue_scripts', 'xavidemelo_scripts_styles');


// Fuentes
function enqueue_custom_fonts() {
    // Cargar Google Fonts
    wp_enqueue_style('google-fonts-roboto', 'https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap', array(), null);
    wp_enqueue_style('google-fonts-titillium', 'https://fonts.googleapis.com/css2?family=Titillium+Web:ital,wght@0,200;0,300;0,400;0,600;0,700;0,900;1,200;1,300;1,400;1,600;1,700&display=swap', array(), null);
    wp_enqueue_style('google-fonts-play-fair-display', 'https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@0,400..900;1,400..900&display=swap', array(), null);
    wp_enqueue_style('google-fonts-montserrat', 'https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap', array(), null);
    
    // Cargar fuentes personalizadas
    wp_enqueue_style('custom-fonts', get_template_directory_uri() . '/css/custom-fonts.css', array(), '1.0', 'all');
}

add_action('wp_enqueue_scripts', 'enqueue_custom_fonts');

