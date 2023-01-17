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
            render json: "Valid email id. User exists already!" 
        end
        
    end
end
