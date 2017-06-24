class PropertyAttachment < ActiveRecord::Base
   mount_uploader :avatar, AvatarUploader
   belongs_to :property
end
