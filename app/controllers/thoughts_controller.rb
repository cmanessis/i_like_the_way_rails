include ThoughtsHelper
class ThoughtsController < ApplicationController

  def index
    @thought = Thought.new
  end

  def new
    @target = Target.find(params[:target_id])
    @thought = Thought.new
    @thought_1 = thought_example
    @thought_2 = thought_example
    @thought_3 = thought_example
  end

  def create
    @target = Target.find(params[:target_id])
    @thought = current_user.thoughts.new(thought_params)
    @thought.target_id = @target.id
    if @thought.save
      redirect_to target_thought_path(@target, @thought)
    end
  end

  def show
    @target = Target.find(params[:target_id])
    @thought = Thought.where(target_id: @target.id)
    @url = request.original_url
  end

  def thought_params
    params.require(:thought).permit(:question1)
  end



end
