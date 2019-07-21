require 'rails_helper'

describe Organization do
  context "when valid record" do
    subject           { build :uacj }
    it("has name")    { expect(subject.name).to be_present }
    it("has domain")  { expect(subject.domain).to be_present }
    it("has email")   { expect(subject.email).to be_present }
  end

  context "when blank attributes" do
    subject                                 { Organization.new() }
    before                                  { is_expected.to be_invalid }
    it("has name 'can't be blank' error")   { expect(subject.errors[:name]).to include "can't be blank" }
    it("has domain 'can't be blank' error") { expect(subject.errors[:domain]).to include "can't be blank" }
    it("has email 'can't be blank' error")  { expect(subject.errors[:email]).to include "can't be blank" }
  end
end
