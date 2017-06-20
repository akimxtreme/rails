class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :nickname
      t.string :first_name
      t.references :genders, foreign_key: true

      t.timestamps
    end
  end
end
