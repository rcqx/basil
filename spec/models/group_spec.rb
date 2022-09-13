require 'rails_helper'

RSpec.describe Group, type: :model do
  subject { Group.new(name: 'House Expenses', icon: 'An icon url', user_id: 1) }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'icon should be present' do
    subject.icon = nil
    expect(subject).to_not be_valid
  end
end
