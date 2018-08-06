require_relative "../katas/string_compression"

describe 'string_compression' do
  it 'accurately compressses and returns a shorter string' do
    str = "abbcccddddeeeeegggggg"
    expect(string_compression(str)).to eq("a1b2c3d4e5g6")
  end

  it 'accurates compresses mixed case strings and returns a shorter string' do
    str = "abbCCcddDDeeeeeGGGggg"
    expect(string_compression(str)).to eq("a1b2C2c1d2D2e5G3g3")
  end

  it "returns the original string if the compressed string is longer" do
    str = "thisisastringthatdoesnotcompresswell"
    expect(string_compression(str)).to eq(str)
  end
end
