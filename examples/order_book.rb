require "bundler/setup"
require "poloniex_ws"

client = PoloniexWs::Websocket.new

client.listen_order_book 'USDT_DASH' do |args, kwargs|
  puts kwargs.merge(data: args).inspect
end
