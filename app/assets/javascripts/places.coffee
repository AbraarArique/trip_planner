# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

window.geocoder = null
window.input = null

initialize = ->
  window.geocoder = new google.maps.Geocoder()
  window.input = document.getElementById "place_location"
  autocomplete = new google.maps.places.Autocomplete input
  $("#place_location").on "change", ->
    window.geocoder.geocode { "address": window.input.value }, (result, status) ->
      $("#place_lat").val result[0].geometry.location.A
      $("#place_long").val result[0].geometry.location.F

$(document).ready initialize
$(document).on "page:load", initialize