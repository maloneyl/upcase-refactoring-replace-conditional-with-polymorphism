require "spec_helper"

describe PhonePlans::FamilyPlan do
  it "discounts each additional phone" do
    phone_plan = described_class.new(
      number_of_phones: 3,
      price: 40
    )
    expect(phone_plan.cost).to eq 60
  end
end
