require 'bcrypt'
class LoginController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index 
        render html: "Hello from Login Page of User account"
    end
    def create 
        user_val = Useraccount.find_by('email': params[:email])
        if user_val.nil? 
            render json: "Email is not registered. Please create new useraccount!" 
        else 
            if (user_val.authenticate(params[:password]))
              render json: "User exist! Login successfull!" 
            else 
                render json: "Wrong password!" 
            end
        end
        
    end
end
