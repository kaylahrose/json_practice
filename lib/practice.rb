require 'pry'
require 'json'
require 'bigdecimal'

def calculate(input)
  input = input.to_json
end

def apply_discount(json, percentage)
  json[:offers].each do |offer|
    discount = offer[:cashback] * (BigDecimal(percentage)/100)
    offer[:cashback] = (offer[:cashback] - discount).floor
  end
  json
end