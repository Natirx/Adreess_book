class BankAccount
    attr_reader :name
    def initialize(name)
        @name = name
        @transactions = [] 
        add_transaction("beggining Balance", 0)
    end
    def credit(description, amount)
        add_transaction(description, amount)
    end
    

    def debit(description,amount)
        add_transaction(description, -amount)
    end
    def add_transaction(description, amount)
        @transactions.push(description: description, amount: amount)
    end
    def to_s
        "Name: #{name}, Balance: #{sprintf("%0.2f", balance)}"
      end
    
        def balance
            balance = 0
            @transactions.each do |transaction|
                balance = balance + transaction[:amount]
            end
            return balance
        end
        def print_register
            puts "#{name}'s Bank Account"
            puts "Desctiption\tAmount"
            @transactions.each do |transaction|
                puts transaction[:description].ljust(30) + "\t"+ transaction[:amount].to_s
            end
        end
    end
    
bank_account = BankAccount.new("andriy")
bank_account.credit("Sheva", 111)
bank_account.debit("Sheva", 40)

puts bank_account
puts "register: "
bank_account.print_register
