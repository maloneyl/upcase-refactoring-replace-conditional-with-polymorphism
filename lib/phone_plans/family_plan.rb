module PhonePlans
  class FamilyPlan < PhonePlan
    def cost
      number_of_extra_phones = number_of_phones - 1
      cost_per_extra_phone = 10

      price + (number_of_extra_phones * cost_per_extra_phone)
    end
  end
end
