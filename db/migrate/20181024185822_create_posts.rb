class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
    	t.string :titulo
    	t.string :cuerpo

    	t.timestamps
    end
  end
end
