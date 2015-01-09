require('rspec')
require('word_counter')

describe('String#word_counter') do
  it('does not count the argument if it never appears in the object') do
    expect("snoop doggy dog dog".word_counter("cat")).to(eq(0))
  end

  it('tells you how many times the argument appears in the object') do
    expect("snoop dog kitty doggy dog".word_counter("dog")).to(eq(2))
  end

  it('will accept words regardless of capitalization') do
    expect("SNOOP LION DOG CAT dOG".word_counter("dOG")).to(eq(2))
  end

  it('will ignore periods, commas, quesion marks, and exclamation points at the end of words') do
    expect("I'm not sure why Snoop is the topic today?".word_counter("today")).to(eq(1))
  end
end
