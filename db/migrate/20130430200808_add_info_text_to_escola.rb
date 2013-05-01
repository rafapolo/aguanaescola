class AddInfoTextToEscola < ActiveRecord::Migration
  def change
    add_column :escolas, :info, :text
  end
end
