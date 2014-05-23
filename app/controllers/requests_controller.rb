class RequestsController < ApplicationController

	def new

		@request = Request.new		
	end

	def create

		@request = Request.new(request_params)
    	if @request.save
      		flash[:success] = "Solicitud guardada!"
     		redirect_to @request
    	else
      		render 'new'
    	end

	end

	def show

    	@request = Request.find(params[:id]) 
	
	end

	def index
		@requests = Request.paginate(page: params[:page], per_page: 10)
		
	end

	private

		def request_params
	      params.require(:request).permit(:requester_id, :requested_id, :details)
	    end



end
