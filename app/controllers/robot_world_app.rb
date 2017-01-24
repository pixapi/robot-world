require_relative '../models/robot.rb'

class RobotWorldApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)

  get '/' do
    erb :main
  end


  get '/robots' do
    @robots = Robot.all
    erb :index
  end
end
