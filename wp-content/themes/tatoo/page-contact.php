<?php

get_header();

?>

    <main id="primary" class="site-main histoire">

        <?php

        while ( have_posts() ) :
            the_post();

            get_template_part( 'template-parts/blocks/contact/banner' );
            get_template_part( 'template-parts/blocks/contact/formulaire' );
            get_template_part( 'template-parts/blocks/contact/schedules' );

        endwhile;

        ?>

    </main>

<?php

get_footer();

?>
