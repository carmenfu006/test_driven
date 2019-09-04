class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.references :contact, foreign_key: true
      t.string :name
      t.string :status

      t.timestamps
    end
  end
end
