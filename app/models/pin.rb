class Pin < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image, 
						:styles => { :medium => "300x300>", :thumb => "100x100>" },
						  :storage => :s3
  						:s3_credentials => {
    						:bucket => ENV['AWS_BUCKET_NAME'],
						    :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
						    :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
						  }
	do_not_validate_attachment_file_type :image
	attr_accessor :image_file_name
	attr_accessor :image_content_type
	attr_accessor :image_file_size
	attr_accessor :image_updated_at
end
