class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :text
      t.integer :current, :default => 0

      t.timestamps
    end
  end
end
