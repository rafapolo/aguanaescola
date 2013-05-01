class ChangeMunicipioStringToMunicipioId < ActiveRecord::Migration
  def change
  	remove_column :escolas, :municipio
  end
end
