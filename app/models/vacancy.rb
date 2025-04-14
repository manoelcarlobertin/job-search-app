class Vacancy < ApplicationRecord
  belongs_to :company
  has_many :applicants, dependent: :destroy, inverse_of: :vacancy
end
