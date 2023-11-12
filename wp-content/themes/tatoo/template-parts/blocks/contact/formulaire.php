<?php
    $adresse = get_field('contact-address', 'options');
    $phone = get_field('contact-phone', 'options');
    $email = get_field('contact-email', 'options');
    $iframe = get_field('location');
    $form = get_field('formulaire');
    $title = get_field('form-title');
    $description = get_field('form-description');

    if (!$form) {
        return;
    }
?>

<div class="formulaire">
    <div class="formulaire__coordonnees">
        <div class="formulaire__coordonnees__infos">
            <h2 class="formulaire__coordonnees__items__infos__title">
                <?php echo $title ?>
            </h2>
            <div class="formulaire__coordonnees__items__infos__description">
                <?php echo $description ?>
            </div>
            <div>
                <?php echo $adresse ?>
            </div>
            <div>
                <?php echo $phone ?>
            </div>
            <div>
                <?php echo $email ?>
            </div>
        </div>
        <div class="formulaire__coordonnees__map">
            <?php echo $iframe ?>
        </div>
    </div>
    <div class="formulaire__form">
        <?= do_shortcode($form) ?>
        <span class="formulaire__form__required">
            Les champs munis d&rsquo;un astérisque (*) sont obligatoires.
        </span>
    </div>
</div>
