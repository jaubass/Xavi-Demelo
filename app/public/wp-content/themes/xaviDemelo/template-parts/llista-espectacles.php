<?php
$args = array(
    'post_type' => 'xavidemelo_clases'
);

$clases = new WP_Query($args);
?>

<div class="contenedor espectacles">
    <div class="filtros">
        <button class="filtro-btn" data-categoria="todas">Todas</button>
        <?php
        $categorias = get_categories(array(
            'taxonomy' => 'category', // Cambiar 'category' por el nombre de la taxonomía de tus custom post types
            'exclude' => get_cat_ID('Uncategorized')
        ));
        foreach ($categorias as $categoria) {
            echo '<button class="filtro-btn espectacles__categoria--' . $categoria->slug . '" data-categoria="' . $categoria->slug . '">' . $categoria->name . '</button>';
        }
        ?>
    </div>
    <ul class="listado-grid" id="publicaciones-container">
        <?php
        if ($clases->have_posts()): 
            while ($clases->have_posts()): $clases->the_post();
        ?>
                <li class="espectacles__card">
                    <div class="espectacles__card--img">
                        <?php the_post_thumbnail(); ?>
                    </div>
                    <div class="espectacles__contenido">
                        <a href="<?php the_permalink(); ?>">
                            <h3 class="espectacles__titulo"><?php the_title(); ?></h3>
                        </a>
                        <hr class="separador">
                        <?php $categorias = get_the_category(); ?>
                        <?php if ($categorias): ?>
                            <ul class="espectacles__categorias">
                                <?php foreach ($categorias as $categoria): ?>
                                    <li class="espectacles__categoria espectacles__categoria--<?php echo $categoria->slug; ?>">
                                        <a href="<?php echo get_category_link($categoria->term_id); ?>"><?php echo $categoria->name; ?></a>
                                    </li>
                                <?php endforeach; ?>
                            </ul>
                        <?php endif; ?>
                        <div class="espectacles__hover">
                            <a href="<?php the_permalink(); ?>">
                                <h3 class="espectacles__titulo-hover"><?php the_title(); ?></h3>
                                <p class="espectacles__autor"><?php the_field('companyia');?></p>
                                
                            </a>
                            <hr class="separador">
                            <?php if ($categorias): ?>
                                <ul class="espectacles__categorias">
                                    <?php foreach ($categorias as $categoria): ?>
                                        <li class="espectacles__categoria espectacles__categoria--<?php echo $categoria->slug; ?>">
                                            <a href="<?php echo get_category_link($categoria->term_id); ?>"><?php echo $categoria->name; ?></a>
                                        </li>
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
