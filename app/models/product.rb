class Product < ActiveRecord::Base
  attr_protected :id
  #attr_accessible :description, :image, :name, :avatar, :image_cache

  mount_uploader :avatar, AvatarUploader
end

