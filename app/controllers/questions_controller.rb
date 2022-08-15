class QuestionsController < ApplicationController
  # def question
    # @questions = ["hello", "what time is it?"]
    # @answer = ""

    # <input type="text"
    # name="question"
    # value="<%= params[:question] %>"
    # placeholder="What is your question?"
    # >

  def ask
  end

  def answer
    @question = params[:question]
    @answer = nil

    if @question == "I am going to work"
      @answer = "Great!"
    elsif @question.include?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
      # raise
    end
  end
end
