require "spec_helper"

describe PhonePlan do
  describe "#cost" do
    it "raises an error stating that the subclass should implement it" do
      phone_plan = described_class.new(
        number_of_phones: 1,
        price: 10
      )

      expect{ phone_plan.cost }.to raise_error("To be implemented by subclass")
    end
  end
end
