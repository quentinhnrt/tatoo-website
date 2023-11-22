document.addEventListener('DOMContentLoaded', function () {
    const button = document.querySelectorAll('.menu-toggle')
    const menuContainer = document.querySelector('.site-header__menu')

    button.forEach(function (btn) {
        btn.addEventListener('click', function () {
            menuContainer.classList.toggle('toggled')
        })
    })
})