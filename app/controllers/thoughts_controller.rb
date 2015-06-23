class ThoughtsController < ApplicationController

  def index
  end

  def new
    @target = Target.find(params[:target_id])
    @thought = Thought.new
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
  end

  def thought_params
    params.require(:thought).permit(:question1)
  end

end
