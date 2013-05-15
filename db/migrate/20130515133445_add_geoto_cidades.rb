class AddGeotoCidades < ActiveRecord::Migration
  def up
  	change_table :cidades do |t|
      t.string :lat
      t.string :long
    end
  end

  def down
  end
end
