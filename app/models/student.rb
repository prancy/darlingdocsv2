class Student < ApplicationRecord
    has_many :reports, dependent: :destroy
end
