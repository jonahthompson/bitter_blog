              Prefix Verb   URI Pattern                                       Controller#Action
               users GET    /users(.:format)                                  users#index
                     POST   /users(.:format)                                  users#create
            new_user GET    /users/new(.:format)                              users#new
           edit_user GET    /users/:id/edit(.:format)                         users#edit
                user GET    /users/:id(.:format)                              users#show
                     PATCH  /users/:id(.:format)                              users#update
                     PUT    /users/:id(.:format)                              users#update
                     DELETE /users/:id(.:format)                              users#destroy
               posts GET    /posts(.:format)                                  posts#index
                     POST   /posts(.:format)                                  posts#create
            new_post GET    /posts/new(.:format)                              posts#new
           edit_post GET    /posts/:id/edit(.:format)                         posts#edit
                post GET    /posts/:id(.:format)                              posts#show
                     PATCH  /posts/:id(.:format)                              posts#update
                     PUT    /posts/:id(.:format)                              posts#update
                     DELETE /posts/:id(.:format)                              posts#destroy
            comments GET    /comments(.:format)                               comments#index
                     POST   /comments(.:format)                               comments#create
         new_comment GET    /comments/new(.:format)                           comments#new
        edit_comment GET    /comments/:id/edit(.:format)                      comments#edit
             comment GET    /comments/:id(.:format)                           comments#show
                     PATCH  /comments/:id(.:format)                           comments#update
                     PUT    /comments/:id(.:format)                           comments#update
                     DELETE /comments/:id(.:format)                           comments#destroy
          home_index GET    /home(.:format)                                   home#index
            sessions POST   /sessions(.:format)                               sessions#create
         new_session GET    /sessions/new(.:format)                           sessions#new
              logout DELETE /sessions(.:format)                               sessions#destroy
       post_comments GET    /posts/:post_id/comments(.:format)                comments#index
                     POST   /posts/:post_id/comments(.:format)                comments#create
    new_post_comment GET    /posts/:post_id/comments/new(.:format)            comments#new
   edit_post_comment GET    /posts/:post_id/comments/:id/edit(.:format)       comments#edit
        post_comment GET    /posts/:post_id/comments/:id(.:format)            comments#show
                     PATCH  /posts/:post_id/comments/:id(.:format)            comments#update
                     PUT    /posts/:post_id/comments/:id(.:format)            comments#update
                     DELETE /posts/:post_id/comments/:id(.:format)            comments#destroy
                     GET    /posts(.:format)                                  posts#index
                     POST   /posts(.:format)                                  posts#create
                     GET    /posts/new(.:format)                              posts#new
                     GET    /posts/:id/edit(.:format)                         posts#edit
                     GET    /posts/:id(.:format)                              posts#show
                     PATCH  /posts/:id(.:format)                              posts#update
                     PUT    /posts/:id(.:format)                              posts#update
                     DELETE /posts/:id(.:format)                              posts#destroy
    comment_comments GET    /comments/:comment_id/comments(.:format)          comments#index
                     POST   /comments/:comment_id/comments(.:format)          comments#create
 new_comment_comment GET    /comments/:comment_id/comments/new(.:format)      comments#new
edit_comment_comment GET    /comments/:comment_id/comments/:id/edit(.:format) comments#edit
     comment_comment GET    /comments/:comment_id/comments/:id(.:format)      comments#show
                     PATCH  /comments/:comment_id/comments/:id(.:format)      comments#update
                     PUT    /comments/:comment_id/comments/:id(.:format)      comments#update
                     DELETE /comments/:comment_id/comments/:id(.:format)      comments#destroy
                     GET    /comments(.:format)                               comments#index
                     POST   /comments(.:format)                               comments#create
                     GET    /comments/new(.:format)                           comments#new
                     GET    /comments/:id/edit(.:format)                      comments#edit
                     GET    /comments/:id(.:format)                           comments#show
                     PATCH  /comments/:id(.:format)                           comments#update
                     PUT    /comments/:id(.:format)                           comments#update
                     DELETE /comments/:id(.:format)                           comments#destroy
