class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.integer :opinion_id
      t.integer :user_id
    end
    add_foreign_key :likes, :users, column: :user_id
    add_foreign_key :likes, :opinions, column: :opinion_id
  end
end
