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

  post '/comedians' do
  comedian = Comedian.create(params[:comedian])
  redirect "comedians"
end
end
