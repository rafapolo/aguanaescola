class AddParticipantesTextToColeta < ActiveRecord::Migration
  def change
    add_column :coletas, :participantes, :text
  end
end
