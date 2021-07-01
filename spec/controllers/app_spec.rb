require_relative '../spec_helper'

describe "App" do
  let(:app) { App.new }

  it "should allow accessing the home page" do
    get '/'
    expect(last_response).to be_ok
  end

  it "should allow creating a short url" do
    post '/', {url: "https://google.com"}
    expect(last_response).to be_ok
  end

  it "should redirect to urls" do
    url = ShortUrl.shorten("https://google.com")
    expect(url.valid?).to be true
    get "/#{url.short_code}"
    expect(last_response).to be_redirect
    expect(last_response.location).to eq url.long_url
  end

  it "should return 404 for unknown codes" do
    get "/notthere"
    expect(last_response.status).to eq 404
  end
end
