require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array

def add_supply_to_winter_holidays(holiday_hash, supply)
     holiday_hash[:winter][:christmas] << supply
     holiday_hash[:winter][:new_years] << supply
end
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays



def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
holiday_hash[:fall] = {:columbus_day => "Flags" "Parade Floats" "Italian Food"}
holiday_hash[:winter] = {:valentines_day => "Cupid Cut-Out" "Candy Hearts"}
holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  new_array = []
  new_array << holiday_hash[:winter].values
  new_array.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:"
    holiday.map do |name_of_holiday, supplies|
      name_of_holiday = name_of_holiday.to_s
      name_of_holiday = name_of_holiday.split(' ')
      "#{name_of_holiday.each.capitalize!}: #{supplies.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  all_holidays_with_bbq = []
  holiday_hash.each do |season, supply|
    supply.select do |supply, holiday_supplies|
      if holiday_supplies.include? ("BBQ")
        all_holidays_with_bbq << supply
    end
end
end
end






