class AddIndexToClientsIdnumber < ActiveRecord::Migration
  def change
  	add_index :clients, :idnumber, unique: true
  end
end
