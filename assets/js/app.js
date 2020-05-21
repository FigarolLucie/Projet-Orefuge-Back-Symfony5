/*
 * Welcome to your app's main JavaScript file!
 *
 * We recommend including the built version of this JavaScript file
 * (and its CSS file) in your base layout (base.html.twig).
 */

// any CSS you import will output into a single css file (app.css in this case)
import '../css/app.scss';

// Need jQuery? Install it with "yarn add jquery", then uncomment to import it.
import $ from 'jquery';
var app = {

  init: function () {
    console.log('init');

    document.getElementById('icon-menu').addEventListener('click', app.handleDisplayMenu);
    document.getElementById('icon-cross').addEventListener('click', app.handleDisplayMenu);

    var widthWindow = document.body.clientWidth;

    // if( widthWindow <= 800 )
    // {
      
    // }

  },

  handleDisplayMenu: function (evt) {
    evt.preventDefault();
    const btnMenu = $('#nav__item__mobile');
    btnMenu.toggle();

  }

};
document.addEventListener('DOMContentLoaded', app.init);
console.log('Hello Webpack Encore! Edit me in assets/js/app.js');
