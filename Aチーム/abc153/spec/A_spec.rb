

RSpec.describe 'test' do
  it 'test with "10 4\n"' do
    io = IO.popen("ruby abc153/A.rb", "w+")
    io.puts("10 4\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "1 10000\n"' do
    io = IO.popen("ruby abc153/A.rb", "w+")
    io.puts("1 10000\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "10000 1\n"' do
    io = IO.popen("ruby abc153/A.rb", "w+")
    io.puts("10000 1\n")
    io.close_write
    expect(io.readlines.join).to eq("10000\n")
  end

end
