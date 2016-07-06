def prompt(balance)
  puts "What would you like to do? (deposit, withdraw, check_balance)"
  operation = gets.chomp

  if operation == "deposit"
    puts "How much would you like to deposit?"
    dep = gets.chomp.to_i
    deposit(dep, balance)
  elsif operation == "withdraw"
    puts "How much would you like to withdraw?"
    wit = gets.chomp.to_i
    withdraw(wit, balance)
  elsif operation == "check_balance"
    puts balance
    puts "Are you done? (yes, no)"
    done = gets.chomp
    if done == "yes"
      return
    else
      prompt(balance)
    end
  end
end

def deposit(amount, current_balance)
  new_balance = current_balance + amount
  puts "You deposited #{amount}, new balance is #{new_balance}"
  puts "Are you done? (yes, no)"
  done = gets.chomp
  if done == "yes"
    return
  else
    prompt(new_balance)
  end
end

def withdraw(amount, current_balance)
  new_balance = current_balance - amount
  puts "You took #{amount}, new balance is #{new_balance}"
  puts "Are you done? (yes, no)"
  done = gets.chomp
  if done == "yes"
    return
  else
    prompt(new_balance)
  end
end
prompt(1000)
