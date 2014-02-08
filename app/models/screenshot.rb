class Screenshot < ActiveRecord::Base
  extend FriendlyId

  belongs_to :user

  has_attached_file :image, styles: { thumb: '100x100>' }, default_url: '/images/:style/missing.png',
    path: ':rails_root/public/screenshots/:style/:id_sha1.png',
    url:  "#{ActionController::Base.relative_url_root}/screenshots/:style/:id_sha1.png"
  friendly_id :image_sha1, use: :slugged

  def image_sha1
    File.basename(image.url[/(.*)\?.*/, 1], '.png')
  end
end
