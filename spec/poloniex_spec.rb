require "spec_helper"

RSpec.describe Poloniex do
  it "has a version number" do
    expect(PoloniexWs::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
