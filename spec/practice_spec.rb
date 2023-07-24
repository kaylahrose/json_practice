require './lib/practice'

# Welcome to the team! We have a real-world coding challenge rooted in the ____ domain for
#  you. We're excited to see your skills in action and how you approach problem-solving.
#  Here's the task:

# Task: JSON Calculation

# As part of our application, we often deal with JSON data representing offers and their 
# corresponding cashback values. To make this process more efficient, we need you to write 
# a Ruby function that performs a simple calculation on this JSON and outputs new JSON
#  with the updated cashback values.

# Here's a brief overview of the JSON structure:

# json
# Copy code
# {
#   "offers": [
#     {
#       "name": "Offer 1",
#       "cashback": 5
#     },
#     {
#       "name": "Offer 2",
#       "cashback": 10
#     },
#     {
#       "name": "Offer 3",
#       "cashback": 15
#     },
#     ...
#   ]
# }
# Your task is to write a Ruby function called apply_discount(json, percentage) that takes
#  in two parameters:

# json: The input JSON containing the offers and cashback values in the format shown above.
# percentage: The discount percentage to be applied to each cashback value.
# The function should perform the following calculation for each offer:

# Calculate the new cashback value by applying the provided percentage discount to the 
# original cashback.
# Round the new cashback value to the nearest integer.
# The function should then generate new JSON with the updated cashback values and return it.

# Here's an example of how the function should work:

# ruby
# Copy code
# input_json = '{
#   "offers": [
#     {
#       "name": "Offer 1",
#       "cashback": 5
#     },
#     {
#       "name": "Offer 2",
#       "cashback": 10
#     },
#     {
#       "name": "Offer 3",
#       "cashback": 15
#     }
#   ]
# }'

# percentage_discount = 10
# updated_json = apply_discount(input_json, percentage_discount)
# puts updated_json

# # Output:
# # {
# #   "offers": [
# #     {
# #       "name": "Offer 1",
# #       "cashback": 4
# #     },
# #     {
# #       "name": "Offer 2",
# #       "cashback": 9
# #     },
# #     {
# #       "name": "Offer 3",
# #       "cashback": 14
# #     }
# #   ]
# # }
# Please implement the apply_discount function, keeping in mind that we expect you to write
#  clean, efficient, and maintainable code. Don't forget to handle any edge cases you might
#  encounter.

# Feel free to ask any questions if you need further clarification. Happy coding! We're
#  looking forward to seeing your solution.

RSpec.describe 'practice' do
  it 'calculates the total books' do
    data = {"data":[{"id":"1","type":"store","attributes":{"name":"Rau Group","num_books":6,"active":true},"relationships":{"books":{"data":[{"id":"7","type":"book"},{"id":"7","type":"book"},{"id":"11","type":"book"},{"id":"13","type":"book"},{"id":"16","type":"book"},{"id":"17","type":"book"}]}}},{"id":"2","type":"store","attributes":{"name":"Kassulke, Upton and Tillman","num_books":7,"active":true},"relationships":{"books":{"data":[{"id":"1","type":"book"},{"id":"2","type":"book"},{"id":"3","type":"book"},{"id":"12","type":"book"},{"id":"13","type":"book"},{"id":"17","type":"book"},{"id":"18","type":"book"}]}}},{"id":"3","type":"store","attributes":{"name":"Tremblay-Mitchell","num_books":12,"active":true},"relationships":{"books":{"data":[{"id":"4","type":"book"},{"id":"5","type":"book"},{"id":"6","type":"book"},{"id":"8","type":"book"},{"id":"9","type":"book"},{"id":"10","type":"book"},{"id":"11","type":"book"},{"id":"12","type":"book"},{"id":"14","type":"book"},{"id":"19","type":"book"},{"id":"19","type":"book"},{"id":"20","type":"book"}]}}},{"id":"4","type":"store","attributes":{"name":"Anderson and Sons","num_books":7,"active":true},"relationships":{"books":{"data":[{"id":"2","type":"book"},{"id":"5","type":"book"},{"id":"6","type":"book"},{"id":"9","type":"book"},{"id":"10","type":"book"},{"id":"18","type":"book"},{"id":"20","type":"book"}]}}},{"id":"5","type":"store","attributes":{"name":"Schowalter-Hauck","num_books":8,"active":true},"relationships":{"books":{"data":[{"id":"1","type":"book"},{"id":"3","type":"book"},{"id":"4","type":"book"},{"id":"8","type":"book"},{"id":"14","type":"book"},{"id":"15","type":"book"},{"id":"15","type":"book"},{"id":"16","type":"book"}]}}}]}

    expect(calculate(data)).to be_a JSON
    expect(calculate(data)).to be_a String
  end
end