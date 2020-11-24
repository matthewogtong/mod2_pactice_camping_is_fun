class Signup < ApplicationRecord
    belongs_to :activity
    belongs_to :camper

    validates :time , presence: true
end