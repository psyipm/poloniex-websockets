require "bundler/setup"
require "poloniex_ws"

client = PoloniexWs::Websocket.new

client.listen_ticker 'USDT_DASH' do |args|
  puts args.inspect
end
