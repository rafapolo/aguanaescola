class AddCidadeToEscola < ActiveRecord::Migration
  def change
  	add_column :escolas, :cidade_id, :integer
  end
end
