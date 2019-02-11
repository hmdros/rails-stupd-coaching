class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @your_message = params[:your_message]
    if @your_message == 'I am going to work right now!'
      @coach_answer = 'Great'
    elsif @your_message.include?('?')
      @coach_answer = 'Silly question, get dressed and go to work!'
    elsif @your_message.is_a? String
      @coach_answer = "I don\'t care, get dressed and go to work!"
    end
  end
end
