<?php
    /*
    * Template Name: Pàgina Espectacles
    */
    get_header();
?>
    <main>
        <div class="contenedor">
            <div class="espectacles__hero">
                <h1>Espectacles i tallers <br>de sensibilització social.</h1>
                <p>Propostes educatives per a infants i adults</p>
                <p>fes click per veure el video de presentació</p>
            </div>
            

        </div>
        
        <?php    
            get_template_part('template-parts/llista-espectacles');
        ?>
    </main>

<?php get_footer(); ?>