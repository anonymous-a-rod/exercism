module SavingsAccount
  def self.interest_rate(balance)
    if balance < 0.0
      3.213
    elsif balance >= 0.0 && balance < 1000.0
      0.5
    elsif balance >= 1000.0 && balance < 5000.0
      1.621
    elsif balance >= 5000.0
      2.475
    end
  end

  def self.annual_balance_update(balance)
    balance + ((interest_rate(balance) / 100.0) * balance)
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    return 0 if desired_balance <= current_balance

    @years_before_desired_balance = 0

    until current_balance >= desired_balance
      current_balance = annual_balance_update(current_balance)
      @years_before_desired_balance += 1
    end

    @years_before_desired_balance
  end
end

p SavingsAccount.interest_rate(200.75)

p SavingsAccount.annual_balance_update(200.75)

p SavingsAccount.years_before_desired_balance(200.75, 214.88)