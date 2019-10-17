class CreateQuips < ActiveRecord::Migration[5.2]
  def change
    create_table :quips do |t|
      t.string :author
      t.string :mood
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
