class CreateDisciplines < ActiveRecord::Migration[8.0]
  def change
    create_table :disciplines do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
