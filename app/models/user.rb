class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true, uniqueness: true
    has_attached_file :image, styles: { medium: "500x500>", thumb: "250x250>" }, presence: true, styles: { original: {convert_options: '-auto-orient'} }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
    has_one :student
    accepts_nested_attributes_for :student, allow_destroy: true
   end