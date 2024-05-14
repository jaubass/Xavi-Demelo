<?php
    /*
    * Template Name: Pàgini Contacte
    */
    get_header();
?>
<section class="seccio__contacte contenedor">
                <div class="contenedor">
                    <div class="contacte__contenedor">
                        <div class="contacte__content">
                            <h1 id="title">Contacta'ns<span class="emoticono"> &#x1F44B;</span></span></h1>   
                            <p>Si tens dubtes <i class="fa-solid fa-question"></i> sobre algun espectacle o taller, si vols contractar-ne algun o senzillament vols més informació envia’ns un missatge i ens posarem en contacte amb com més aviat millor.
                            <i class="fa-solid fa-file-signature"></i></p>
                        </div>
                        <div class="contacte__columns">
                            <div class="contacte__column--1">
                                <h3>Envia’ns un correu</h3>
                                <p>Indicant-nos un contacte i el motiu de la consulta així com si teniu horari d’atenció o cap preferencia de contacte.</p>
                                <a href="mailto:info@xavidemelo.com" target="_blank">
                                    <i class="fa-solid fa-envelope"></i>                                
                                    info@xavidemelo.com
                                </a>
                            </div>
                            <div class="contacte__column--2">
                                <h3>Truca’ns al telèfon</h3>
                                <p>El nostre horari d’atenció telefònica es de dilluns a dijous de 10h a 20h i divendres de 10h a 19h.</p>
                                <a href="tel:653 246 340" target="_blank">
                                    <i class="fa-solid fa-phone"></i>                                
                                    653 246 340</a>
                            </div>
                        </div>
                        <div class="contacte__img">
                            <img src="<?php echo esc_url( get_template_directory_uri() . '/img/home/Hero-14.webp' ); ?>" alt="teatre">
                        </div>
                    </div>
                </div>
</section>



<?php get_footer(); ?>