class Comic < ActiveRecord::Base
  validates :title, presence: true
  validates :img_url, presence: true
end
