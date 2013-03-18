class CreateMidia < ActiveRecord::Migration
  def change
    create_table :midia do |t|
      t.string :titulo
      t.text :conteudo
      t.references :mediable, :polymorphic=>true

      t.timestamps
    end
  end
end
