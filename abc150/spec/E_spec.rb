

RSpec.describe 'test' do
  it 'test with "1\n1000000000\n"' do
    io = IO.popen("ruby abc150/E.rb", "w+")
    io.puts("1\n1000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("999999993\n")
  end

  it 'test with "2\n5 8\n"' do
    io = IO.popen("ruby abc150/E.rb", "w+")
    io.puts("2\n5 8\n")
    io.close_write
    expect(io.readlines.join).to eq("124\n")
  end

  it 'test with "5\n52 67 72 25 79\n"' do
    io = IO.popen("ruby abc150/E.rb", "w+")
    io.puts("5\n52 67 72 25 79\n")
    io.close_write
    expect(io.readlines.join).to eq("269312\n")
  end

end
