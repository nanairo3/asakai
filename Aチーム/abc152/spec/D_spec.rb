

RSpec.describe 'test' do
  it 'test with "25\n"' do
    io = IO.popen("ruby abc152/D.rb", "w+")
    io.puts("25\n")
    io.close_write
    expect(io.readlines.join).to eq("17\n")
  end

  it 'test with "1\n"' do
    io = IO.popen("ruby abc152/D.rb", "w+")
    io.puts("1\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "100\n"' do
    io = IO.popen("ruby abc152/D.rb", "w+")
    io.puts("100\n")
    io.close_write
    expect(io.readlines.join).to eq("108\n")
  end

  it 'test with "2020\n"' do
    io = IO.popen("ruby abc152/D.rb", "w+")
    io.puts("2020\n")
    io.close_write
    expect(io.readlines.join).to eq("40812\n")
  end

  it 'test with "200000\n"' do
    io = IO.popen("ruby abc152/D.rb", "w+")
    io.puts("200000\n")
    io.close_write
    expect(io.readlines.join).to eq("400000008\n")
  end

end
