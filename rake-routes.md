                  Prefix Verb   URI Pattern                                Controller#Action
             rails_admin        /admin                                     RailsAdmin::Engine
                    root GET    /                                          home#index
             topic_posts GET    /topics/:topic_id/posts(.:format)          posts#index
                         POST   /topics/:topic_id/posts(.:format)          posts#create
          new_topic_post GET    /topics/:topic_id/posts/new(.:format)      posts#new
         edit_topic_post GET    /topics/:topic_id/posts/:id/edit(.:format) posts#edit
              topic_post GET    /topics/:topic_id/posts/:id(.:format)      posts#show
                         PATCH  /topics/:topic_id/posts/:id(.:format)      posts#update
                         PUT    /topics/:topic_id/posts/:id(.:format)      posts#update
                         DELETE /topics/:topic_id/posts/:id(.:format)      posts#destroy
                  topics GET    /topics(.:format)                          topics#index
                         POST   /topics(.:format)                          topics#create
               new_topic GET    /topics/new(.:format)                      topics#new
              edit_topic GET    /topics/:id/edit(.:format)                 topics#edit
                   topic GET    /topics/:id(.:format)                      topics#show
                         PATCH  /topics/:id(.:format)                      topics#update
                         PUT    /topics/:id(.:format)                      topics#update
                         DELETE /topics/:id(.:format)                      topics#destroy
        new_user_session GET    /users/sign_in(.:format)                   devise/sessions#new
            user_session POST   /users/sign_in(.:format)                   devise/sessions#create
    destroy_user_session DELETE /users/sign_out(.:format)                  devise/sessions#destroy
           user_password POST   /users/password(.:format)                  devise/passwords#create
       new_user_password GET    /users/password/new(.:format)              devise/passwords#new
      edit_user_password GET    /users/password/edit(.:format)             devise/passwords#edit
                         PATCH  /users/password(.:format)                  devise/passwords#update
                         PUT    /users/password(.:format)                  devise/passwords#update
cancel_user_registration GET    /users/cancel(.:format)                    devise/registrations#cancel
       user_registration POST   /users(.:format)                           devise/registrations#create
   new_user_registration GET    /users/sign_up(.:format)                   devise/registrations#new
  edit_user_registration GET    /users/edit(.:format)                      devise/registrations#edit
                         PATCH  /users(.:format)                           devise/registrations#update
                         PUT    /users(.:format)                           devise/registrations#update
                         DELETE /users(.:format)                           devise/registrations#destroy
      users_edit_profile GET    /users/edit_profile(.:format)              users#edit_profile
              users_edit GET    /users/edit(.:format)                      users#edit
    users_update_profile POST   /users/update_profile(.:format)            users#update_profile

Routes for RailsAdmin::Engine:
  dashboard GET         /                                      rails_admin/main#dashboard
      index GET|POST    /:model_name(.:format)                 rails_admin/main#index
        new GET|POST    /:model_name/new(.:format)             rails_admin/main#new
     export GET|POST    /:model_name/export(.:format)          rails_admin/main#export
bulk_delete POST|DELETE /:model_name/bulk_delete(.:format)     rails_admin/main#bulk_delete
bulk_action POST        /:model_name/bulk_action(.:format)     rails_admin/main#bulk_action
       show GET         /:model_name/:id(.:format)             rails_admin/main#show
       edit GET|PUT     /:model_name/:id/edit(.:format)        rails_admin/main#edit
     delete GET|DELETE  /:model_name/:id/delete(.:format)      rails_admin/main#delete
show_in_app GET         /:model_name/:id/show_in_app(.:format) rails_admin/main#show_in_app
