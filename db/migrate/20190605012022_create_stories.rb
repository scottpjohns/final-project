class CreateStories < ActiveRecord::Migration[5.1]
  def change
    create_table :stories do |t|
      t.string :name
      t.integer :comments_count
      t.integer :author_id
      t.integer :theme_id
      t.string :file_url

      t.timestamps
    end
  end
end
