require_relative 'spec_helper'

describe CapitalizeDecorator do
  context 'Tests the return value of the correct_name method in the CapitalizeDecorator class' do
    it "Capitalizes the first letter of the Nameable object's name" do
      expect(CapitalizeDecorator.new(Person.new(18,
                                                'someone with a really long name'))
                                                .correct_name).to eql 'Someone with a really long name'
    end

    it 'Checks that the class is the correct instance' do
      expect(CapitalizeDecorator.new(Person.new(18,
                                                'someone with a really long name')))
        .to be_instance_of CapitalizeDecorator
    end
  end
end
