Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
     
      jsonapi_resources :quizzes
      jsonapi_resources :questions
      jsonapi_resources :answer_sets
      jsonapi_resources :answers do
        jsonapi_relationships
      end
      put '/assign_grade/:id', to: 'answer_sets#assign_grade'
    end
  end
end
