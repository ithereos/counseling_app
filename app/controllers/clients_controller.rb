class ClientsController < ApplicationController

  def index
    @clients = Client.paginate(page: params[:page], per_page: 10)
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      flash[:success] = "Cliente guardado!"
      redirect_to @client
    else
      render 'new'
    end
  end

  def destroy
    Client.find(params[:id]).destroy
    flash[:success] = "User deleted."
    redirect_to clients_url
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def show
    @client = Client.find(params[:id])
  end

  def requesting?(other_client)
    requests.find_by(requested_id: other_user.id)
  end

  # def follow!(other_user)
  #   requests.create!(requested_id: other_user.id)
  # end

  private

    def client_params
      params.require(:client).permit(:name, :lastname, :email, :age,
                                   :idnumber)
    end

end
