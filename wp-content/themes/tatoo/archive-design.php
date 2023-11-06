<?php

get_header();

?>

    <main id="primary" class="site-main archive-design">
        <div class="container">
            <h1 class="archive-design__title">Nos Designs</h1>
            <div class="archive-design__items">
                <?php
                $i = 0;
                while (have_posts()) :
                    the_post();
                    $rand = rand(1, 3);
                    $class = 'archive-design__items__item archive-design__items__item__' . $rand;
                    $image = get_the_post_thumbnail(get_the_ID(), 'large');
                    if (!$image) {
                        continue;
                    }
                    ?>

                    <div class="<?php echo $class ?>">
                        <?php echo $image ?>
                    </div>

                <?php
                endwhile;

                ?>
            </div>
        </div>
    </main>

<?php

get_footer();

?>