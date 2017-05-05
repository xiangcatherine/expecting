class AddUsersToMothers < ActiveRecord::Migration[5.0]
  def change
    add_reference :mothers, :user, foreign_key: true
  end
end
