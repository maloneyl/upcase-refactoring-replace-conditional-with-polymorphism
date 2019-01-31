require "spec_helper"

describe PhonePlans::BusinessPlan do
  context "when there are fewer than 50 phones" do
    it "returns the price with a 25% discount" do
      phone_plan = described_class.new(
        number_of_phones: 3,
        price: 40
      )
      expect(phone_plan.cost).to eq 90
    end
  end

  context "when there are 50 or more phones" do
    it "returns the price with a 50% discount" do
      phone_plan = described_class.new(
        number_of_phones: 51,
        price: 40
      )
      expect(phone_plan.cost).to eq 1020
    end
  end
end
