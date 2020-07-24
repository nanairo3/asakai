

RSpec.describe 'test' do
  it 'test with "3 1\n4 1 5\n"' do
    io = IO.popen("ruby abc153/C.rb", "w+")
    io.puts("3 1\n4 1 5\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "8 9\n7 9 3 2 3 8 4 6\n"' do
    io = IO.popen("ruby abc153/C.rb", "w+")
    io.puts("8 9\n7 9 3 2 3 8 4 6\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "3 0\n1000000000 1000000000 1000000000\n"' do
    io = IO.popen("ruby abc153/C.rb", "w+")
    io.puts("3 0\n1000000000 1000000000 1000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("3000000000\n")
  end

end
