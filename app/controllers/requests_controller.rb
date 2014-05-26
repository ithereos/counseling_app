class RequestsController < ApplicationController

	def new

		@request = Request.new		

	end

	def create

		@request = Request.new(request_params)
    	if @request.save
    		uploaded_io = params[:request][:appendices]
  			File.open(Rails.root.join('app', 'public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
    			file.write(uploaded_io.read)
    		end
      		flash[:success] = "Solicitud guardada!"
     		redirect_to @request
    	else
      		render 'new'
    	end

	end

	def show

    	@request = Request.find(params[:id]) 
	
	end

	def destroy

		Request.find(params[:id]).destroy
    	flash[:success] = "Usuario eliminado satisfactoriamente."
    	redirect_to requests_url
		
	end

	def self.upload
 		uploaded_io = params[:request][:appendices]
  		File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
    		file.write(uploaded_io.read)
  		end
	end

	def index

		# @requests = Request.paginate(page: params[:page], per_page: 10)
		
    	@requests = Request.paginate(page: params[:page], per_page: 10)
  
		
	end

	private

		def request_params
	      params.require(:request).permit(:requester_id, :requested_id, :details, :pleas)
	    end



end
