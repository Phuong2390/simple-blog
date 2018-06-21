class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.string :summary
      t.string :image
      t.boolean :public
      t.timestamps
    end
  end
end
