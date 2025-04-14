class Company < ApplicationRecord
  has_many :vacancies, dependent: :destroy, inverse_of: :company

  validates :name, presence: true
  validates :name, uniqueness: { case_sensitive: false }
  validates :description, presence: true
  validates :description, length: { minimum: 3, maximum: 1000 }
end
