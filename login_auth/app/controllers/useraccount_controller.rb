require 'bcrypt'
class UseraccountController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index 
        # current_login = Useraccount.find_by_id(session[:current_login])
        # render json: current_login
        render json: Useraccount.all
    end 
    def show 
        v = Useraccount.find(params[:id])
        render json: v
    end
    def create 
        v = !params[:name].empty? and !params[:email].empty? and params[:password].empty?
        if v 
            d = Useraccount.create(
                'name': params[:name],
                'email': params[:email],
                'password': params[:password]
            )
            puts d 
            render json: "Data Added Successfully"
        else 
            render json: "Data not added"
        end
    end
end
