// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "controllers"

Rails.start()
Turbolinks.start()
ActiveStorage.start()


document.addEventListener('turbolinks:load', () => {
  function scrollUp() {
    const scrollUp = document.getElementById('scroll-up');
    if (this.scrollY >= 560) scrollUp.classList.add('show-scrollup'); else scrollUp.classList.remove('show-scrollup')
    scrollUp.onclick = function () { window.scrollTo(0, 0); };
  }
  window.addEventListener('scroll', scrollUp)

  function scrollDown() {
    const scrollDown = document.getElementById('scroll-down');
    if ((window.innerHeight + window.scrollY) >= document.body.offsetHeight) scrollDown.classList.remove('show-scrolldown'); else scrollDown.classList.add('show-scrolldown')
    scrollDown.onclick = function () { window.scrollTo(0, document.body.scrollHeight); };
  }
  window.addEventListener('scroll', scrollDown)
});
