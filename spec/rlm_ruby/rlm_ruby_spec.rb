require "spec_helper"

describe RlmRuby do
  describe "#configure" do
    
    before do
    	@uri = "https://example.com"
    	@username = "user"
    	@password = "secret"
    	@host = "1.1.1.2"
    	@port = "0"
      @table = "table"
      @isv = "Acme Corp."
      RlmRuby.configure do |config|
        config.uri = @uri
        config.username = @username
        config.password = @password
        config.host = @host
        config.port = @port
        config.table = @table
        config.isv = @isv
      end
    end

    it "has a custom configuration" do
    	expect(RlmRuby.configuration.uri).to match @uri
    	expect(RlmRuby.configuration.username).to match 	@username
    	expect(RlmRuby.configuration.password).to match @password
    	expect(RlmRuby.configuration.host).to match @host
    	expect(RlmRuby.configuration.port).to match @port
      expect(RlmRuby.configuration.table).to match @table
      expect(RlmRuby.configuration.isv).to match @isv
  	end

  end
end