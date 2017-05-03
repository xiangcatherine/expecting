class AddMotherToBaby < ActiveRecord::Migration[5.0]
  def change
    add_reference :babies, :mother, foreign_key: true
  end
end
