

RSpec.describe 'test' do
  it 'test with "9 3\n8 3\n4 2\n2 1\n"' do
    io = IO.popen("ruby abc153/E.rb", "w+")
    io.puts("9 3\n8 3\n4 2\n2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "100 6\n1 1\n2 3\n3 9\n4 27\n5 81\n6 243\n"' do
    io = IO.popen("ruby abc153/E.rb", "w+")
    io.puts("100 6\n1 1\n2 3\n3 9\n4 27\n5 81\n6 243\n")
    io.close_write
    expect(io.readlines.join).to eq("100\n")
  end

  it 'test with "9999 10\n540 7550\n691 9680\n700 9790\n510 7150\n415 5818\n551 7712\n587 8227\n619 8671\n588 8228\n176 2461\n"' do
    io = IO.popen("ruby abc153/E.rb", "w+")
    io.puts("9999 10\n540 7550\n691 9680\n700 9790\n510 7150\n415 5818\n551 7712\n587 8227\n619 8671\n588 8228\n176 2461\n")
    io.close_write
    expect(io.readlines.join).to eq("139815\n")
  end

end
