class ApplicationController < ActionController::Base
    def home 
        render html: "Welcome to User login Page with hashed password"
    end
end
