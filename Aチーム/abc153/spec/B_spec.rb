

RSpec.describe 'test' do
  it 'test with "10 3\n4 5 6\n"' do
    io = IO.popen("ruby abc153/B.rb", "w+")
    io.puts("10 3\n4 5 6\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "20 3\n4 5 6\n"' do
    io = IO.popen("ruby abc153/B.rb", "w+")
    io.puts("20 3\n4 5 6\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "210 5\n31 41 59 26 53\n"' do
    io = IO.popen("ruby abc153/B.rb", "w+")
    io.puts("210 5\n31 41 59 26 53\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "211 5\n31 41 59 26 53\n"' do
    io = IO.popen("ruby abc153/B.rb", "w+")
    io.puts("211 5\n31 41 59 26 53\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
