class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.text :body
      t.string :banner_url
      t.integer :user_id
      t.timestamps
    end
  end
end
