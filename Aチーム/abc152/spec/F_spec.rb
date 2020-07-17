

RSpec.describe 'test' do
  it 'test with "3\n1 2\n2 3\n1\n1 3\n"' do
    io = IO.popen("ruby abc152/F.rb", "w+")
    io.puts("3\n1 2\n2 3\n1\n1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "2\n1 2\n1\n1 2\n"' do
    io = IO.popen("ruby abc152/F.rb", "w+")
    io.puts("2\n1 2\n1\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "5\n1 2\n3 2\n3 4\n5 3\n3\n1 3\n2 4\n2 5\n"' do
    io = IO.popen("ruby abc152/F.rb", "w+")
    io.puts("5\n1 2\n3 2\n3 4\n5 3\n3\n1 3\n2 4\n2 5\n")
    io.close_write
    expect(io.readlines.join).to eq("9\n")
  end

  it 'test with "8\n1 2\n2 3\n4 3\n2 5\n6 3\n6 7\n8 6\n5\n2 7\n3 5\n1 6\n2 8\n7 8\n"' do
    io = IO.popen("ruby abc152/F.rb", "w+")
    io.puts("8\n1 2\n2 3\n4 3\n2 5\n6 3\n6 7\n8 6\n5\n2 7\n3 5\n1 6\n2 8\n7 8\n")
    io.close_write
    expect(io.readlines.join).to eq("62\n")
  end

end
