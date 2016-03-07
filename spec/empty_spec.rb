require 'spec_helper'

describe Empty do
  it 'has a version number' do
    expect(Empty::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(false).to eq(true)
  end
end
