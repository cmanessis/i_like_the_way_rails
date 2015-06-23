require 'thought.rb'
class ThoughtsController < ApplicationController

  def index
    @thought = Thought.new
    @thought_1 = @thought.thought_example
    @thought_2 = @thought.thought_example
    @thought_3 = @thought.thought_example
  end

  def new
    @thought = Thought.new
  end

  def create
    @thought = Thought.create(thought_params)
    if @thought.save
      redirect_to thought_path(@thought)
    end
  end

  def thought_params
    params.require(:thought).permit(:question1)
  end



end
