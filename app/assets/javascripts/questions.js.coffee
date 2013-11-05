$ ->
  $('form').submit (event) ->
    event.preventDefault()
    $text = $('#question_text')

    question = {text: $text.val()}
    post = $.ajax(url:"questions", type: "post", data: {question: question})
    $("#questions").html("");
    post.done (data)->
      $("#questions").prepend("<div>" + data.question.text + "<br>" + data.answer.text + "</div>")

      
