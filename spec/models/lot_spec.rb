require 'rails_helper'

describe Lot do
  context "when valid attributes" do
    subject                 { build :lot }
    it("is valid")          { is_expected.to be_valid }
    it("has name")          { expect(subject.name).to be_present }
    it("has type")          { expect(subject.type).to be_present }
    it("has organization")  { expect(subject.organization).to be_present }
  end

  context "when type = 'teachers'" do
    subject         { build :teachers_lot }
    it("is valid")  { is_expected.to be_valid }
  end

  context "when type = 'students'" do
    subject         { build :students_lot }
    it("is valid")  { is_expected.to be_valid }
  end

  context "when type = 'invalid'" do
    subject                           { build :lot, type: "invalid" }
    before                            { is_expected.to be_invalid }
    it("has type 'is invalid' error") { expect(subject.errors[:type]).to include "is invalid" }
  end

  context "when blank attributes" do
    subject                               { Lot.new }
    before                                { is_expected.to be_invalid }
    it("has name 'can't be blank' error") { expect(subject.errors[:name]).to include "can't be blank" }
    it("has type 'can't be blank' error") { expect(subject.errors[:type]).to include "can't be blank" }
  end
end

describe Lot, "#organization" do
  context "when associated with organization" do
    subject                   { build(:lot).organization }
    it("has organization")    { is_expected.to be_present; is_expected.to be_a Organization }
  end

  context "when NOT associated with any organization" do
    subject                   { build(:lot, organization: nil).organization }
    it("returns nil object")  { is_expected.to eq nil }
  end
end
