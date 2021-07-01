require_relative '../spec_helper'

describe "ShortUrl" do
  it "should shorten a url" do
    url = ShortUrl.shorten("https://google.com")
    expect(url.valid?).to be true
    expect(url.long_url).to eq "https://google.com"
    expect(url.short_code).to_not be nil
    expect(url.short_code.length).to eq ShortUrl::CODE_LEN
  end
end
