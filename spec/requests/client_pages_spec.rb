require 'spec_helper'

describe "Client pages" do 

	subject { page }

	describe "index page" do
		before { visit clients_path }

		it { should have_title(full_title('Clients')) }
		it { should have_content('Registered clients') }


	end

	describe "show page" do

	end

	describe "create page" do

	end

	describe "index page" do

	end
	
end





