require 'poloniex/version'
require 'poloniex/configuration'
require 'poloniex/errors'
require 'poloniex/websocket'
require 'wamp_client'

module Poloniex
  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
