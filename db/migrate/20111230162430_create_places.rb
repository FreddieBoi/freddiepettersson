class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :title, :null => false
      t.string :location, :null => false
      t.string :website
      t.references :job

      t.timestamps
    end
  end
end
