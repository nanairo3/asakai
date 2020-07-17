RSpec.describe 'test' do
  it 'test with "2 5\n1 WA\n1 AC\n2 WA\n2 AC\n2 WA\n"' do
    io = IO.popen("ruby abc151/C.rb", "w+")
    io.puts("2 5\n1 WA\n1 AC\n2 WA\n2 AC\n2 WA\n")
    io.close_write
    expect(io.readlines.join).to eq("2 2\n")
  end

  it 'test with "100000 3\n7777 AC\n7777 AC\n7777 AC\n"' do
    io = IO.popen("ruby abc151/C.rb", "w+")
    io.puts("100000 3\n7777 AC\n7777 AC\n7777 AC\n")
    io.close_write
    expect(io.readlines.join).to eq("1 0\n")
  end

  it 'test with "6 0\n"' do
    io = IO.popen("ruby abc151/C.rb", "w+")
    io.puts("6 0\n")
    io.close_write
    expect(io.readlines.join).to eq("0 0\n")
  end

end
