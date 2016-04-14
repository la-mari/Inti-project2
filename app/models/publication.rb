class Publication < ActiveRecord::Base
	belongs_to :user
	belongs_to :topic
	mount_uploader :file, FileUploader
end
