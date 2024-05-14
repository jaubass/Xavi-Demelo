<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php wp_head(); ?>
</head>
<body>

<!-- HEADER -->
<header class="header header-inicio">
    <div class="header__contenido contenedor">
            <div class="logo">
                <img src="<?php echo get_template_directory_uri(); ?>/img/Xavi_demelo-Log07.jpg" width="180px">
            </div>
            <div class="header__menu">
                <div class="hamburguesa">
                    <div class="pildora-menu">
                        <div class="pildora__texto header__espectacles">
                            <p>Menú</p>
                        </div>
                        <div class="contenedor__hamburg--menu">
                            <div class="pildora__tresRallas">
                                <div class="linea"></div>
                                <div class="linea"></div>
                                <div class="linea"></div>
                            </div>
                        </div>                  
                    </div>
                </div>
            </div>
            <div class="btn-sm btn__espectecles--contenedor">
                <a href="#">Espectacles</a>
            </div>
    </div>
</header>

<!-- MENU DESCPLEGABLE -->
<div class="contenedor__menuDesplegable">
    <div class="menu-desplegable">
        <div class="zona-superior contenedor">
            <div class="logo">
                <img src="<?php echo get_template_directory_uri(); ?>/img/Xavi_demelo-Log01.png" width="180px">
            </div>
            
            <div class="col-central">
                <div class="pildora-menu-desplegado">
                    <div class="pildora__texto-desplegado">
                        <p>Tanca</p>
                    </div>    
                    <div class="pildora__tresRallas-desplegado">
                        <div class="linea"></div>
                        <div class="linea"></div>
                        <div class="linea"></div>
                    </div>
                </div>
            </div>
            <div class="link__espectacles">
                <p>Espectacles</p>
            </div>
        </div>
        <div class="zona-central">
            <div class="menu__des">
                <?php
                    $args = array(
                        'theme_location' => 'menu-principal',
                        'container' => 'nav',
                        'container_class' => 'menu-principal'
                    );
                    wp_nav_menu($args);
                ?>
            </div>    
        </div>
        <div class="zona-inferior">
            <div class="logo-grande">
                <img src="<?php echo get_template_directory_uri(); ?>/img/Xavi_demelo-Log01.png">
            </div>
        </div>

        <div class="redes-sociales zona-inferior contenedor">
                <a href="https://www.facebook.com/EspectaclesXaviDemelo" target="_blank">FACEBOOK</a>
                <a href="https://www.instagram.com/espectacles_xavi_demelo/" target="_blank">INSTAGRAM</a>
                <a href="https://www.youtube.com/channel/UCf4ZLSfA9y6PrhGQLw_JSAw" target="_blank">YOUTUBE</a>
                <a href="https://www.linkedin.com/in/★-xavi-demelo-0487b843/" target="_blank">LINKEDIN</a>
        </div>
        <div class="header__p--special text-center">
            <p>FEMINISME IGUALTAT ECOLOGISME homofòbia sensibilització música ciberassetjament LGTBIQ</p>
        </div>
    </div>
</div>

<!-- STICKY HEADER-->
<div class="sticky-menu" id="stickyMenu">
    <div class="sticky__contenido">
        <div class="header__contenido contenedor">
            <div class="logo">
                <img src="<?php echo get_template_directory_uri(); ?>/img/Xavi_demelo-Log07.jpg">
            </div>
            <div class="header__menu">
                <div class="hamburguesa">
                    <div class="pildora-menu">
                        <div class="pildora__texto header__espectacles menu-sticky">
                            <a href="#" class="btn-sticky" id="menu-inferior">INICIO</a>
                            <a href="#" id="menu-inferior">TALLERS</a>
                            <a href="#" id="menu-inferior">ESPECTACLES</a>
                            <a href="#" id="menu-inferior">CONTACTE</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="btn-sm" id="btnScrollToTop">
            <button class="flecha-arriba" title="Volver arriba">
                 ↑
            </button>
            </div>
        </div>
    </div>
</div>
