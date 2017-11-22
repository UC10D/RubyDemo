# Rails API


# 命令行，流程
1.rails new my_api
(Base -> API)
2.配置路由

namespace :api do
namespace :v1 do
resources :users, only: [:index, :create, :show, :update, :destroy]
end
end

3.bundle exe rails g controller api/v1/users --no-assets

4.bundle exe rails g model User
5.bundle exe rake db:migrate
6.bundle exe rake db:seed
7.bundle exe rake routes
8.UsersController add method
(增，删，改，查)


# 参考资料
1.https://github.com/rails-api/rails-api
2.http://www.jianshu.com/p/f00b5f872cad
3.https://www.shiyanlou.com/courses/103
4.https://ruby-china.org/topics/25822