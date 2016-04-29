module Sinatra
  class Server < Sinatra::Base

    get '/' do
      erb :topic
    end

  end
end
