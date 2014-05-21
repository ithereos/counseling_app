require 'spec_helper'

describe Client do

  before { @client = Client.new(name: "Example User", lastname: "Example lastname", age: 14, email: "user@example.com") }

  subject { @client }

  it { should respond_to(:name) }
  it { should respond_to(:lastname) }
  it { should respond_to(:age) }
  it { should respond_to(:email) }

  describe "when name is not present" do
    before { @client.name = " " }
    it { should_not be_valid }
  end 


  describe "when lastname is not present" do
    before { @client.lastname = " " }
    it { should_not be_valid }
  end 


  describe "when age is not present" do
    before { @client.age = " " }
    it { should_not be_valid }
  end 

  describe "when email format is invalid" do
    it "should be invalid" do
      addresses = %w[user@foo,com user_at_foo.org example.user@foo.
                     foo@bar_baz.com foo@bar+baz.com]
      addresses.each do |invalid_address|
        @client.email = invalid_address
        expect(@client).not_to be_valid
      end
    end
  end

  describe "when email format is valid" do
    it "should be valid" do
      addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      addresses.each do |valid_address|
        @client.email = valid_address
        expect(@client).to be_valid
      end
    end
  end


  
end 



