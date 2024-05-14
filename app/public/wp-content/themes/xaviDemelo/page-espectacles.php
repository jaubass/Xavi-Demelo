<?php
    /*
    * Template Name: Pàgina Espectacles
    */
    get_header();
?>
    <main>
        <div class="espectacles__hero">     
            <div class="espectacles__sub">
                <p>Fes <span>click</span> per filtrar per temática</p>
            </div>
        <?php    
            get_template_part('template-parts/llista-espectacles');
        ?>
         </div>
    </main>
<?php get_footer(); ?>