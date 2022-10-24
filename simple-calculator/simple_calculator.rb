class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze
  
  def self.calculate(first_operand, second_operand, operation)
    if first_operand.is_a?(Numeric) && second_operand.is_a?(Numeric)
      if ALLOWED_OPERATIONS[0] == operation
        "#{first_operand} + #{second_operand} = #{first_operand + second_operand}"
      elsif ALLOWED_OPERATIONS[1] == operation

        begin
          if(second_operand != 0)
            "#{first_operand} / #{second_operand} = #{first_operand / second_operand}"
          else
            raise ZeroDivisionError.new("Division by zero is not allowed.")
          end
        rescue ZeroDivisionError => e
          e.message
        end
      elsif ALLOWED_OPERATIONS[2] == operation
        "#{first_operand} * #{second_operand} = #{first_operand * second_operand}"
      else
        raise UnsupportedOperation.new("")
      end
    else
      raise ArgumentError.new("")
    end
  end

  class UnsupportedOperation < StandardError
  end
end

