class CreateNoticia < ActiveRecord::Migration
  def change
    create_table :noticia do |t|
      t.attachment :imagem
      t.string :titulo
      t.text :texto
      t.string :urlized

      t.timestamps
    end
  end
end
