<div class="menu-desplegable">
    <div class="zona-superior contenedor">
        <div class="logo">
            <img src="<?php echo get_template_directory_uri(); ?>/img/Xavi_demelo-Log01.png">
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
        <div class="horizontal-scrolling-items">

            <div class="horizontal-scrolling-items__item">
            Here is some horizontally scrolling text used for a tutorial. It will loop smoothly.&nbsp
            </div>

            <div class="horizontal-scrolling-items__item">
            Here is some horizontally scrolling text used for a tutorial. It will loop smoothly.&nbsp
            </div>

        </div>
        <p>FEMINISME IGUALTAT ECOLOGISME homofòbia sensibilització música ciberassetjament LGTBIQ</p>
    </div>
</div>