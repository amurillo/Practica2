require 'sinatra/base'

class Myapp < Sinatra::Base
  get '/' do
    erb :index
  end
	post "/thankyou" do
        @name = params["name"]
        @email = params["email"]
		@comentario = params["coment"]
        erb :thankyou
    end
    get "/form" do
        erb :form
    end
	
	  # start the server if ruby file executed directly
  run! if app_file == $0
end
