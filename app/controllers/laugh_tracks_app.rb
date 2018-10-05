class LaughTracksApp < Sinatra::Base
  get '/comedians' do
    @comedians = Comedian.all
    erb :"comedians/index"
  end
  #
  # get '/comedians/new' do
  #   erb :"comedians/new"
  # end
  #
  # get '/comedians/:id' do
  #   @song = Comedian.find(params[:id])
  #   erb :"comedians/show"
  # end
  #
  # post '/comedians' do
  #   song = Comedian.create(params[:song])
  #   redirect "/comedians/#{song.id}"
  # end
end
