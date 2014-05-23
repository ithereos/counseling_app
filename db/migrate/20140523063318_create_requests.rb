class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|



      t.integer :requester_id
      t.integer :requested_id
      t.string :details


      t.timestamps
    end
    add_index :requests, :requester_id
    add_index :requests, :requested_id
  end
end
