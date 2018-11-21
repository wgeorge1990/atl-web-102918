class AuthorsController < Sinatra::Base
  set :views, 'app/views/authors'

  get '/authors' do
    @authors = Author.all
    erb :index
  end

  get '/authors/new' do
    erb :new
  end

  post '/authors' do
    @author = Author.create(name: params['name'])
    params['books'].each do |book|
      Book.create(title: book['title'],
                  snippet: book['snippet'],
                  author_id: @author.id)
    end
    redirect '/authors'
  end
end
