class Company < ApplicationRecord
    validates :name, presence: true
    has_many :claims, dependent: :destroy
end
