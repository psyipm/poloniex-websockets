module Poloniex
  class Websocket
    def connection
      options = Poloniex.configuration.websocket
      @connection ||= WampClient::Connection.new(options)
    end

    def listen_ticker(pair = nil, &_block)
      raise BlockMissingError unless block_given?

      handler = lambda do |args, kwargs, details|
        if pair.nil? || args.first.casecmp(pair.to_s).zero?
          yield args, kwargs, details
        end
      end

      subscribe 'ticker', handler
    end

    def listen_order_book(pair, &block)
      raise BlockMissingError unless block_given?

      subscribe pair, block
    end

    def listen_trollbox(&block)
      raise BlockMissingError unless block_given?

      subscribe 'trollbox', block
    end

    private

    def subscribe(channel, handler)
      connection.on_join do |session, _details|
        session.subscribe(channel, handler)
      end

      connection.open
    end
  end
end
