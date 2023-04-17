class Account
  attr_reader :name, :balance

  @@accounts = {}

  def initialize(name, balance = 100)
    @name = name
    @balance = balance
    @@accounts[name] = balance
  end

  def display_balance(pin_number)
    puts pin_number
    if pin_number == pin
      puts "Balance: $#{@balance}"
    else
      puts pin_error
    end
  end

  def withdraw(pin_number, amount)
    if pin_number == pin
      if (@balance - amount) < 0
        puts overdraw_error
        nil
      else
        @balance -= amount
        puts "Withdrew #{amount}. New balance: $#{balance}."
      end
    else
      puts pin_error
    end
  end

  def deposit(_pin_number, amount)
    if pin_number = pin
      @balance += amount
      puts "Deposited #{amount}. New Balance: $#{balance}."
    else
      puts pin_error
    end
  end

  def self.display_accounts
    @@accounts
  end

  private

  def pin
    @pin = 2007
  end

  def pin_error
    'Access denied: incorrect PIN.'
  end

  def overdraw_error
    puts "You're trying to withdraw more than your balance, please try again"
  end
end

checking_account = Account.new("Jacob's Checking", 1_500_000)
checking_account.withdraw(2007, 1_600_000)
checking_account.withdraw(2007, 1_400_000)
checking_account.display_balance(2007)
checking_account.deposit(2007, 750_000)

puts "Accounts: #{Account.display_accounts}"
