# Implement a CLI for a Reverse Polish notation calculator. Users will input strings representing the calculations they wish to make. Upon hitting return, the calculator should evaluate user input and print the result (rounded down to the nearest integer) to the screen. The user should then be able to enter another calculation.
# The valid operators are +, -, * and /.
# If the user inputs Ctrl+C or q, the program should exit.
# The calculator does not need to remember or consider its previously computed values.

# Example 1:
# Input: 2 1 + 3 *
# Output: 9
# Explanation: ((2 + 1) * 3) = 9
# Example 2:
# Input: 4 13 5 / +
# Output: 6
# Explanation: (4 + (13 / 5)) = 6
# Example 3:
# Input: 10 6 9 3 + -11 * / * 17 + 5 +
# Output: 22
# Explanation: ((10 * (6 / ((9 + 3) * -11))) + 17) + 5
# = ((10 * (6 / (12 * -11))) + 17) + 5
# = ((10 * (6 / -132)) + 17) + 5
# = ((10 * 0) + 17) + 5
# = (0 + 17) + 5
# = 17 + 5
# = 22

class ReversePolishCalculator
  def self.evaluate_string(input)
    current_eval = []
    expression = input.split
    until expression.length == 1
      expression.each_with_index do |char, i|
        next unless number?(char) && number?(expression[i + 1]) && !number?(expression[i + 2])

        new_result = char.to_i.public_send(expression[i + 2], expression[i + 1].to_i)
        new_result += 1 if new_result.negative?
        expression.slice!(i..i + 2)
        expression.insert(i, new_result)
      end
    end
    expression.first.to_i
  end

  def self.number?(number)
    operators = ['+', '-', '*', '/']
    return false if operators.include?(number)

    true
  end
end