class Company < ApplicationRecord
  has_many :vacancies, dependent: :destroy, inverse_of: :company
end
