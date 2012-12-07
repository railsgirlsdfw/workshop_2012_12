class PollsController < ApplicationController
  def index
    @question = Question.current
    @choices = @question.choices
  end
  
  def results
    @choice = Choice.find(params[:choice_id])
    @choice.increment(:count)
    @question = @choice.question
    @choices = @question.choices
    if !@choice.save
      render :action => :index, :notice => "Sorry we were not able to save your vote :("
    end
  end
end
