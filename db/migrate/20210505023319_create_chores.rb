class CreateChores < ActiveRecord::Migration[6.1]
  def change
    create_table :chores do |t|
      t.string :name
      t.integer :kid_id

      t.timestamps
    end
  end
end
