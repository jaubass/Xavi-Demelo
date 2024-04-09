
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
                <div class="destacados__contenido">
                    <a href="<?php the_permalink(); ?>">
                        <p class="destacats__info">+info -></p>
                    </a>
                    <?php $categorias = get_the_category(); ?>
                    <div class="espectacles__hover">
                        <a href="<?php the_permalink(); ?>">
                            <h3 class="espectacles__titulo-hover"><?php the_title(); ?></h3>
                            <p class="espectacles__autor"><?php the_field('companyia');?></p>
                        </a>
                        <hr class="separador">
                        <?php if ($categorias): ?>
                            <ul class="espectacles__categorias">
                                <?php foreach ($categorias as $categoria): ?>
                                    <?php if ($categoria->slug !== 'destacats'): ?>
                                        <li class="espectacles__categoria espectacles__categoria--<?php echo $categoria->slug; ?>">
                                            <a href="<?php echo get_category_link($categoria->term_id); ?>"><?php echo $categoria->name; ?></a>
                                        </li>
                                    <?php endif; ?>
                                <?php endforeach; ?>
                            </ul>
                        <?php endif; ?>
                        <p class="espectacles__descripcion"><?php the_field( 'descripcio' ); ?></p>
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
