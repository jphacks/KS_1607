class Like < ActiveRecord::Base
  belongs_to :knowledge, counter_cache: :likes_count
  belongs_to :user
end
