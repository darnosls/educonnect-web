class CreateContents < ActiveRecord::Migration[8.0]
  def change
    create_table :contents do |t|
      t.string :name
      t.string :title
      t.integer :status
      t.string :description
      t.string :thumbnail
      # t.text :content
      t.datetime :published_at
      t.integer :role, default: 0

      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
