 class HomeController < ApplicationController
  def index
    @questions = Question.all
  end

  def about
  end

  def temp
    redirect_to root_path
  end
end
