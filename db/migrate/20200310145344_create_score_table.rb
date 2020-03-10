class CreateScoreTable < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.string :name
      t.integer :points
      t.timestamps
    end
  end
end
