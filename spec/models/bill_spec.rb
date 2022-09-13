require 'rails_helper'

RSpec.describe Bill, type: :model do
  subject { Bill.new(name: 'Supermarket', amount: 2000, user_id: 1) }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'amount should be present' do
    subject.amount = nil
    expect(subject).to_not be_valid
  end

  it 'user_id should be present' do
    subject.user_id = nil
    expect(subject).to_not be_valid
  end
end
