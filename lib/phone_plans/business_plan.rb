module PhonePlans
  class BusinessPlan < PhonePlan
    def cost
      subtotal = number_of_phones * price

      if number_of_phones < 50
        subtotal * 0.75
      else
        subtotal * 0.50
      end
    end
  end
end
