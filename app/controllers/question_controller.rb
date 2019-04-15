class QuestionController < ApplicationController

  ANSWERS = {
   I_am_going_to_work:  "Great!",
   include: "Silly question, get dressed and go to work!",
   others: " I don't care, get dressed and go to work!"
  }
  def ask
     @ask = params[:content_ask]
    # if @ask == "I am going to work"
    #   @answers = ANSWERS.I_am_going_to_work
    # elsif @ask.include?"?"
    #   @answers = ANSWERS.include
    # else
    #   @answers = ANSWERS.others
    # end
  end

  def answer
   @ask = params[:content_ask]
    if @ask == "I am going to work"
      @answers = ANSWERS[:I_am_going_to_work]
    elsif @ask.include?("?")
      @answers = ANSWERS[:include]
    else
      @answers = ANSWERS[:others]
    end
  end

end
