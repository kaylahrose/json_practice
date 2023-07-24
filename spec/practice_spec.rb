require './lib/practice'

RSpec.describe 'practice' do
  it 'calculates the total books' do
    data = {"data":[{"id":"1","type":"store","attributes":{"name":"Rau Group","num_books":6,"active":true},"relationships":{"books":{"data":[{"id":"7","type":"book"},{"id":"7","type":"book"},{"id":"11","type":"book"},{"id":"13","type":"book"},{"id":"16","type":"book"},{"id":"17","type":"book"}]}}},{"id":"2","type":"store","attributes":{"name":"Kassulke, Upton and Tillman","num_books":7,"active":true},"relationships":{"books":{"data":[{"id":"1","type":"book"},{"id":"2","type":"book"},{"id":"3","type":"book"},{"id":"12","type":"book"},{"id":"13","type":"book"},{"id":"17","type":"book"},{"id":"18","type":"book"}]}}},{"id":"3","type":"store","attributes":{"name":"Tremblay-Mitchell","num_books":12,"active":true},"relationships":{"books":{"data":[{"id":"4","type":"book"},{"id":"5","type":"book"},{"id":"6","type":"book"},{"id":"8","type":"book"},{"id":"9","type":"book"},{"id":"10","type":"book"},{"id":"11","type":"book"},{"id":"12","type":"book"},{"id":"14","type":"book"},{"id":"19","type":"book"},{"id":"19","type":"book"},{"id":"20","type":"book"}]}}},{"id":"4","type":"store","attributes":{"name":"Anderson and Sons","num_books":7,"active":true},"relationships":{"books":{"data":[{"id":"2","type":"book"},{"id":"5","type":"book"},{"id":"6","type":"book"},{"id":"9","type":"book"},{"id":"10","type":"book"},{"id":"18","type":"book"},{"id":"20","type":"book"}]}}},{"id":"5","type":"store","attributes":{"name":"Schowalter-Hauck","num_books":8,"active":true},"relationships":{"books":{"data":[{"id":"1","type":"book"},{"id":"3","type":"book"},{"id":"4","type":"book"},{"id":"8","type":"book"},{"id":"14","type":"book"},{"id":"15","type":"book"},{"id":"15","type":"book"},{"id":"16","type":"book"}]}}}]}

    expect(calculate(data)).to be_a JSON
    expect(calculate(data)).to be_a String
  end
end