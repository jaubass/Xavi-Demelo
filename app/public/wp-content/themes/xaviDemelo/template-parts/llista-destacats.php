<?php
$args = array(
    'post_type' => 'xavidemelo_clases',
    'category_name' => 'destacats'
);

$clases = new WP_Query($args);
?>
<div class="destacats-grid-container">
    <ul class="destacats-grid">
        <?php
        if ($clases->have_posts()): 
            while ($clases->have_posts()): $clases->the_post();
        ?>
            <li class="espectacles__card">
                <div class="espectacles__card--img">
                    <?php the_post_thumbnail(); ?>
                </div>
                <div class="svg-overlay">
                    <svg width="12" height="12" viewBox="0 0 11 11" fill="none" xmlns="http://www.w3.org/2000/svg" class="arrow-up">
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M8.17973 4.94461L4.82729 1.67783L5.59968 0.884766L9.92831 5.10116C9.98134 5.15276 10.0235 5.21447 10.0523 5.28264C10.0811 5.35081 10.0959 5.42406 10.0959 5.49806C10.0959 5.57205 10.0811 5.6453 10.0523 5.71347C10.0235 5.78164 9.98134 5.84335 9.92831 5.89496L5.59968 10.1113L4.82655 9.31828L8.17899 6.05224H0.884857V4.94461H8.17973Z" fill="currentColor">
                        </path>
                    </svg>
                    <i class="fas fa-info-circle"></i>
                </div>
                <div class="destacados__contenido">
                    <?php $categorias = get_the_category(); ?>
                    <div class="espectacles__hover">
                        <a href="<?php the_permalink(); ?>">
                            <h3 class="espectacles__titulo-hover"><?php the_title(); ?></h3>
                            <p class="espectacles__autor"><?php echo wp_kses_post(get_field('companyia')); ?></p>
                        </a>
                        <hr class="separador">
                        <p class="espectacles__descripcion"><?php echo wp_kses_post(get_field('descripcio')); ?></p>
                        <?php $archivo_pdf = get_field('fitxer'); ?>
                        <?php if (!empty($archivo_pdf)): ?>
                            <div class="espectacles__boton-container">
                                <a href="<?php echo esc_url($archivo_pdf['url']); ?>" download>
                                    <button class="espectacles__boton" role="button">Descarregar PDF</button>
                                </a>
                            </div>
                        <?php endif; ?>
                    </div>
                </div>
            </li>
        <?php
            endwhile;
            wp_reset_postdata();
        endif;
        ?>
    </ul>
</div>
