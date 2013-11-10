class QuestionsController < ApplicationController
  def index
  	#@questions = Question.all
    @questions = Question.paginate(page: params[:page], per_page: 8).order('created_at DESC') 
  	@question = Question.new
  end

  def create
  	question = Question.create(params[:question])
  	question.answers.push Answer.all.sample

  	response = { question: question, 
  				 answer: question.answers.last }
  	render json: response, status: 201
  	
  end
end
