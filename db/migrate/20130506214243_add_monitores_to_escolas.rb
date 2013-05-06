class AddMonitoresToEscolas < ActiveRecord::Migration
  def change
  	remove_column :pessoas, :escola_id
  	create_table :escolas_pessoas do |t|
  		t.references :pessoa
  		t.references :escola
  	end
  	add_index :escolas_pessoas, :pessoa_id
  	add_index :escolas_pessoas, :escola_id
  end
end
