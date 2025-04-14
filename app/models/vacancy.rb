class Vacancy < ApplicationRecord
  belongs_to :company
  has_many :applicants, dependent: :destroy, inverse_of: :vacancy

  validates :title, presence: true
  validates :location, presence: true
  validates :description, presence: true,  length: { minimum: 10, maximum: 1000 }
  validates :company, presence: true
  validates :requeriments, presence: true
  validates :salary, presence: true
  validates :available, presence: true
end
