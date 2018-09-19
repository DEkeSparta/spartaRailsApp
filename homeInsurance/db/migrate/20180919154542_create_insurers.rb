class CreateInsurers < ActiveRecord::Migration[5.2]
  def change
    create_table :insurers do |t|
      t.string :name
      t.string :slogan
      t.string :location

      t.timestamps
    end
  end
end
