RSpec.describe 'test' do
  it 'test with "3 3\n...\n...\n...\n"' do
    io = IO.popen("ruby abc151/D.rb", "w+")
    io.puts("3 3\n...\n...\n...\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "3 5\n...#.\n.#.#.\n.#...\n"' do
    io = IO.popen("ruby abc151/D.rb", "w+")
    io.puts("3 5\n...#.\n.#.#.\n.#...\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n")
  end

end
