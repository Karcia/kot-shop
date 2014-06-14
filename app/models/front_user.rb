class FrontUser < ActiveRecord::Base
  attr_protected :id
  mount_uploader :image, ImageUploader
end
