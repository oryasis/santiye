class CreateWorksites < ActiveRecord::Migration
  def change
    create_table :worksites do |t|
      t.string :name
      t.string :location
      t.date :start_date
      t.date :end_date
      t.decimal :budget

      t.timestamps null: false
    end
  end
end
