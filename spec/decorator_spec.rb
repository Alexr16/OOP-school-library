require_relative 'spec_helper'

describe Decorator do
  context 'Throws NotImplementedError when calling the base correct_name method of Nameable' do
    it 'Throws a NotImplementedError' do
      expect { Decorator.new(Nameable.new).correct_name }.to raise_error(NotImplementedError)
    end
  end

  it 'Checks that the class is the correct instance' do
    expect(Decorator.new(Nameable.new)).to be_instance_of Decorator
  end
end
