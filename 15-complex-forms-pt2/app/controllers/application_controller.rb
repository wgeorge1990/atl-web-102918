class ApplicationController < Sinatra::Base
  set :views, 'app/views'
  set :method_override, true

  get '/' do
    erb :home
  end

  get '/books' do
    @books = Book.all
    erb :index
  end

  get '/books/new' do
    erb :new
  end

  post '/books' do
    @book = Book.create(params)
    redirect "/books/#{@book.id}"
  end

  get '/books/:id' do
    id = params['id']
    @book = Book.find(id)
    erb :show
  end

  get '/books/:id/edit' do
    id = params['id']
    @book = Book.find(id)
    erb :edit
  end

  put '/books/:id' do
    id = params['id']
    @book = Book.find(id)
    @book.update(title: params['title'],
                 author: params['author'],
                 snippet: params['snippet'])
    redirect "/books/#{@book.id}"
  end
end
