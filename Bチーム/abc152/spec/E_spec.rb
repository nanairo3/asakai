

RSpec.describe 'test' do
  it 'test with "3\n2 3 4\n"' do
    io = IO.popen("ruby abc152/E.rb", "w+")
    io.puts("3\n2 3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("13\n")
  end

  it 'test with "5\n12 12 12 12 12\n"' do
    io = IO.popen("ruby abc152/E.rb", "w+")
    io.puts("5\n12 12 12 12 12\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "3\n1000000 999999 999998\n"' do
    io = IO.popen("ruby abc152/E.rb", "w+")
    io.puts("3\n1000000 999999 999998\n")
    io.close_write
    expect(io.readlines.join).to eq("996989508\n")
  end

end
