<?php

function xd_espectacles() {
    ?>
    <ul class="listado-grid">
        <?php 
            $args = array(
                'post_type' => 'xavidemelo_clases'
            );
            $espectacles = new WP_Query($args);
            while($espectacles->have_posts()) {
                $espectacles->the_post();
            ?>
                <li class="espectacle">
                    <?php the_post_thumbnail('large'); ?>
                </li>
            <?php
            }
            wp_reset_postdata();
            ?>
    </ul>
    <?php
}
?>