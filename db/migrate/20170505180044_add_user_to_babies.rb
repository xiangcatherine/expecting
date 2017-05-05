class AddUserToBabies < ActiveRecord::Migration[5.0]
  def change
    add_reference :babies, :user, foreign_key: true
  end
end
