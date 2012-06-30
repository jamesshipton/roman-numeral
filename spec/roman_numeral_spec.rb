require_relative '../lib/roman_numeral'

describe RomanNumeral do
  describe 'valid' do
    context 'single roman numeral' do
      it('I is 1')    { RomanNumeral.new('I').to_integer.should == 1 }
      it('V is 5')    { RomanNumeral.new('V').to_integer.should == 5 }
      it('X is 10')   { RomanNumeral.new('X').to_integer.should == 10 }
      it('L is 50')   { RomanNumeral.new('L').to_integer.should == 50 }
      it('C is 100')  { RomanNumeral.new('C').to_integer.should == 100 }
      it('D is 500')  { RomanNumeral.new('D').to_integer.should == 500 }
      it('M is 1000') { RomanNumeral.new('M').to_integer.should == 1000 }
    end

    context 'multiple identical roman numerals' do
      it('II is 2')     { RomanNumeral.new('II').to_integer.should == 2 }
      it('III is 3')    { RomanNumeral.new('III').to_integer.should == 3 }
      it('CC is 200')   { RomanNumeral.new('CC').to_integer.should == 200 }
      it('MMM is 3000') { RomanNumeral.new('MMM').to_integer.should == 3000 }
    end

    context 'multiple different roman numerals' do
      it('IV is 4')           { RomanNumeral.new('IV').to_integer.should == 4 }
      it('XXXI is 31')        { RomanNumeral.new('XXXI').to_integer.should == 31 }
      it('MCMXCVIII is 1998') { RomanNumeral.new('MCMXCVIII').to_integer.should == 1998 }
      it('MMMCMXCIX is 3999') { RomanNumeral.new('MMMCMXCIX').to_integer.should == 3999 }
    end
  end

  describe 'invalid' do
    it('0 is invalid') do
       lambda { RomanNumeral.new('0').to_integer }.should raise_error(RomanNumeralError, 'Roman numeral is invalid')
     end

    it('MMMM is invalid') do
       lambda { RomanNumeral.new('MMMM').to_integer }.should raise_error(RomanNumeralError, 'Roman numeral is invalid')
     end

   it('IIIII is invalid') do
      lambda { RomanNumeral.new('IIIII').to_integer }.should raise_error(RomanNumeralError, 'Roman numeral is invalid')
    end

    it('Foo is invalid') do
       lambda { RomanNumeral.new('Foo').to_integer }.should raise_error(RomanNumeralError, 'Roman numeral is invalid')
     end
  end
end