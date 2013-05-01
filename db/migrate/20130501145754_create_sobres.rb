class CreateSobres < ActiveRecord::Migration
  def change
    create_table :sobres do |t|
      t.text :texto
      t.timestamps
    end
    Sobre.create(:texto=>'inicial')
  end
end
