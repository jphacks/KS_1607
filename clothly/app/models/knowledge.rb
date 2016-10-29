class Knowledge < ActiveRecord::Base
  has_many :steps, dependent: :delete_all

  accepts_nested_attributes_for :steps, allow_destroy: true
  mount_uploader :image, ImageUploader
end
