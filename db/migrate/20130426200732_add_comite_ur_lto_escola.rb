class AddComiteUrLtoEscola < ActiveRecord::Migration
  def change
	add_column :escolas, :comite_bacia_url, :string
  end
end
