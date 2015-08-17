                  Prefix Verb   URI Pattern                                Controller#Action
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
