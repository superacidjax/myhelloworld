$(document).ready ->
  $("#lesson-complete").on("ajax:success", (e, data, status, xhr) ->
    $("#lesson-incomplete").show("#lesson-incomplete")
    $("#lesson-complete").hide()
  ).on "ajax:error", (e, xhr, status, error) ->
    $("#lesson-complete").append "<p>ERROR</p>"
  $("#lesson-incomplete").on("ajax:success", (e, data, status, xhr) ->
    $("#lesson-complete").show("#lesson-complete")
    $("#lesson-incomplete").hide()
  ).on "ajax:error", (e, xhr, status, error) ->
    $("#lesson-incomplete").append "<p>ERROR</p>"

$(document).ready ->
  $(".accordion-tabs").each (index) ->
    $(this).children("li").first().children("a").addClass("is-active").next().addClass("is-open").show()
    return

  $(".accordion-tabs").on "click", "li > a", (event) ->
    unless $(this).hasClass("is-active")
      event.preventDefault()
      accordionTabs = $(this).closest(".accordion-tabs")
      accordionTabs.find(".is-open").removeClass("is-open").hide()
      $(this).next().toggleClass("is-open").toggle()
      accordionTabs.find(".is-active").removeClass "is-active"
      $(this).addClass "is-active"
    else
      event.preventDefault()
    return

  return


$ ->
  $("#start-lesson").click ->
    $("#intro").slideUp()
    $("#lesson-content").slideDown(800)
    $("#lesson-notes-and-discussion").slideDown(400)
    return
