# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

# wait for document.ready using the jquery '$' alias

$ ->
  #console.log $("#question_text")
  #console.log $("#new_question").val()
  console.log $('input[name="commit"')
  $('input[name="commit"]').click (event)->
  	event.preventDefault()

  	$text = $("#question_text")
  	question = { text: $text.val() }

  	# make a post request with the question that was submitted
  	$.post( "/questions", { question: question }).done (data) ->
  	console.log data

  	# clear the form
  	$text.val("")

  $.post( "/questions", { question: {text: "will we finish the assignment" }}).done (data) -> 
    $("#questions").prepend("<div>" + data.question.text + "<br>" + data.answer.text + "</div>")

