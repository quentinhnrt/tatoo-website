<?php

get_header();

?>

    <main id="primary" class="site-main histoire">

        <?php

        while ( have_posts() ) :
            the_post();

            get_template_part( 'template-parts/blocks/historypage/tatoo' );
            get_template_part( 'template-parts/blocks/historypage/history' );
            get_template_part( 'template-parts/blocks/historypage/images' );

        endwhile;

        ?>

    </main>

<?php

get_footer();

?>
