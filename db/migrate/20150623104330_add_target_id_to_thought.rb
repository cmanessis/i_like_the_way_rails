class AddTargetIdToThought < ActiveRecord::Migration
  def change
    add_reference :thoughts, :target, index: true, foreign_key: true
  end
end
