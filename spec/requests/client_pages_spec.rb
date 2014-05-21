require 'spec_helper'

describe "Client pages" do 

	subject { page }

	describe "index page" do
		before { visit clients_path }

		it { should have_title(full_title('Clientes')) }
		it { should have_content('Clientes registrados') }


	end

	describe "show page" do

		let(:client) { FactoryGirl.create(:client) }
		before { visit client_path(client) }


		it { should have_title(full_title('Información del cliente')) }
		it { should have_content('Perfil') }

	end

	describe "new page" do
		before { visit new_client_path }

		it { should have_title(full_title('Nuevo cliente')) }
		it { should have_content('Nuevo cliente') }



	end

	




end





