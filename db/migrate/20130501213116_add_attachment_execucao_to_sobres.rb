class AddAttachmentExecucaoToSobres < ActiveRecord::Migration
  def self.up
    change_table :sobres do |t|
      t.attachment :execucao
    end
  end

  def self.down
    drop_attached_file :sobres, :execucao
  end
end
