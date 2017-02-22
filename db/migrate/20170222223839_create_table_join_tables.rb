class CreateTableJoinTables < ActiveRecord::Migration[5.0]
  def change
    create_table :activities_users, id: false do |t|
      t.belongs_to :activity, index: true
      t.belongs_to :user, index: true
    end

    create_table :foods_users, id: false do |t|
      t.belongs_to :food, index: true
      t.belongs_to :user, index: true
    end

    create_table :lazies_users, id: false do |t|
      t.belongs_to :lazy, index: true
      t.belongs_to :user, index: true
    end
  end
end
