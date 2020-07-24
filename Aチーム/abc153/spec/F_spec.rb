

RSpec.describe 'test' do
  it 'test with "3 3 2\n1 2\n5 4\n9 2\n"' do
    io = IO.popen("ruby abc153/F.rb", "w+")
    io.puts("3 3 2\n1 2\n5 4\n9 2\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "9 4 1\n1 5\n2 4\n3 3\n4 2\n5 1\n6 2\n7 3\n8 4\n9 5\n"' do
    io = IO.popen("ruby abc153/F.rb", "w+")
    io.puts("9 4 1\n1 5\n2 4\n3 3\n4 2\n5 1\n6 2\n7 3\n8 4\n9 5\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "3 0 1\n300000000 1000000000\n100000000 1000000000\n200000000 1000000000\n"' do
    io = IO.popen("ruby abc153/F.rb", "w+")
    io.puts("3 0 1\n300000000 1000000000\n100000000 1000000000\n200000000 1000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("3000000000\n")
  end

end
