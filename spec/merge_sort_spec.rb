require './merge_sort'

describe "Merge Sort Algorithm" do
  let(:arr) { [3, 2, 1, 13, 8, 5, 0, 1] }

  it "returns given array sorted" do
    sorted_array = merge_sort(arr)

    expect(sorted_array).to eq([0, 1, 1, 2, 3, 5, 8, 13])
  end
end
