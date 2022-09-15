FactoryBot.define do
  sequence :string, aliases: [:name, :description, :first_name, :last_name, :password, :avatar] do |n|
    "string#{n}"
  end

  sequence :email do |n|
    "example#{n}@mail.com"
  end

  sequence :expired_at do |n|
    n.days.after
  end

  sequence :state, %i[new_task in_development].cycle
end
