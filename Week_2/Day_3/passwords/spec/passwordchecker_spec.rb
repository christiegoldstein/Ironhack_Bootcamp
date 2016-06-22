require_relative("../lib/passwordchecker.rb")

RSpec.describe PasswordChecker do
  let :password_checker do
    PasswordChecker.new
  end

  let :email do 
  	"christie@campbells.com"
  end

  let :password  do
  	"12ABC%"
  end
  let :password2 do 
  	"12abC%3!"
  end
  let :password3 do
  	"12abc%3!"
  end
  let :password4 do
  	"christie12!"
  end
  let :password5 do
  	"campbellsH"
  end

  it "password longer than 7 characters" do
    expect( password_checker.check_length(password)).to eq(false)
    expect( password_checker.check_length(password2)).to eq(true)
  end

  it "at least 1 uppcase letter and 1 lowercase letter" do
  	expect( password_checker.letter_check(password)).to eq(false)
  	expect( password_checker.letter_check(password2)).to eq(true)
  	expect( password_checker.letter_check(password3)).to eq(false)
  	expect( password_checker.letter_check(password4)).to eq(false)
  	expect( password_checker.letter_check(password5)).to eq(true)
   
  end


  it "at least 1 symbol, 1 letter, 1 number" do
    expect( password_checker.check_one_of_each(password)).to eq(true)
  	expect( password_checker.check_one_of_each(password2)).to eq(true)
  	expect( password_checker.check_one_of_each(password3)).to eq(true)
  	expect( password_checker.check_one_of_each(password4)).to eq(true)
  	expect( password_checker.check_one_of_each(password5)).to eq(false)
  end

  it "no name, no domain" do
  	expect( password_checker.check_name_domain(email, password)).to eq(true)
  	expect( password_checker.check_name_domain(email, password2)).to eq(true)
  	expect( password_checker.check_name_domain(email, password3)).to eq(true)
  	expect( password_checker.check_name_domain(email, password4)).to eq(false)
  	expect( password_checker.check_name_domain(email, password5)).to eq(false)
  end

end