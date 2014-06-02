class Product < ActiveRecord::Base
  attr_protected :id

  mount_uploader :image, ImageUploader

  def self.recreate_all_images 
    Product.all.each do |p|
      if p.image.present?
        p.image.cache_stored_file!
        p.image.recreate_versions!
        puts "recreating photo #{p.id}: #{p.save}"
      end
    end
    return 'done'
  end
end