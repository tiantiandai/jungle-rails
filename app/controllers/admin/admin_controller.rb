class AdminController < ApplicationController
    http_basic_authenticate_with :name => ENV['BASIC_AUTHEN_USERNAME'], 
                                 :password => ENV['BASIC_AUTHEN_PASSWORD']
end