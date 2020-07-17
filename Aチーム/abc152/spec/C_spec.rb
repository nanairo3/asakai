

RSpec.describe 'test' do
  it 'test with "5\n4 2 5 1 3\n"' do
    io = IO.popen("ruby abc152/C.rb", "w+")
    io.puts("5\n4 2 5 1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "4\n4 3 2 1\n"' do
    io = IO.popen("ruby abc152/C.rb", "w+")
    io.puts("4\n4 3 2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "6\n1 2 3 4 5 6\n"' do
    io = IO.popen("ruby abc152/C.rb", "w+")
    io.puts("6\n1 2 3 4 5 6\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "8\n5 7 4 2 6 8 1 3\n"' do
    io = IO.popen("ruby abc152/C.rb", "w+")
    io.puts("8\n5 7 4 2 6 8 1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "1\n1\n"' do
    io = IO.popen("ruby abc152/C.rb", "w+")
    io.puts("1\n1\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

end
