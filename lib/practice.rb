require 'pry'
require 'json'
require 'bigdecimal'

def calculate(input)
  input = input.to_json
end

def apply_discount(json, percentage)
  # iterate through each object
  # grab cashback
  # apply discount
  # round to integer
  # return offer
  # require 'pry'; binding.pry
  json[:offers].each do |offer|
    # require 'pry'; binding.pry
    discount = offer[:cashback] * (BigDecimal(percentage)/100)
    offer[:cashback] = (offer[:cashback] - discount).floor
  end
  # require 'pry'; binding.pry
  json
end