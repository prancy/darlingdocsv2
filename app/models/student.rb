class Student < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :parent, class_name: 'User'
    has_many :reports, dependent: :destroy
end
