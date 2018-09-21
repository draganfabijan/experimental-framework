require "./application.rb"
require "rack/test"

RSpec.describe Application do
  include ::Rack::Test::Methods
  let(:app) { Application.new }

  context "get to /" do
    let(:response) { get "/" }

    it "returns the status 200" do
      expect(response.status).to eq(200)
    end

    it "returns the body" do
      expect(response.body).to eq("Hello World")
    end
  end

  context "get to none existing route" do
    let(:response) { get "/ruby" }

    it "returns the status 404" do
      expect(response.status).to eq(404)
    end

    it "returns Not found" do
      expect(response.body).to eq("Not found")
    end
  end
end
