class Restaurant < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	searchkick #run  rake searchkick:reindex CLASS=Restaurant after this
	has_many :reviews
	validates :name, :address, :phone, :website, :image, presence: true
	validates :phone, format: {
		with: /\A\(\d{3}\) \d{3}-\d{4}\z/,
		message: "must be in the format (123) 456-7890"
	}
	validates :website, format: {
		with: /\Ahttps?:\/\/.*\z/,
		message: "must start with http:// or https://"
	}
	validates :address, format: {
		with: /\d+[^,]+,[^,]+, [A-Z]{2} \d{5}\z/,
		message: "must be in format 350 swangs avenue, Kampala, KL 00256"
	}
end
