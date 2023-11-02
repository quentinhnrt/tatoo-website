<?php

get_header();

?>

    <main id="primary" class="site-main">

        <?php

        while ( have_posts() ) :
            the_post();

            get_template_part( 'template-parts/blocks/homepage/banner');
            get_template_part( 'template-parts/blocks/homepage/description');
            get_template_part( 'template-parts/blocks/homepage/resume-history');
            get_template_part( 'template-parts/blocks/homepage/designs');

        endwhile;

        ?>

    </main>

<?php

get_footer();

?>
