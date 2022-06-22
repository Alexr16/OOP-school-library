require_relative 'spec_helper'

describe Person do
  context "When testing the Person class" do
    before :each do
      @name = "Jorge"
      @age = 21
      @parent_permission = false
      @jorge = Person.new(@age, @name, parent_permission: @parent_permission)
    end
    it "Checks to see if a variable is assigned to an instance of the Person class" do
      @jorge. should be_an_instance_of Person
    end

    it "Checks to see if the Person instance is properly assigned the name of Jorge" do
      actual = "Jorge"
      expect(@jorge.name).to eq actual
   end

   it "Checks to see if the person object returns its correct name using the correct_name method" do
    actual = "Jorge"
    expect(@jorge.correct_name). to eq actual
   end
  end
end