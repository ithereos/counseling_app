class AddColumnsToClients < ActiveRecord::Migration
  def change
  	add_column :clients, :estrato, :integer
  	add_column :clients, :phone_number, :string
  	
  	add_column :clients, :occupation, :string
  	add_column :clients, :address, :string
  end
end
