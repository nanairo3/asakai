

RSpec.describe 'test' do
  it 'test with "4 3\n"' do
    io = IO.popen("ruby abc152/B.rb", "w+")
    io.puts("4 3\n")
    io.close_write
    expect(io.readlines.join).to eq("3333\n")
  end

  it 'test with "7 7\n"' do
    io = IO.popen("ruby abc152/B.rb", "w+")
    io.puts("7 7\n")
    io.close_write
    expect(io.readlines.join).to eq("7777777\n")
  end

end
