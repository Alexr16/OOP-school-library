require_relative 'spec_helper'

describe TrimmerDecorator do

  context 'Tests the return value of the correct_name method in the TrimmerDecorator class' do
    it "Returns only the first 10 characters of the Nameable object's name" do
      expect(TrimmerDecorator.new(Person.new(18, "someone with a really long name")).correct_name). to eql "someone wi"
    end

    it "Checks that the class is the correct instance" do
      expect(TrimmerDecorator.new(Person.new(18, "someone with a really long name"))). to be_instance_of TrimmerDecorator
    end
  end
end