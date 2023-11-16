Rails.application.routes.draw do
  # get '/' => 'homes#top'
  # topページにリンク
  root to: "homes#top"
  # get 'books'と記述することでnewに飛ばしている。path名はbooks_pathとなる
 
  # # id番目の投稿を表示 
  # get 'books' => 'books#index'
  # get 'edit' => 'books#edit'
  # post 'books' => 'books#create' 
  # get 'books/:id' => 'books#show', as: 'book'
  # get 'back' => 'books#index'
  # get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  # patch 'books/:id' => 'books#update', as: 'update_book'
  # delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  # except は例外を設定できる
  resources :books
end
