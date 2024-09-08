module SavingsAccount
  def self.interest_rate(balance)
    case balance
      when ...0 then 3.213
      when 0...1000 then 0.5
      when 1000...5000 then 1.621
      when 5000.. then 2.475
    end
  end

  def self.annual_balance_update(balance)
    interest = self.interest_rate(balance)
    if balance < 0
      balance -= ((balance.abs * interest) / 100)
    else
      balance += ((balance.abs * interest) / 100)
    end
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    years = 0
    until current_balance >= desired_balance
      current_balance += ((current_balance.abs * self.interest_rate(current_balance)) / 100)
      years += 1
    end
    years
  end
end