module RlmRuby
	class Configuration
		attr_accessor :username, :uri, :password, :host, :port, :table, :isv

		def initialize
			@username = ""
			@password = ""
			@uri = ""
			@host = ""
			@port = ""
			@table = ""
			@isv = ""
		end

	end
end
