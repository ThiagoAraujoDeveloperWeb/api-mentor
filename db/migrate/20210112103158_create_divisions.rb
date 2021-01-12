class CreateDivisions < ActiveRecord::Migration[6.0]
  def change
    create_table :divisions do |t|
      t.string :data
      t.string :entrada
      t.string :dinheiro
      t.string :cartao
      t.string :capitalDeGiro
      t.string :reserva
      t.string :salario
      t.string :despesas

      t.timestamps
    end
  end
end
