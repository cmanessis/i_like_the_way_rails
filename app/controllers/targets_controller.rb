class TargetsController < ApplicationController

  def index
    @target = Target.all
  end


  def new
    @target = Target.new
  end

  def create
    @target = Target.new(target_params)
    if @target.save
      redirect_to root_path
    end
  end

  def target_params
    params.require(:target).permit(:name)
  end

end
