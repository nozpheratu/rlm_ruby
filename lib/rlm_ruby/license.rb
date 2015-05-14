require 'net/http'
require 'json'

module RlmRuby
  class License

    def self.generate_keys(contact = {}, products = [])
      uri = URI(RlmRuby.configuration.uri)
      req = Net::HTTP::Post.new(uri, {'Content-Type' => 'application/json'})
      req.basic_auth RlmRuby.configuration.username, RlmRuby.configuration.password
      req.body = {
        header:{
          isv: RlmRuby.configuration.isv,
          operation: 'post',
          table: RlmRuby.configuration.table
        },
        data:
        {
          contact: contact[:name],
          phone: contact[:phone],
          email: contact[:email],
          products: products
        }
      }.to_json
      Net::HTTP.new(RlmRuby.configuration.host).start {|http| http.request(req) }
    end

  end

end
