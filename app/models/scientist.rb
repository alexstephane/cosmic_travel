class Scientist < ApplicationRecord
    validates :name, :field_of_study, presence: true

    validates_uniqueness_of :name

    has_many :missions
    has_many :planets, through: :missions


end
