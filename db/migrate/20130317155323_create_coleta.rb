class CreateColeta < ActiveRecord::Migration
  def change
    create_table :coleta do |t|
      t.date :data
      t.text :info
      t.references :escola

      t.timestamps
    end
    add_index :coleta, :escola_id
  end
end
