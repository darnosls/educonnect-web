class AddTypeToUsuarios < ActiveRecord::Migration[8.0]
  def change
    add_column :usuarios, :type, :string
  end
end
