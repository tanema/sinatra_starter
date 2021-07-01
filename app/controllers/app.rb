class App < Base
  get '/' do
    erb :index
  end

  post '/' do
    @short_url = ShortUrl.shorten(params[:url])
    erb :index
  end

  get '/:code' do
    @short_url = ShortUrl.find_by(short_code: params[:code])
    if @short_url.nil?
      status 404
      erb :index
    else
      redirect @short_url.long_url
    end
  end
end
