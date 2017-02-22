class CreateLazies < ActiveRecord::Migration[5.0]
  def change
    create_table :lazies do |t|
      t.column :name, :string
      t.column :points, :integer
    end
  end
end
