require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |k, v| 
    v << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  new_array = []
holiday_hash[:winter].each do |holiday, values| values.each do |things| new_array << things
end
end
new_array
end


def all_supplies_in_holidays(holiday_hash)
  holiday_hash.collect do |season, holiday|
    puts "#{season.to_s.capitalize!}:"
    holiday.collect do |name, supply|
     puts "  #{name.to_s.split("_").collect {|word| 
        word.capitalize }.join(" ") }: #{supply.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  array = []
holiday_hash.collect do |season, holiday| 
  holiday.collect do |holiday_name, supplies| 
  array << holiday_name if supplies.include?("BBQ") 
  end
  end
  array
end
  
  
  
  

    







