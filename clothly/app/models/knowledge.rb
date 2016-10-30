class Knowledge < ActiveRecord::Base
  has_many :steps, dependent: :delete_all
  has_many :likes, dependent: :destroy
  belongs_to :user

  accepts_nested_attributes_for :steps, allow_destroy: true
  mount_uploader :image, ImageUploader

  def liked_by(user_id)
    likes.find_by(user_id: user_id)
  end
end
