class CreatePessoas < ActiveRecord::Migration
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.string :senha
      t.boolean :is_monitor
      t.boolean :is_admin
      t.string :email
      t.references :escola
      t.attachment :avatar

      t.timestamps
    end
    add_index :pessoas, :escola_id
  end
end
