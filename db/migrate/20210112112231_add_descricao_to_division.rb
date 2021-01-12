class AddDescricaoToDivision < ActiveRecord::Migration[6.0]
  def change
    add_column :divisions, :descricao, :text
  end
end
