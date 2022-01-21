require './lib/banking.rb'

describe 'creates banking method' do
  
  it 'can deposit money' do
   bank = Account.new
   expect(bank.deposit(20)).to eq("deposited!")
  end

  it 'can withdraw money' do
    bank = Account.new
    bank.deposit(20)
    expect(bank.withdraw(10)).to eq(10)
  end
   
  it 'can raise error when insufficient funds' do
    bank = Account.new

    expect{bank.withdraw(30)}.to raise_error "insufficient balance!"
  end

  it 'can print the balance' do
    bank = Account.new
    bank.deposit(20)
    bank.withdraw(10)

    expect(bank.print_balance).to eq(10)
  end

end