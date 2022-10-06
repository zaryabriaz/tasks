module Api
  module V1
    class UsersController < ApplicationController
	    def index
        @users = User.all
        render json: @users
	    end

	    def show
        @user = User.find(params[:id])
        render json: @user
	    end

	    def create
        @user = User.create(
          name: params[:name],
          email: params[:email],
          address: params[:address]
        )
        render json: @user
	    end

	    def update
        @user = User.find(params[:id])
        @user.update(
          name: params[:name],
          email: params[:email],
          address: params[:address]
        )
        render json: @user
	    end

	    def destroy
        @user = User.find(params[:id])
        response = 	if @user.destroy
        							{'user': 'successfully destroyed!'}
	        					else
        							{'user': 'Error while destroying'}
	        					end

        render json: response
	    end
    end
  end
end