<?php
    $adresse = get_field('contact-address', 'options');
    $phone = get_field('contact-phone', 'options');
    $email = get_field('contact-email', 'options');
    $iframe = get_field('location');
    $title = get_field('form-title');
    $description = get_field('form-description');

?>

<div class="formulaire">
    <form action="" class="formulaire__form">
        <input type="text" name="nom" id="nom" placeholder="Nom / Prenom*" class="formulaire__form__input">
        <input type="text" name="email" id="email" placeholder="Email*" class="formulaire__form__input">
        <input type="text" name="subject" id="subject" placeholder="Objet*" class="formulaire__form__input">
        <textarea name="message" id="message" cols="30" rows="10" placeholder="Message*" class="formulaire__form__input"></textarea>
        <span class="formulaire__form__required">
            Les champs munis d&rsquo;un astérisque (*) sont obligatoires.
        </span>
        <input type="submit" value="Envoyer" class="formulaire__form__submit">
    </form>
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
</div>
