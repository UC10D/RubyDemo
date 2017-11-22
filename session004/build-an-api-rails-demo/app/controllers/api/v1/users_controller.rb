class Api::V1::UsersController < ApplicationController
    def show
        @user = User.find(params[:id])

        render json:@user
    
        # 原文使用 Api::V1::UserSerializer
        # 我们现在使用 app/views/api/v1/users/show.json.jbuilder
        # render(json: Api::V1::UserSerializer.new(user).to_json)
    end

    def index
        @users = User.all

        render json:@users
    end
end
