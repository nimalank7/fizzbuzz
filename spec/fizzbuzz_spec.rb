require_relative '../lib/fizzbuzz'
require "Prime"

describe 'fizzbuzz' do
  it 'returns "fizz" when passed 3' do
    expect(fizzbuzz(3)).to eq 'fizz'
  end
end

describe 'fizzbuzz' do
  it 'returns "buzz" when passed 5' do
    expect(fizzbuzz(5)).to eq 'buzz'
  end
end

describe 'fizzbuzz' do
  it 'returns "fizzbuzz" when passed 15' do
    expect(fizzbuzz(15)).to eq 'fizzbuzz'
  end
end

describe 'fizzbuzz' do
  it 'returns "fizzbuzz" when passed a multiple of 3' do
    expect(fizzbuzz((1+rand(4))*3)).to eq 'fizz'
  end
end

describe 'fizzbuzz' do
  it 'returns "8" when passed 8' do
    expect(fizzbuzz(8)).to eq 8
  end
end

describe 'fizbuzz' do
  it 'returns that prime number under 100 when passed that prime number' do
    Prime.each(100) do |prime|
      next if prime == 3 || prime == 5
      expect(fizzbuzz(prime)).to eq prime
    end
  end
end
