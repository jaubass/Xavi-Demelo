<?php
/*
* Template Name: Página Tallers
*/
get_header();
?>

<div class="contenedor">
    <div class="tallers__contenedor">
        <div class="talleres__in">
            <h1>Tallers</h1>
            <p class="contenedor-text">
            Les nostres <span>artistes i companyes ens ofereixen diferents tallers per a totes les edats</span> i condicions. Són propostes curosament seleccionades per <span class="span__rosa">sensibilitzar, empoderar</span> i contribuir a crear millors persones entre les vostres usuàries. Tot això sense oblidar mai, és clar, el joc, la improvisació, la amenitat i la necessitat que tenim totes de passar una bona estona mentre aprenem coses noves.
            <br><br>
            Des d’aprendre a parlar en públic, escriure, riure, fins a re-aprendre a mirar les sèries i pel·lícules amb una mirada femenina i fins i tot feminista, hi trobareu aquí un poti-poti d’activitats molt interessants i enriquidores, dirigides per grans professionals i millors persones.
            Desitgem de tot <span class="span__rosa"><i class="fa-solid fa-heart"></i></span> que podeu gaudir-ne.
            </p>
        </div>
        <div class="talleres__columns panel panel-custom" data-color="blanco">
            <div class="talleres__column--1">
                <img src="<?php echo esc_url( get_template_directory_uri() . '/img/tallers/Comunicar-des-de-amor-XD-2021.jpg' ); ?>" alt="teatre">
            </div>
            <div class="talleres__column--2">
                <h2>Comunicar des de el amor</h2>
                <p>Taller per aprendre a parlar en públic, perdre la por escènica, i desenvolupar habilitats de comunicació i oratòria.</p>
                <div class="talleres__column--btn">
                    <button class="btn-sm btn__taller">Dossier en Català</button>
                    <button class="btn-sm btn__taller">Dossier en Castellano</button>
                </div>
                <div class="talleres__column--video">
                    <p>Fes click per veure el video presentació:</p>
                    <button class="btn-sm"><i class="fa-solid fa-play"></i> Video</button>
                </div>
            </div>
        </div>

        <div class="talleres__columns columna-roja panel panel-custom" data-color="green">
            <div class="talleres__column--2">
                <h2>Literatura de Trinchera</h2>
                <p>Estos talleres pretenden crear un espacio literario donde poder crear, expresar, profundizar y perfeccionar nuestra capacidad de escritura.</p>
                <button class="btn-sm">Dossier</button>
            </div>
            <div class="talleres__column--1">
                <img src="<?php echo esc_url( get_template_directory_uri() . '/img/tallers/Taller-Literatura-de-trinchera-02.jpg' ); ?>" alt="teatre">
            </div>
        </div>

        <div class="talleres__columns panel panel-custom" data-color="rosa">
            <div class="talleres__column--1">
                <img src="<?php echo esc_url( get_template_directory_uri() . '/img/tallers/Dossier-taller-clown-mujeres-XAVI-DEMELO-1.jpg' ); ?>" alt="teatre">
            </div>
            <div class="talleres__column--2">
                <h2>Taller d’humor només per a dones</h2>
                <p>Taller de clown terapèutic per donar suport a l'empoderament de les dones des d'una perspectiva de gènere.</p>
                <button class="btn-sm">Dossier</button>
            </div>
        </div>

        <div class="talleres__columns columna-lila panel panel-custom" data-color="blanco">
            <div class="talleres__column--2">
                <h2>Ulleres liles davant les pantalles</h2>
                <p>Taller per anomenar i analitzar el sexisme que transmeten les pantalles.</p>
                <button class="btn-sm">Dossier</button>
            </div>
            <div class="talleres__column--1">
                <img src="<?php echo esc_url( get_template_directory_uri() . '/img/tallers/Ulleres_liles.jpg' ); ?>" alt="teatre">
            </div>
        </div>
    </div>
</div>

<?php get_footer(); ?>
