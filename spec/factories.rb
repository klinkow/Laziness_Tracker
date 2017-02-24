FactoryGirl.define do
  factory(:activity) do
    name 'one mile run'
    calories 100
  end

  factory(:user) do
    email('person@person.com')
    password('password')
    password_confirmation('password')
    
  end
end
