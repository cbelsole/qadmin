class InitialMigration < ActiveRecord::Migration
  def change
    create_table :basic_models do |t|
      t.string :name
      t.string :type
      t.timestamps null: false
    end

    create_table :items do |t|
      t.string :name
      t.string :type
      t.timestamps null: false
    end
  end
end
