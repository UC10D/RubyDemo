#Action View
1.详细学习
https://ruby-china.github.io/rails-guides/action_view_overview.html#localized-views
2.相关命令行等   

init 初始化操作

1.$ rails new blog
2.$ rails server
3.$ rails generate controller Welcome index
4.config/routes.rb  init index view

Rails.application.routes.draw do
  get 'welcome/index'
 
  root 'welcome#index'
end


view
1.config/routes.rb
resources :articles

2.$ bin/rails routes
3.$ rails generate controller Articles index

4.报错$ rails db:migrate RAILS_ENV=development

5 root  用#