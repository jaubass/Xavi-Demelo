<?php
    /*
    * Template Name: Pàgini Inici
    */
    get_header();
?>

<main class="contenedor">
    <section class="home-hero hero-wrap">
        <div class="hero__bg" style="background-image: url('<?php echo esc_url( get_template_directory_uri() . '/img/Hero-09.webp' ); ?>');">
            <div class="contenedor">
                <div class="hero">
                    <img src="<?php the_field('imagen_hero')?>">
                    <div class="hero__content">
                        <h1 class="hero__content--title" id="title">Espectacles i tallers de<br><span>sensibilització social.</span></h1>
                        <div class="typing-animation-container">
                            <p class="hero__content--subtitle">Especialistes en propostes per a la<br> igualtat i contra la violència de gènere.</p>
                            <div class="typing-animation"></div>
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
    <section class="quisom__section" style="background-image: url('<?php echo esc_url( get_template_directory_uri() . '/img/HBGXD-01.png' ); ?>');">
        <div class="quisom__contenedor snap-section">
            <div class="quisom__two-columns">
                <div class="quisom__column--one">
                    <p>
                        Tenim propostes per a totes les edats, però sempre insisteixo en la importància de treballar amb públic infantil, adolescent i jove, fent bona la màxima de "si eduquem al nen, no haurem de castigar a l’adult”.</i>
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
</main>

<?php get_footer(); ?>