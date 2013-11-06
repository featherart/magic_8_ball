 $ ->
  $('form').submit (event) ->
    event.preventDefault()
    $text = $('#question_text')

    question = {text: $text.val()}
    post = $.ajax(url:"questions", type: "post", data: {question: question})
    $("#questions").html("");
    post.done (data)->
      #$("#questions").prepend("<div>" + data.question.text + "<br>" + data.answer.text + "</div>")
      $("#questions").prepend("<div>" + data["question"]["text"] + "<br>" + data["answer"]["text"] + "</div>")
    $text.val("")

# addQuestionText = (question) ->
#         $("#questions").append("<div id='#{question.id}'><h4>#{question.text}</h4><ul class='list-unstyled'>")
#         for answer in question.answers
#                 $("##{question.id} ul").append("<li>#{answer.text}</li>")
#         $("#questions").append("</ul></div>")

# $ ->
#         $.get("/questions.json")
#                 .done (data) ->
#                         for question in data
#                                 addQuestionText(question)

#         $("form").submit ->
#                 event.preventDefault()
#                 console.log "I was clicked!"
#                 $.post("/questions.json", {question: $("#question_text").val()})
#                         .done (data) ->
#                                 if $("##{data.id}").length > 0
#                                         $("##{data.id}").append("<li>#{data.answers[0].text}</li>")
#                                 else
#                                         addQuestionText(data)

