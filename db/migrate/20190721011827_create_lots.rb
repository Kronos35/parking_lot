class CreateLots < ActiveRecord::Migration[5.2]
  def change
    create_table :lots do |t|
      t.string      :type
      t.string      :name
      t.references  :organization
      t.timestamps
    end
  end
end
