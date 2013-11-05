Magic 8-Ball Homework - Monday, Nov. 4th, 2013

This homework is a way to learn more about things we covered today in class. We talked about ActiveRecord relations and join tables. We also talked about CoffeeScript.

The objective for this assignment is to create a single page app that uses 3 models, Question, Answer, & AnsweredQuestion. There should be a has_many and has_many:through association between your models.

Use a seed file to put answers into your database. Please see seed file below, which has been typed out to spare you the pain of that :)

CoffeeScript will be used to implement the application's front-end logic and for making the AJAX post request.

Bonus points for an app that looks spooktacular!

answers = Answer.create([ { text: "It is certain" }, 
				{ text: "It is decidedly so" },
				{ text: "Without a doubt" },
				{ text: "Yes definitely" },
				{ text: "You may rely on it" }, 
				{ text: "As I see it yes" },
				{ text: "Most likely" },
				{ text: "Outlook good" },
				{ text: "Yes" },
				{ text: "Signs point to yes" },
				{ text: "Reply hazy try again" },
				{ text: "Ask again later" },
				{ text: "Better not tell you now" },
				{ text: "Cannot predict now" },
				{ text: "Concentrate and ask again" },
				{ text: "Don't count on it" },
				{ text: "My reply is no" },
				{ text: "My sources say no" },
				{ text: "Outlook not so good" },
				{ text: "Very doubtful" }])