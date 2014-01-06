class Screenshot < ActiveRecord::Base
  has_attached_file :image, styles: { thumb: '100x100>' }, default_url: '/images/:style/missing.png'
end
