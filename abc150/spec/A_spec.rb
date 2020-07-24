

RSpec.describe 'test' do
  it 'test with "2 900\n"' do
    io = IO.popen("ruby abc150/A.rb", "w+")
    io.puts("2 900\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "1 501\n"' do
    io = IO.popen("ruby abc150/A.rb", "w+")
    io.puts("1 501\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "4 2000\n"' do
    io = IO.popen("ruby abc150/A.rb", "w+")
    io.puts("4 2000\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
