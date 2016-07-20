class CreateEvents < ActiveRecord::Migration
  def change
  	create_table :events do |t|
  		t.string :name, :null => false
  		t.datetime :date,
  		t.string :category, :null => false
  		t.integer :creator_id, :null => false

  		t.timestamps(null: false)
  	end
  end
end
