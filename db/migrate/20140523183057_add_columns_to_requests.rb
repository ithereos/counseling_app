class AddColumnsToRequests < ActiveRecord::Migration
  def change
  	add_column :requests, :pleas, :text
  	add_column :requests, :appendices, :binary
  	add_column :requests, :proofs, :binary
  end
end
