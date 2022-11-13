# frozen_string_literal: true

# app/controller/questions_controller.rb
class QuestionsController < ApplicationController
  def ask
    # placeholder
  end

  def answer
    @quest = params[:question]
    @answer = if @quest == 'I am going to work right now!'
                ''
              elsif @quest.ends_with?('?')
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
