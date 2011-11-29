class SocialWorkPhoto < ActiveRecord::Base
  belongs_to :social_work
  has_attached_file :data
  
  validates_attachment_size :data, :less_than => 500.kilobytes
  validates_attachment_content_type :data, :content_type => ['image/jpeg', 'image/png']
end
