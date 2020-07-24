

RSpec.describe 'test' do
  it 'test with "2\n"' do
    io = IO.popen("ruby abc153/D.rb", "w+")
    io.puts("2\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "4\n"' do
    io = IO.popen("ruby abc153/D.rb", "w+")
    io.puts("4\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

  it 'test with "1000000000000\n"' do
    io = IO.popen("ruby abc153/D.rb", "w+")
    io.puts("1000000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("1099511627775\n")
  end

end
