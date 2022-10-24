module SavingsAccount

  @@rating_interest_gap = { 0.0 => -3.213, 1000.0 => 0.5, 5000.0 => 1.621, "max" => 2.475}

  def self.interest_rate(balance)
    @@rating_interest_gap.each_pair {|key, value| if  key == "max" || balance < key
       return value
      end}
  end

  def self.annual_balance_update(balance)
    if balance < 0
      balance * (-interest_rate(balance) / 100 + 1)
    else
      balance * (interest_rate(balance) / 100 + 1)
    end
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    years = 0
    while current_balance < desired_balance
      current_balance = annual_balance_update(current_balance)
      years += 1
    end
    return years
  end
end
