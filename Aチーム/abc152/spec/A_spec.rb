

RSpec.describe 'test' do
  it 'test with "3 3\n"' do
    io = IO.popen("ruby abc152/A.rb", "w+")
    io.puts("3 3\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "3 2\n"' do
    io = IO.popen("ruby abc152/A.rb", "w+")
    io.puts("3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "1 1\n"' do
    io = IO.popen("ruby abc152/A.rb", "w+")
    io.puts("1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
