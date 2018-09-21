require "./my_app.rb"

RSpec.describe MyApp do
  describe "get to /" do
    let(:app) { MyApp.new }
    let(:env) { { "REQUEST_METHOD" => "GET", "PATH_INFO" => "/" } }
    let(:response) { [ 200, { "Content-Type" => "text/plain" }, ["Hello World"] ] }

    it "should return an array with status, header and body" do
      expect(app.call(env)).to eq(response)
    end
  end
end
