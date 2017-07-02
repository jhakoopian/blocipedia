require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.create(email: "user@bloc.com", password: "password") }

  describe "attributes" do
    it "should have name and email attributes" do
      expect(user).to have_attributes(email: "user@bloc.com", password: "password")
    end

    it "responds to role" do
      expect(user).to respond_to(:role)
    end

    it "responds to standard?" do
      expect(user).to respond_to(:standard?)
    end

    it "responds to premium?" do
      expect(user).to respond_to(:premium?)
    end

    it "responds to admin?" do
      expect(user).to respond_to(:admin?)
    end
  end

  # describe "role" do
    # it "is standard by default" do
    #   expect(user.role).to eq("standard")
    # end
    #
    # context "member user" do
    #   it "returns true for #member?" do
    #     expect(user.member?).to be_truthy
    #   end
    #
    # it "returns false for #admin?" do
    #   expect(user.admin?).to be_falsey
    # end
  # end
  #
  # context "admin user" do
  #   before do
  #     user.admin!
  #   end
  #
  #   it "returns false for #member?" do
  #     expect(user.member?).to be_falsey
  #   end
  #
  #   it "returns true for #admin?" do
  #     expect(user.admin?).to be_truthy
  #   end
  # end
end
