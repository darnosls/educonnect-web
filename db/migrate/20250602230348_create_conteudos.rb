class CreateConteudos < ActiveRecord::Migration[8.0]
  def change
    create_table :conteudos do |t|
      t.string :nome
      t.integer :status
      t.string :descricao
      t.string :thumbnail
      t.text :conteudo

      t.timestamps
    end
  end
end
