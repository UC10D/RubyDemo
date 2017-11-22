class Api::V1::UsersController < ApplicationController
    def index
        @users = User.all
        render json:@users
    end

    def create
        @user = User.new(user_params)
        # @user[:activated] = DateTime.now
        @user['activated'] = DateTime.now
        if @user.save then
            p "succed: #{@user[:activated]}" 
        end
        render json:{"code":"200"}
    end

    def show
        @user = User.find(params[:id])
        render json:@user
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        render json:@user
    end

    def destroy
        @user = User.find(params[:id])
        if @user.destroy then
            render json:{"code":"200"}
        end
    end

    # 数据转化成对象
    private
    def user_params
      params.require(:user).permit(:email, :name, :admin)
    end
   
end
