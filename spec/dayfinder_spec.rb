require('rspec')
require('dayfinder')

describe('String#dayfinder') do
  it('tells the user if 1/8/2015 is Thursday') do
    expect("1/8/2015".dayfinder()).to eq("Thursday")
  end

  it('tells the user what the objects day is') do
    expect("7/11/2014".dayfinder()).to eq("Friday")
  end
end
