class CreateEvents < ActiveRecord::Migration
  def change
  	create_table :events do |t|
  		t.string :name, :null => false
  		t.date :date, :null => false
  		t.time :time
  		t.string :category, :null => false
  		t.integer :creator_id, :null => false

  		t.timestamps(null: false)
  	end
  end
end
