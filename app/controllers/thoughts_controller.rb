class ThoughtsController < ApplicationController

  def index
  end

  def new
    @thought = Thought.new
  end

  def create
    name = params[:thought_target]
    @target = Target.create(name: name)
    @thought = current_user.thoughts.new(thought_params)
    @thought.target_id =@target.id
    if @thought.save
      redirect_to thought_path(@thought)
    end
  end

  def thought_params
    params.require(:thought).permit(:question1)
  end

end
