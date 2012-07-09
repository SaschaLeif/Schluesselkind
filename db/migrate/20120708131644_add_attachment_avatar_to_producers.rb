class AddAttachmentAvatarToProducers < ActiveRecord::Migration
  def self.up
    change_table :producers do |t|
      t.has_attached_file :avatar
    end
  end

  def self.down
    drop_attached_file :producers, :avatar
  end
end
