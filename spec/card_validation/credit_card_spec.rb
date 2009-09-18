require File.join(File.dirname(__FILE__), '..', 'spec_helper')

module CardValidation
  describe CreditCard do
    it 'can be instantiated with a number' do
      card = CreditCard.new("12345")
      card.number.should == "12345"
    end
  end
end

