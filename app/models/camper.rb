class Camper < ApplicationRecord
    has_many :signups
    has_many :activities, through: :signups

    validates :name, presence: true, uniqueness: true
    validates :age, numericality: { only_integer: true, greater_than: 7, less_than: 19 }
end
