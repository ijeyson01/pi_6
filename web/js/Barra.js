const btn = document.querySelector('#div_cont_menu');
const menu = document.querySelector('#sidemenu');
$(document).ready(function () {
    document.querySelector('body').classList.toggle('body-expanded');
    $(btn).click(function () {
        menu.classList.toggle("menu-expanded");
        menu.classList.toggle("menu-collapsed");

        document.querySelector('body').classList.toggle('body-expanded');

    });
});