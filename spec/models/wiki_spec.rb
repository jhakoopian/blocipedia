require 'rails_helper'

RSpec.describe Wiki, type: :model do
  let(:wiki) { Wiki.create!(title: "new wiki title", body: "new wiki body") }

  describe "attributes" do
    it "has title and body attributes" do
      expect(wiki).to have_attributes(title: "new wiki title", body: "new wiki body")
    end
  end
end
