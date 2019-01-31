class PhonePlan
  def initialize(number_of_phones:, price:)
    @number_of_phones = number_of_phones
    @price = price
  end

  def cost
    raise "To be implemented by subclass"
  end

  private

  attr_reader :number_of_phones, :price
end
