class ApplicationController < Sinatra::Base
  set :views, 'app/views'

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

  get '/books/:id' do
    id = params['id']
    @book = Book.find(id)
    erb :show
  end

  post '/books' do
    @book = Book.create(params)
    redirect "/books/#{@book.id}"
  end
end
