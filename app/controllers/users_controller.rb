class UsersController < ApplicationController
    skip_before_action :authorize, only: [:create, :most_reviews]

    def index 
        users = User.all
        render json: users
    end

    def create 
        user = User.create!(user_params)
        session[:user_id] = user.id 
        render json: user, status: 201
    end

    def show 
        render json: @current_user
    end

    def most_reviews
        users = User.all
        sorted_users = users.sort {|u1,u2| u1.reviews.length <=> u2.reviews.length }.reverse
        # i need to take only the top n users
        top_users = sorted_users[0..params[:n].to_i-1]
        render json: top_users
    end
    private 

    def user_params 
        params.permit(:username, :password, :password_confirmation, :avatar_url)
    end

end
