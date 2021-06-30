class Base < Sinatra::Base
  register Sinatra::Contrib
  configure :development do
    register Sinatra::Reloader
    enable :logging
  end

  helpers ApplicationHelper

  set :public_folder, File.expand_path('public', __FILE__)
  set :views, File.expand_path('../views', __dir__)

  before do
    @title = 'My Service'
    @name = "World"
  end

  not_found do
    content_type :json
    { status: 404, message: "Resource not found." }.to_json
  end
end
