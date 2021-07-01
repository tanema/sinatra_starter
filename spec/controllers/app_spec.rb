require_relative '../spec_helper'

describe "App" do
  let(:app) { App.new }

  it "should allow accessing the home page" do
    get '/'
    expect(last_response).to be_ok
  end
end
