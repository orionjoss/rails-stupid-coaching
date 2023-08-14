class QuestionsController < ApplicationController
  def ask
  end

  def answer
    #  if the user input is same as "I am going to work" assign an instance value to "Great"
    @answer =
      if params[:question] == 'I am going to work'
        'Great'
      # elseif the phrase ends with a "?" give them "silly....."
      elsif params[:question].end_with?('?')
        'Silly question, get dressed and go to work!'
      # else assign instance value  to "I don't care, get dressed and go to work!"
      else
        "I don't care, get dressed and go to work!"
      end
  end
end
