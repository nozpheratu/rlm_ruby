require 'net/http'
require 'json'

module RlmRuby
  class License

    def self.generate_keys(contact = {}, products = [])
      req = Net::HTTP::Post.new(RlmRuby.configuration.uri, initheader = {'Content-Type' =>'application/json'})
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
          contact_notes: "via Cogmation Storefront on #{Time.now.strftime('%m/%d/%Y')}",
          phone: contact[:phone],
          email: contact[:email],
          notes: "via Cogmation Storefront on #{Time.now.strftime('%m/%d/%Y')}",
          products: products
        }
      }.to_json
      Net::HTTP.new(RlmRuby.configuration.host, RlmRuby.configuration.port).start {|http| http.request(req) }
    end

  end

end
