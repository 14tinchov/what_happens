class Audio < ActiveRecord::Base
  belongs_to :user
  has_attached_file :sound
  validates_attachment_presence :sound
  validates_attachment_content_type :sound, :content_type => /.*/
end
