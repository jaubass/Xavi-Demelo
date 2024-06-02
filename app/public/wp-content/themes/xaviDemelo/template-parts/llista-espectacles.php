<?php
$args = array(
    'post_type' => 'xavidemelo_clases'
);

$clases = new WP_Query($args);
?>

<div class="contenedor espectacles">
    <div class="filtros" id="filtros-container">
        <button class="filtro-btn" data-categoria="todas">Totes</button>
        <?php
        $categorias = get_categories(array(
            'taxonomy' => 'category',
            'exclude' => get_cat_ID('Uncategorized')
        ));
        foreach ($categorias as $categoria) {
            if ($categoria->slug !== 'destacats') {
                $icono_categoria = obtener_icono_por_categoria($categoria->slug);
                if (!empty($icono_categoria)) {
                    echo '<button class="filtro-btn espectacles__categoria--' . $categoria->slug . '" data-categoria="' . $categoria->slug . '"><span class="icono-svg">' . $icono_categoria . '</span>' . $categoria->name . '</button>';
                } else {
                    echo '<button class="filtro-btn espectacles__categoria--' . $categoria->slug . '" data-categoria="' . $categoria->slug . '">' . $categoria->name . '</button>';
                }
            }
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
                    <div class="svg-overlay">
                        <svg width="18" height="18" viewBox="0 0 11 11" fill="none" xmlns="http://www.w3.org/2000/svg" class="arrow-up">
                            <path fill-rule="evenodd" clip-rule="evenodd" d="M8.17973 4.94461L4.82729 1.67783L5.59968 0.884766L9.92831 5.10116C9.98134 5.15276 10.0235 5.21447 10.0523 5.28264C10.0811 5.35081 10.0959 5.42406 10.0959 5.49806C10.0959 5.57205 10.0811 5.6453 10.0523 5.71347C10.0235 5.78164 9.98134 5.84335 9.92831 5.89496L5.59968 10.1113L4.82655 9.31828L8.17899 6.05224H0.884857V4.94461H8.17973Z" fill="currentColor"></path>
                        </svg>
                        <svg width="20" height="20">
                            <?php echo get_svg_icon('info'); ?>
                        </svg>
                        <?php $categorias = get_the_category(); ?>
                        <?php if ($categorias): ?>
                            <ul class="espectacles__categorias">
                                <?php foreach ($categorias as $categoria): ?>
                                    <?php if ($categoria->slug !== 'destacats'): ?>
                                        <?php 
                                            $svg_icon = obtener_icono_por_categoria($categoria->slug);
                                        ?>
                                        <?php if ($svg_icon): ?>
                                            <li class="espectacles__categoria espectacles__card__categoria--<?php echo esc_attr($categoria->slug); ?>">
                                                <div class="espectacles__icon">
                                                    <?php echo $svg_icon; ?>
                                                </div>
                                            </li>
                                        <?php endif; ?>
                                    <?php endif; ?>
                                <?php endforeach; ?>

                            </ul>
                        <?php endif; ?>

                    </div>
                    <div class="espectacles__contenido">
                        <div class="peu__card">
                            <div class="peu__card--categorias">
                                <?php $categorias = get_the_category(); ?>
                                <?php if ($categorias): ?>
                                    <ul class="espectacles__categorias">
                                        <?php foreach ($categorias as $categoria): ?>
                                            <?php if ($categoria->slug !== 'destacats'): ?>
                                                <li class="espectacles__categoria espectacles__categoria--<?php echo $categoria->slug; ?>">
                                                    <img src="<?php echo obtener_icono_por_categoria($categoria->slug); ?>" alt="<?php echo $categoria->name; ?> icon">
                                                </li>
                                            <?php endif; ?>
                                        <?php endforeach; ?>
                                    </ul>
                                <?php endif; ?>
                            </div>
                        </div>
                        
                        <div class="espectacles__hover">
                            <a href="<?php the_permalink(); ?>">
                                <h3 class="espectacles__titulo-hover"><?php the_title(); ?></h3>
                                <p class="espectacles__autor"><?php echo wp_kses_post(get_field('companyia')); ?></p>
                            </a>
                            <div class="peu__card">
                                <div class="peu__card--categorias">
                                    <?php $categorias = get_the_category(); ?>
                                    <?php if ($categorias): ?>
                                        <ul class="espectacles__categorias--contenedor">
                                            <?php foreach ($categorias as $categoria): ?>
                                                <?php if ($categoria->slug !== 'destacats'): ?>
                                                    <li class="espectacles__categoria espectacles__categoria--svg<?php echo $categoria->slug; ?>">
                                                        <img src="<?php echo obtener_icono_por_categoria($categoria->slug); ?>" alt="<?php echo $categoria->name; ?> icon" style="width: 16px; height: 16px;">
                                                    </li>
                                                <?php endif; ?>
                                            <?php endforeach; ?>
                                        </ul>
                                    <?php endif; ?>
                                </div>
                            </div>
                            <p class="espectacles__descripcion"><?php echo wp_kses_post(get_field('descripcio')); ?></p>
                            <?php $archivo_pdf = get_field('fitxer'); ?>
                            <?php if (!empty($archivo_pdf)): ?>
                                <div class="espectacles__boton-container">
                                    <a href="<?php echo esc_url($archivo_pdf['url']); ?>" download>
                                        <!-- Boton PDF-->
                                        <button class="espectacles__boton" role="button">
                                        <h6>dossier</h6>

                                            <svg width="10" height="10" viewBox="0 0 11 11" fill="none" xmlns="http://www.w3.org/2000/svg" class="arrow-down">
                                                <path fill-rule="evenodd" clip-rule="evenodd" d="M8.17973 6.05539L4.82729 9.32217L5.59968 10.1152L9.92831 5.89884C9.98134 5.84724 10.0235 5.78553 10.0523 5.71736C10.0811 5.64919 10.0959 5.57594 10.0959 5.50194C10.0959 5.42795 10.0811 5.3547 10.0523 5.28653C10.0235 5.21836 9.98134 5.15665 9.92831 5.10504L5.59968 0.888704L4.82655 1.68172L8.17899 4.94776H0.884857V6.05539H8.17973Z" fill="currentColor" transform="rotate(90, 5.5, 5.5)"></path>
                                            </svg>
                                            PDF
                                        </button>
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

<?php
function obtener_icono_por_categoria($categoria_slug) {
    $icon_base_path = get_template_directory() . '/img/icons/';
    $icon_content = '';

    switch ($categoria_slug) {
        case 'teatre':
            $icon_content = file_get_contents($icon_base_path . 'teatre.svg');
            break;
        case 'musica':
            $icon_content = file_get_contents($icon_base_path . 'musica.svg');
            break;
        case 'infantil':
            $icon_content = file_get_contents($icon_base_path . 'infantil.svg');
            break;
        case 'feminisme':
            $icon_content = file_get_contents($icon_base_path . 'feminisme.svg');
            break;
        case 'lgtbiq':
            $icon_content = file_get_contents($icon_base_path . 'lgtbiq.svg');
            break;
        case 'ecologia':
            $icon_content = file_get_contents($icon_base_path . 'ecologia.svg');
            break;
        case 'adults':
            $icon_content = file_get_contents($icon_base_path . 'adults.svg');
            break;
        case 'igualtat':
            $icon_content = file_get_contents($icon_base_path . 'igualtat.svg');
            break;
        case 'monoleg':
            $icon_content = file_get_contents($icon_base_path . 'monoleg.svg');
            break;
        default:
            // Si la categoría no coincide, no se asigna ningún icono
            break;
    }

    return $icon_content;
}
?>



