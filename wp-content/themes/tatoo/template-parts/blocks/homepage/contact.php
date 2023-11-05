<?php

$title = get_field('contact-title');
$link = get_field('contact-link');

if (!$title && !$link) {
    return;
}

?>

<div class="block-contact container">
    <h2 class="block-contact__title"><?php echo $title; ?></h2>
    <a href="<?php echo $link['url']; ?>" class="block-contact__link cta"><?php echo $link['title']; ?></a>
</div>
