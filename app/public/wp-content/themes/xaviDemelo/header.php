<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php wp_head(); ?>
</head>
<body>
    <header class="header header-inicio">
        <div class="contenido-header contenedor">
            <div class="logo">
                <img src="<?php echo get_template_directory_uri(); ?>/img/Xavi_demelo-Logo.webp">

            </div>

            <?php
                $args = array(
                    'theme_location' => 'menu-principal',
                    'container' => 'nav', 
                    'container_class' => 'menu-principal' 
                );

                wp_nav_menu($args);
            ?>
        </div>       
    </header>   
</body>
</html>