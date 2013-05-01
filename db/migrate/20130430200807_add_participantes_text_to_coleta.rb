class AddParticipantesTextToEscola < ActiveRecord::Migration
  def change
    remove_column :escolas, :participantes, :text
    add_column :coletas, :participantes, :text
  end
end
