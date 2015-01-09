require('rspec')
require('word_counter')

describe('String#word_counter') do
  it('does not count the argument if it never appears in the object') do
    expect("snoop doggy dog dog".word_counter("cat")).to(eq(0))
  end

  it('tells you how many times the argument appears in the object') do
    expect("snoop dog kitty doggy dog".word_counter("dog")).to(eq(2))
  end
end
