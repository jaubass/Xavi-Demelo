<?php
    /*
    * Template Name: Pàgina Espectacles
    */
    get_header();
?>
    <main>
        <div class="contenedor espectacles__hero">
          
       
        <div class="espectacles__sub">
            <p>Fes click per filtrar per temática</p>
        </div>
        <?php    
            get_template_part('template-parts/llista-espectacles');
        ?>
         </div>
    </main>

<?php get_footer(); ?>