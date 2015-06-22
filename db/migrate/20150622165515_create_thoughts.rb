class CreateThoughts < ActiveRecord::Migration
  def change
    create_table :thoughts do |t|
      t.string :question1

      t.timestamps null: false
    end
  end
end
