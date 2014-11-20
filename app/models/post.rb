class Post < ActiveRecord::Base
  belongs_to :user

  def created_date
    created_at.strftime("%m/%d/%Y")
  end

  def name_link
    user.full_name.gsub(' ', '')
  end
end
