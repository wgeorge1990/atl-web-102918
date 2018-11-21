class BooksController < Sinatra::Base
  set :views, 'app/views/books'
  set :method_override, true

  # index route
  get '/books' do
    @books = Book.all
    erb :index
  end

  # new route
  get '/books/new' do
    erb :new
  end

  # create route
  post '/books' do
    @book = Book.create(params)
    redirect "/books/#{@book.id}"
  end

  # show route
  get '/books/:id' do
    id = params['id']
    @book = Book.find(id)
    erb :show
  end

  # edit route
  get '/books/:id/edit' do
    id = params['id']
    @book = Book.find(id)
    erb :edit
  end

  # update route
  put '/books/:id' do
    id = params['id']
    @book = Book.find(id)
    @book.update(title: params['title'],
                 author: params['author'],
                 snippet: params['snippet'])
    redirect "/books/#{@book.id}"
  end

end
