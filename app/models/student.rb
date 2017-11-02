class Student < ApplicationRecord
    belongs_to :user
    belongs_to :teacher, optional: true
    has_many :reports, dependent: :destroy

    scope :available, -> {where(teacher_id: nil)}

end
