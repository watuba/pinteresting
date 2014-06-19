class Pin < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	do_not_validate_attachment_file_type :image
	attr_accessor :photo_file_name
	attr_accessor :photo_content_type
	attr_accessor :photo_file_size
	attr_accessor :photo_updated_at
end
