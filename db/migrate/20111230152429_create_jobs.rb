class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title, :null => false
      t.text :description
      t.date :started_at, :null => false
      t.date :ended_at

      t.timestamps
    end
  end
end
