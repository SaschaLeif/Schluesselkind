require 'paperclip'

class Producer < ActiveRecord::Base
  include Paperclip::Glue
  attr_accessible :brand_id, :description, :avatar
  #Paperclip
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>"}
  # has_attached_file :avatar, :url => "/avatars/users/:id/:basename.:extension", :path => ":rails_root/public/avatars/users/:id/:basename.:extension"
  belongs_to :brand
end
