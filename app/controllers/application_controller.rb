require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/" do
      erb :super_hero
    end

    post "/teams" do
      @team = params[:team][:name]
      @motto = params[:team][:motto]
      @members = params[:team][:hero]
      erb :team
    end


end
