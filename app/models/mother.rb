class Mother < ApplicationRecord
  has_one :baby
  belongs_to :user
end
