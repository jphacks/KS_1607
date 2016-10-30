class Step < ActiveRecord::Base
  belongs_to :knowledge
  mount_uploader :sub_image, SubImageUploader
end
