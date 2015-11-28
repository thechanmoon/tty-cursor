# encoding: utf-8

RSpec.describe TTY::Cursor do
  subject(:cursor) { described_class }

  it "shows cursor" do
    expect(cursor.show).to eq("\e[?25h")
  end

  it "hides cursor" do
    expect(cursor.hide).to eq("\e[?25l")
  end

  it "saves cursor position" do
    expect(cursor.save).to eq("\e[s")
  end

  it "restores cursor position" do
    expect(cursor.restore).to eq("\e[u")
  end

  it "moves cursor up default by 1 line" do
    expect(cursor.cursor_up).to eq("\e[1A")
  end

  it "moves cursor up by 5 lines" do
    expect(cursor.cursor_up(5)).to eq("\e[5A")
  end

  it "moves cursor down default by 1 line" do
    expect(cursor.cursor_down).to eq("\e[1B")
  end

  it "moves cursor down by 5 lines" do
    expect(cursor.cursor_down(5)).to eq("\e[5B")
  end

  it "moves to line start" do
    expect(cursor.move_start).to eq("\e[1000D")
  end

  it "moves cursorleft by 1 line default" do
    expect(cursor.cursor_left).to eq("\e[1D")
  end

  it "moves cursor left by 5" do
    expect(cursor.cursor_left(5)).to eq("\e[5D")
  end

  it "moves cursor right by 1 line default" do
    expect(cursor.cursor_right).to eq("\e[1C")
  end

  it "moves cursor right by 5 lines" do
    expect(cursor.cursor_right(5)).to eq("\e[5C")
  end
end
