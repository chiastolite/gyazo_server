class Screenshot < ActiveRecord::Base
  extend FriendlyId
  has_attached_file :image, styles: { thumb: '100x100>' }, default_url: '/images/:style/missing.png',
    path: ':rails_root/public/sys_img/:id_sha1/:style.png',
    url:  "#{ActionController::Base.relative_url_root}/sys_img/:id_sha1/:style.png"
  friendly_id :image, use: :slugged
end
