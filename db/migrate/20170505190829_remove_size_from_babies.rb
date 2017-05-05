class RemoveSizeFromBabies < ActiveRecord::Migration[5.0]
  def change
    remove_column :babies, :size, :string
  end
end
