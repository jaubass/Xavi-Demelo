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
        'taxonomy' => 'category', // Cambiar 'category' por el nombre de la taxonomía de tus custom post types
        'exclude' => get_cat_ID('Uncategorized')
    ));
    foreach ($categorias as $categoria) {
        // Verificar si la categoría no es "destacats" y agregar el botón del filtro
        if ($categoria->slug !== 'destacats') {
            // Obtener el icono para la categoría actual
            $icono_categoria = obtener_icono_por_categoria($categoria->slug);
            // Si se encontró un icono, mostrarlo dentro del botón de filtro
            if (!empty($icono_categoria)) {
                echo '<button class="filtro-btn espectacles__categoria--' . $categoria->slug . '" data-categoria="' . $categoria->slug . '"><i class="fas fa-' . $icono_categoria . '"></i> ' . $categoria->name . '</button>';
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
                    <svg width="12" height="12" viewBox="0 0 11 11" fill="none" xmlns="http://www.w3.org/2000/svg" class="arrow-up">
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M8.17973 4.94461L4.82729 1.67783L5.59968 0.884766L9.92831 5.10116C9.98134 5.15276 10.0235 5.21447 10.0523 5.28264C10.0811 5.35081 10.0959 5.42406 10.0959 5.49806C10.0959 5.57205 10.0811 5.6453 10.0523 5.71347C10.0235 5.78164 9.98134 5.84335 9.92831 5.89496L5.59968 10.1113L4.82655 9.31828L8.17899 6.05224H0.884857V4.94461H8.17973Z" fill="currentColor">
                        </path>
                    </svg>
                    <i class="fas fa-info-circle"></i>
                    
                    <?php $categorias = get_the_category(); ?>
                                <?php if ($categorias): ?>
                                    <ul class="espectacles__categorias">
                                        <?php foreach ($categorias as $categoria): ?>
                                            <?php if ($categoria->slug !== 'destacats'): ?>
                                                <i class="fas fa-<?php echo obtener_icono_por_categoria($categoria->slug); ?>"></i>
                                                </li>
                                                </li>
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
                                <p class="espectacles__autor"><?php the_field('companyia');?></p>
                            </a>
                            <div class="peu__card">
                            <div class="peu__card--categorias">
                                <?php $categorias = get_the_category(); ?>
                                <?php if ($categorias): ?>
                                    <ul class="espectacles__categorias">
                                        <?php foreach ($categorias as $categoria): ?>
                                            <?php if ($categoria->slug !== 'destacats'): ?>
                                                <i class="fas fa-<?php echo obtener_icono_por_categoria($categoria->slug); ?>"></i>
                                                </li>
                                                </li>
                                            <?php endif; ?>
                                        <?php endforeach; ?>
                                    </ul>
                                <?php endif; ?>
                            </div>
                        </div>
                            <hr class="separador">
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

<?php
// Función para obtener el nombre del icono de Font Awesome por categoría
function obtener_icono_por_categoria($categoria_slug) {
    switch ($categoria_slug) {
        case 'teatre':
            return 'mask';
        case 'musica':
            return 'music'; 
        case 'infantil':
            return 'children'; 
        case 'feminisme':
            return 'heart';
        case 'lgtbiq':
            return 'star-of-life';
        case 'ecologia':
            return 'pagelines';
        case 'adults':
            return 'user';
        case 'igualtat':
            return 'equals';
        default:
            return ''; 
    }
}
?>