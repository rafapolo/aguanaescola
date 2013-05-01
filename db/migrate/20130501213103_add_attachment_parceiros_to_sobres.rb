class AddAttachmentParceirosToSobres < ActiveRecord::Migration
  def self.up
    change_table :sobres do |t|
      t.attachment :parceiros
    end
  end

  def self.down
    drop_attached_file :sobres, :parceiros
  end
end
