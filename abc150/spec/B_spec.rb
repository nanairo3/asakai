

RSpec.describe 'test' do
  it 'test with "10\nZABCDBABCQ\n"' do
    io = IO.popen("ruby abc150/B.rb", "w+")
    io.puts("10\nZABCDBABCQ\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "19\nTHREEONEFOURONEFIVE\n"' do
    io = IO.popen("ruby abc150/B.rb", "w+")
    io.puts("19\nTHREEONEFOURONEFIVE\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "33\nABCCABCBABCCABACBCBBABCBCBCBCABCB\n"' do
    io = IO.popen("ruby abc150/B.rb", "w+")
    io.puts("33\nABCCABCBABCCABACBCBBABCBCBCBCABCB\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

end
