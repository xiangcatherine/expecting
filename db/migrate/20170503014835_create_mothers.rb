class CreateMothers < ActiveRecord::Migration[5.0]
  def change
    create_table :mothers do |t|
      t.string :given_name, null: false
      t.string :family_name

      t.timestamps
    end
  end
end
