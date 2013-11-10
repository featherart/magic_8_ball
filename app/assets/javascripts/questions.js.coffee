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
      # $("#questions").animate
      #   opacity: 0.25, 5000, ->  
      $("#questions").prepend(data["question"]["text"] + "<p> " + data["answer"]["text"] + "</p>")
      # .animate
      #   opacity: 0.25, 5000, -> 

      $("#past_questions").prepend("<li>" + data["question"]["text"] + "<br> ☆ " + data["answer"]["text"] + " ☆ </li>")
      #$("#past_questions").fade
    # clear the text box
    $text.val("")
    
