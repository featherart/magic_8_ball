 $ ->
  $('form').submit (event) ->
    event.preventDefault()
    $text = $('#question_text')

    question = {text: $text.val()}
    post = $.ajax(url:"questions", type: "post", data: {question: question})
    # clear the questions div to make room for next question & answer pair
    $("#questions").html("")
    # post form data then append to 8-ball
    post.done (data)->
      answer_string = "<div>" + data["question"]["text"] + "<br>" + data["answer"]["text"] + "</div>"
      $("#questions").prepend(answer_string)
      $("#past_questions").prepend(answer_string)
    # clear the text box
    $text.val("")
    
