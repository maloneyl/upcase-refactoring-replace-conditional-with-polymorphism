require "spec_helper"

describe PhonePlans::IndividualPlan do
  describe "#cost" do
    it "multiples the price by the number of phones" do
      phone_plan = described_class.new(
        number_of_phones: 3,
        price: 40
      )
      expect(phone_plan.cost).to eq 120
    end
  end
end
