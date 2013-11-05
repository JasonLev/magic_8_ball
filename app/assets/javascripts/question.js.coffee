# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
  $('input[name="commit"]').click (event) ->
    event.preventDefault()
    console.log $('#question_text').val()
    #Here we grab the text field and store it as a variable
    $text = $('#question_text')
    #Here we insert it into a hash
    question = { text: $text.val() }

    $.post( "/questions", {question: question}).done (data) ->

      $("#questions").prepend("<div>" + data["question"]["text"] + "<br>" + data["answer"]["text"] + "</div>")

    #Here we clear the form
    $text.val("")

  #$.post("/questions", {question: {text: "Will I laugh at your face?"}})
  #.done (data) ->
  #  console.log data