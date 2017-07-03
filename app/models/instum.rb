class Instum < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader

  validates :image, presence: true
  validates :content, presence: true
  validate :check_image_dimensions

  def check_image_dimensions
    #320 240
   if image.present?
     geometry[:width] >320 || geometry[:height] > 240
     a = geometry[:img].resize "10x10>"
     a.flip
    #  errors.add :image, '100x100ピクセル以上のサイズの画像をアップロードしてください'
   end
 end
 # ------------------------------------------------------------------
 # Public Instance Methods
 # ------------------------------------------------------------------
 def geometry
   @geometry ||= _geometry
 end
 private
 # ------------------------------------------------------------------
 # Private Instance Methods
 # ------------------------------------------------------------------
 def _geometry
   if image.file and File.exists?(image.file.file)
     img = MiniMagick::Image.open(image.file.file)
    #  img = ::Magick::Image::read(image.file.file).first
     { width: img.width, height: img.height, img: img }
    #  MiniMagick::Image.open
    #img = MiniMagick::Image.open(image.file.file)
   end
 end
end
