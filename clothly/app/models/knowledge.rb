class Knowledge < ActiveRecord::Base
  has_many :steps, dependent: :delete_all
  belongs_to :user

  accepts_nested_attributes_for :steps, allow_destroy: true
  mount_uploader :image, ImageUploader
end
