class CreateBananas < ActiveRecord::Migration[5.0]
  def change
    create_table :bananas do |t|
      t.string :region

      t.timestamps
    end
  end
end
