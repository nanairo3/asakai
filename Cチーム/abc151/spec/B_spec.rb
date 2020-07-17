RSpec.describe 'test' do
  it 'test with "5 10 7\n8 10 3 6\n"' do
    io = IO.popen("ruby abc151/B.rb", "w+")
    io.puts("5 10 7\n8 10 3 6\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n")
  end

  it 'test with "4 100 60\n100 100 100\n"' do
    io = IO.popen("ruby abc151/B.rb", "w+")
    io.puts("4 100 60\n100 100 100\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "4 100 60\n0 0 0\n"' do
    io = IO.popen("ruby abc151/B.rb", "w+")
    io.puts("4 100 60\n0 0 0\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

end
