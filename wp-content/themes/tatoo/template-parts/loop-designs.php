<div class="archive-design__items__template archive-design__items__template_<?php echo $args['template'] ?? 1 ?>"
     data-offset="<?php echo $args['offset'] ?>" data-template="<?php echo $args['template'] ?? 1 ?>">
    <?php
    $i = 0;

    while ($args['query']->have_posts()) :
        $args['query']->the_post();
        $i++;
        $class = 'archive-design__items__item archive-design__items__item__' . $i;
        $image = get_the_post_thumbnail(get_the_ID(), 'large');
        ?>

        <div class="<?php echo $class ?>">
            <?php if ($image) : ?>
                <?php echo $image ?>
            <?php else : ?>
                <div class="archive-design__items__item__placeholder">

                </div>
            <?php endif; ?>
        </div>

        <?php

    endwhile;


    ?>
</div>
