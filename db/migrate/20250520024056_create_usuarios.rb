class CreateUsuarios < ActiveRecord::Migration[8.0]
  def change
    create_table :usuarios do |t|
      t.string :nome_usuario
      t.string :email
      t.string :celular
      t.string :senha
      t.string :tipo_usuario

      t.timestamps
    end
  end
end
