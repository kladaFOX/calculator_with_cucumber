include Math

def calculations(num1, num2, operation)
  begin
    input = num1 + operation + num2
    result = eval(input)
    if (result.is_a? Numeric)
      result.to_s
    end
  rescue Exception
    'syntax error'
  end
end


Given("I enter first number = {string}") do |string|
  @num1 = string
end

Given("I enter second number = {string}") do |string|
  @num2 = string
end

Given("I enter first number") do
  @num1 = rand(10).to_s
end

Given("I enter second number") do
  @num2 = rand(10).to_s
end

When("I enter {string} sign") do |string|
  @operation = string
  @actual_answer = calculations(@num1, @num2, @operation)
end

Then("I should see {string}") do |expected_answer|
  expect(@actual_answer).to eq(expected_answer)
end
