class CreateCursos < ActiveRecord::Migration[8.0]
  def change
    create_table :cursos do |t|
      t.string :nome
      t.string :descricao

      t.timestamps
    end
  end
end
