class ChangeDetailsFormatInRequests < ActiveRecord::Migration
  def change
  	change_column :requests, :details, :text
  end
end
