<h1>Template Part - LLista espectacles</h1>

<div class="contenedor espectacles">
    <ul class="listado-grid">
        <?php 
            $args = array(
                'post_type' => 'xavidemelo_clases'
            );

            $clases = new WP_Query($args);

            while($clases->have_posts()) {
                $clases->the_post();
            ?>
            <li class="espectacles__card">
                <?php the_category(); ?>
                <?php the_post_thumbnail(); ?>
                <div class="espectacles__contenido">
                    <a href="<?php the_permalink(); ?>">
                        <h3><?php the_title(); ?></h3>
                    </a>
                </div>
            </li>           
            <?php
                } 
                wp_reset_postdata();
            ?>
    </ul>
</div>