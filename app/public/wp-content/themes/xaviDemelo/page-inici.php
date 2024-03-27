<?php
    /*
    * Template Name: Pàgini Inici
    */
    get_header();
?>
    <main>
    <section class="home-hero" style="background-image: url('<?php echo esc_url( get_template_directory_uri() . '/img/Hero-01.webp' ); ?>');">
    <div class="contenedor">
        <div class="hero">
        <img src="<?php the_field('imagen_hero')?>">
            <div class="hero__content">
                <h1>Espectacles i tallers <br>de sensibilització social.</h1>
                <p>Especialistes en propostes per a la igualtat i contra la violència de gènere.</p>
                <button class="espectacles__btn" role="button">Veure Espectacles</button>
            </div>
        </div>
    </div>
</section>

        
    </main>

<?php get_footer(); ?>