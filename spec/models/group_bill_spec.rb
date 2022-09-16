require 'rails_helper'

RSpec.describe GroupBill, type: :model do
  subject { GroupBill.new(bill_id: 24, group_id: 56) }

  it 'group id should be present' do
    subject.group_id = nil
    expect(subject).to_not be_valid
  end

  it 'bill id should be present' do
    subject.bill_id = nil
    expect(subject).to_not be_valid
  end
end
