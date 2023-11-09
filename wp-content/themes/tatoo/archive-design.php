<?php

get_header();

$args = [
    'post_type' => 'design',
    'posts_per_page' => 6
];

$query = new WP_Query($args);

$bannerImg = get_field('design-page-img', 'options');
$image = false;
if (isset($bannerImg['ID'])) {
    $image = wp_get_attachment_image($bannerImg['ID'], 'full', false);
}

?>

    <main id="primary" class="site-main archive-design">
        <div class="banner">
            <h1 class="archive-design__title">Mes designs</h1>
            <?php if ($image): ?>
                <div class="banner-filter">

                </div>
                <?php echo $image ?>
            <?php endif; ?>
        </div>
        <div class="container">
            <div id="archive-design-container" class="archive-design__items">
                <?php get_template_part('template-parts/loop-designs', null, ['template' => 1, 'offset' => 6, 'query' => $query]) ?>
            </div>
            <div id="infinite-trigger-point">
                <span class="loader"></span>
            </div>
        </div>
    </main>

<?php

get_footer();

?>