class ChangeMunicipioStringToMunicipioId < ActiveRecord::Migration
  def change
  	remove_column :escolas, :municipio
  	add_column :escolas, :cidade_id, :integer
  end
end
