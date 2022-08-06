// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import "stylesheets/application"

// Rails.start()
// Turbolinks.start()
// ActiveStorage.start()
import { toggleNavbar } from '../scripts/toggle-navbar'
import { setHeight } from '../scripts/set-home-screen-height'
import { initTomSelect } from '../scripts/init-tom-select'

document.addEventListener("turbolinks:load", () =>{
  toggleNavbar()
  setHeight()
  initTomSelect()
})

// // sweet alert
// import Swal from 'sweetalert2/dist/sweetalert2.min.js'
// window.Swal = Swal

// import { initSweetalert } from '../scripts/init_sweetalert';

// initSweetalert('#swalButton', {
//   title: "A nice alert",
//   text: "This is a great alert, isn't it?",
//   icon: "success"
// });

import Swal from 'sweetalert2/dist/sweetalert2.js'
import 'sweetalert2/src/sweetalert2.scss'
window.Swal = Swal;

// Chartkick & Highcharts
import "chartkick/chart.js"
import "chartkick/highcharts"
