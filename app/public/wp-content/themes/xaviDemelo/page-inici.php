<?php
    /*
    * Template Name: Pàgini Inici
    */
    get_header();
?>

<main class="snap-scroll-container-parent">  
        <section class="home-hero hero-wrap contenedor snap-scroll-section panel panel-custom">
            <div class="hero__bg" style="background-image: url('<?php echo esc_url( get_template_directory_uri() . '/img/Hero-12.webp' ); ?>');">
                <div class="contenedor">
                    <div class="hero">
                        <img src="<?php the_field('imagen_hero')?>">
                        <div class="hero__content">
                            <h1 class="hero__content--title" id="title">Espectacles i tallers de<br><span>sensibilització social.</span></h1>
                            <div class="typing-animation-container">
                                <p class="hero__content--subtitle">Especialistes en propostes per a la igualtat i contra la violència de gènere, però no només.</p>
                            </div>
                            <div class="hero__content--btn">
                                <button class="btn" role="button">Veure Espectacles</button>
                            </div>      
                        </div>
                    </div>
                </div>
            </div>
        </section>
        </div>
        <section class="quisom__section snap-scroll-section panel panel-custom" data-color="green">
            <div class="quisom__contenedor contenedor snap-section">
                <div class="quisom__two-columns">
                    <div class="quisom__column--one">
                        <p>
                            Tenim <span class="underline-animation">propostes per a totes les edats</span>, però sempre insisteixo en la importància de treballar amb públic infantil, adolescent i jove, fent bona la màxima de "si eduquem al nen, no haurem de castigar a l’adult”.</i>
                        </p>
                    </div>
                    <div class="quisom__column--two">
                        <h2 class="subrayado">Qui som?</h2>
                        <p>Espectacles Xavi Demelo és una aposta per fer arribar <span>missatges de sensibilització </span>al públic d’una manera artística, entretinguda i divertida. Es per a això que utilitzem diferents llenguatges, com la música, la paraula, la dansa, el text, les animacions, la improvisació pautada, la imatge, el clown, etc. I sovint les barregem per aconseguir millors resultats.
                        <br><br>
                        Des dels començaments, cap a l’any 1999, <span>ens hem especialitzat en tractar temes de gènere, igualtat, feminismes, violències masclistes</span> i, en els últims anys, hem inclòs el ciberassetjament, les discriminacions cap als col.lectius LGTBIQ, l’homofòbia i l’abús sexual infantil, sense oblidar-nos d’aspectes més globals, com el canvi climàtic, la immigració, les desigualtats Nord – Sud, la globalització, etc.</p>
                    </div>
                </div>
            </div>
        </section>
        <section class="seccio-destacats contenedor panel panel-custom" data-color="violet">
            <div class="destacats__in">
                <div class="destacats__titulo">
                    <h2 class="subrayado">Espectacles destacats</h2>
                    <p>Aquí podeu veure algunes de les propostes que tenim actualment disponibles. En trobareu més, que utilitzen llenguatges com el teatre, la música, la paraula, la dansa, el text, les animacions, la improvisació pautada, la imatge i el clown, entre d’altres.</p>
                    <div class="destacats__btn">
                        <button class="btn-destacats flecha-izquierda">←</button>
                        <button class="btn-destacats flecha-derecha">→</button>
                    </div>
                </div>
            </div>
            <div class="destacats espectacles__destacats">
                <div class="card-destacats">
                    <?php get_template_part('template-parts/llista-destacats');?>     
                </div>
                
            </div>
        </section> 
        <section class="tallers panel panel-custom" data-color="blanco">
        <div class="contenedor-tallers" style="background-image: url('<?php echo esc_url( get_template_directory_uri() . '/img/home/XD-interpretacion-UCDM01.webp' ); ?>'); background-repeat: no-repeat; background-size: cover;">
                <div class="contenido--tallers contenedor">
                    <div class="tallers__imagen">
                        <img src="<?php echo esc_url( get_template_directory_uri() . '/img/home/tallers-home-01.webp' ); ?>" alt="teatre">
                    </div>
                    <div class="tallers__descripcion">
                        <h2>Tallers</h2>
                        <p>Tallers basats en la expressió artística i destinats a millorar les nostres capacitats. Com per exemple treballar la por escènica, alliberar la creativitat a través de la literatura i la gestalt, trobar l’humor dins nostre o re-aprendre a mirar les pantalles amb una mirada de gènere diferent.
                        </p>
                        <p>I en tenim més…!</p>
                        <button class="btn" role="button">Veure Tallers</button>
                    </div>
                </div>

            </div>
        </section>
</main>

<?php get_footer(); ?>