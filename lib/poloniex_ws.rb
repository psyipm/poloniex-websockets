require 'poloniex_ws/version'
require 'poloniex_ws/configuration'
require 'poloniex_ws/errors'
require 'poloniex_ws/websocket'
require 'wamp_client'

module PoloniexWs
  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
