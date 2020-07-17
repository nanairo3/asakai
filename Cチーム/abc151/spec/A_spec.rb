RSpec.describe 'test' do
  it 'test with "a\n"' do
    io = IO.popen("ruby abc151/A.rb", "w+")
    io.puts("a\n")
    io.close_write
    expect(io.readlines.join).to eq("b\n")
  end

  it 'test with "y\n"' do
    io = IO.popen("ruby abc151/A.rb", "w+")
    io.puts("y\n")
    io.close_write
    expect(io.readlines.join).to eq("z\n")
  end

end
