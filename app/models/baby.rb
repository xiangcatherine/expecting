class Baby < ApplicationRecord
  belongs_to :user

  validates :age, presence: true

  def current_age
    created_date = created_at.to_date
    current_date = Date.today

    days = (current_date - created_date).round
    weeks = (days / 7.0).round

    age + weeks
  end
end
