class ThoughtsController < ApplicationController

  def index
  end

  def new
    @thought = Thought.new
  end

  def create
    @thought = current_user
  end

end
