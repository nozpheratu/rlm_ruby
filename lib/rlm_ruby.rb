require "rlm_ruby/version"
require "rlm_ruby/license"
require "rlm_ruby/configuration"

begin
  require "pry"
rescue LoadError
end

module RlmRuby

  class << self
    attr_accessor :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.reset
    @configuration = Configuration.new
  end

  def self.configure
    yield(configuration)
  end

end
