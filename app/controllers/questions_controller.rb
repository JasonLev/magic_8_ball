class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    @question = Question.new
  end

  def create
    #receives a params hash
    #params => {question: {text: "lorem ipsum..."}}
    @question = Question.create(params[:question])
    #this will push a new Answer model into the question.answers.array,
    # and it is updated in our database in the join table, "AnsweredQuestion"
    @question.answers.push(Answer.all.sample)
    #Respond with JSON
    render json: {question: @question, answer: @question.answers.last}
  end
end
