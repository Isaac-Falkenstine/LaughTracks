class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    comedians = Comedian.assess_params(params)
    specials  = comedians.find_specials
    erb :"comedians/index",
        locals: { comedians: comedians,
                  specials:  specials   }
  end


  get '/comedians/new' do
    erb :"comedians/new", :layout => :layout
  end
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
