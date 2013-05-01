class AddResponsavelToColeta < ActiveRecord::Migration
  def change
    add_column :coletas, :responsavel, :string
  end
end
