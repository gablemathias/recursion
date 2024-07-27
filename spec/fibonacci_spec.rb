require './fibonacci.rb'

describe "Fibonacci" do
  let(:arr) { [0, 1, 1, 2, 3, 5, 8, 13, 21] }

  it "returns the given Fibonacci resulting number" do
    target = 8

    expect(fibonacci(target)).to eq(21)
  end

  it "returns an Array of the Fibonacci sequence" do
    result = fibs(8)
    expect(result).to eq(arr)
  end
end
