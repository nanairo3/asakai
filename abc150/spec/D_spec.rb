

RSpec.describe 'test' do
  it 'test with "2 50\n6 10\n"' do
    io = IO.popen("ruby abc150/D.rb", "w+")
    io.puts("2 50\n6 10\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "3 100\n14 22 40\n"' do
    io = IO.popen("ruby abc150/D.rb", "w+")
    io.puts("3 100\n14 22 40\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "5 1000000000\n6 6 2 6 2\n"' do
    io = IO.popen("ruby abc150/D.rb", "w+")
    io.puts("5 1000000000\n6 6 2 6 2\n")
    io.close_write
    expect(io.readlines.join).to eq("166666667\n")
  end

end
