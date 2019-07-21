FactoryBot.define do
  factory :lot, aliases: %w(students_lot) do
    name { "pb1" }
    type { "students" }
    association :organization, factory: :organization
  end

  factory :teachers_lot, class: Lot do
    name { "pb2" }
    type { "teachers" }
    association :organization, factory: :organization
  end
end
