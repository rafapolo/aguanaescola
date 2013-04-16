class AddNewFieldsToEscola < ActiveRecord::Migration
  def change
     add_column :escolas, :trecho_rio, :string
     add_column :escolas, :regiao_hidrografica, :string
     add_column :escolas, :comite_bacia, :string
     add_column :escolas, :lat, :string
  	 add_column :escolas, :long, :string
    end
end
