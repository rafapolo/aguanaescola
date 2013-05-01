class CreateEscolas < ActiveRecord::Migration
  def change
    create_table :escolas do |t|
      t.string :nome
      t.integer :cidade_id

      t.timestamps
    end

  end
end
