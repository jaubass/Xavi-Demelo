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
            <div class="header__menu">
                <?php
                    $args = array(
                        'theme_location' => 'menu-principal',
                        'container' => 'nav', 
                        'container_class' => 'menu-principal' 
                    );

                    wp_nav_menu($args);
                ?>
            </div>
            <div class="header__contacte">
               <button class="espectacles__btn">Contacte</button>

            </div>            
        </div>       
    </header>   
</body>
</html>