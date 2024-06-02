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


// Fuentes
function enqueue_custom_fonts() {
    // Cargar Google Fonts
    wp_enqueue_style('google-fonts', 'https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap', array(), null);
    // Cargar fuentes personalizadas
    wp_enqueue_style('custom-fonts', get_template_directory_uri() . '/css/custom-fonts.css', array(), '1.0', 'all');
}

add_action('wp_enqueue_scripts', 'enqueue_custom_fonts');


// Iconos
function get_svg_icon($icon_name) {
    $svg_file_path = get_template_directory() . '/img/icons/' . $icon_name . '.svg';
    
    if (file_exists($svg_file_path)) {
        return file_get_contents($svg_file_path);
    } else {
        return '';
    }
}


