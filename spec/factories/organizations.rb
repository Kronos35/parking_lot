FactoryBot.define do
  factory :organization, aliases: %w(uacj) do
    name    { "Universidad Autónoma de Ciudad Juárez" }
    domain  { "uacj.mx" }
    email   { "parking@uacj.mx" }
  end
end
