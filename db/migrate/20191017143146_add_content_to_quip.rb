class AddContentToQuip < ActiveRecord::Migration[5.2]
  def change
    add_column :quips, :content, :string
  end
end
