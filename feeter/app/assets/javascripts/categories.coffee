# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
window.initCategory = ->
  ($ "#add-usuario-category").click ->
    data =
      usuario_id: ($ "#usuario_category_usuario_id").val()
      papel: ($ "#usuario_category_papel").val()
    $.getJSON "/categories/new_usuario_category", data, (result) ->
      if result.valid
        ($ "#table-usuario-category tbody").append(result.html)
      else
        alert "Rapaz, tem alguma coisa estranha ai"
  ($ ".remove-usuario-category").on "click", ->
    button = ($ this)
    button.siblings(".destroy_record").val(true)
    button.parentsUntil("tbody").hide()
