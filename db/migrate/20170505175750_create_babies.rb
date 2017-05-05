class CreateBabies < ActiveRecord::Migration[5.0]
  def change
    create_table :babies do |t|
      t.integer :age
      t.string :size

      t.timestamps
    end
  end
end
