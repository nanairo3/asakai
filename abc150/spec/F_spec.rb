

RSpec.describe 'test' do
  it 'test with "3\n0 2 1\n1 2 3\n"' do
    io = IO.popen("ruby abc150/F.rb", "w+")
    io.puts("3\n0 2 1\n1 2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("1 3\n")
  end

  it 'test with "5\n0 0 0 0 0\n2 2 2 2 2\n"' do
    io = IO.popen("ruby abc150/F.rb", "w+")
    io.puts("5\n0 0 0 0 0\n2 2 2 2 2\n")
    io.close_write
    expect(io.readlines.join).to eq("0 2\n1 2\n2 2\n3 2\n4 2\n")
  end

  it 'test with "6\n0 1 3 7 6 4\n1 5 4 6 2 3\n"' do
    io = IO.popen("ruby abc150/F.rb", "w+")
    io.puts("6\n0 1 3 7 6 4\n1 5 4 6 2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("2 2\n5 5\n")
  end

  it 'test with "2\n1 2\n0 0\n"' do
    io = IO.popen("ruby abc150/F.rb", "w+")
    io.puts("2\n1 2\n0 0\n")
    io.close_write
    expect(io.readlines.join).to eq("")
  end

end
