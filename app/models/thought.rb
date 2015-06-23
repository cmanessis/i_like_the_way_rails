class Thought < ActiveRecord::Base

  belongs_to :user
  belongs_to :target

  def build_thought(current_user, target, thought_params)
    t = Thought.new(thought_params)
    t.user_id = current_user.user_id
    t.target_id = @target.id
    t
  end


end
