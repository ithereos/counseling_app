class AddIdnumberToClients < ActiveRecord::Migration
  def change
    add_column :clients, :idnumber, :string
  end
end
