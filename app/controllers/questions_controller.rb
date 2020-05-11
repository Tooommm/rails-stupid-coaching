class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:answer]
    @reponse = coach_answer_enhanced(@answer)
  end

  def coach_answer(your_message)
    length = your_message.length - 1
    if your_message == 'I am going to work right now!'
      ''
    elsif your_message[length] == '?'
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    if your_message == 'I AM GOING TO WORK RIGHT NOW!'
      ''
    elsif your_message == your_message.upcase
      "I can feel your motivation! #{coach_answer(your_message)}"
    else
      coach_answer(your_message)
    end
  end
end
