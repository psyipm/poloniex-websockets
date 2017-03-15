module PoloniexWs
  class Configuration
    attr_accessor :websocket_api_endpoint, :websocket_realm, :websocket_verbose

    def initialize
      set_defaults
    end

    def websocket
      {
        uri: @websocket_api_endpoint,
        realm: @websocket_realm,
        verbose: @websocket_verbose
      }
    end

    private

    def set_defaults
      @websocket_api_endpoint = 'wss://api.poloniex.com'
      @websocket_realm = 'realm1'
      @websocket_verbose = false
    end
  end
end
