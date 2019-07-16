class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.date :date
      t.string :vitaminCUsed
      t.string :vitaminDUsed
      t.string :ironUsed
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
