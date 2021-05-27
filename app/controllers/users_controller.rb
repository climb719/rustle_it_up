class UsersController < ApplicationController

    def new
        @user = User.new
    end 

    def create
        @user = User.new(user_params)
        if @user.save
            #log them in 
            session[:user_id] = @user.id 
            #redirect to show page
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    def show
        @user = User.find_by_id(params[:id]) #returns nil if doesn't find, .find returns throws an error if doesn't find
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :password)
    end
end
