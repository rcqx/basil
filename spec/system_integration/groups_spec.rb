require 'rails_helper'

RSpec.describe 'groups index page', type: :system do
  describe 'accessing correctly the splash screen when nobody is logged in' do
    it 'should have the name of the app' do
      visit groups_path
      expect(page).to have_text('BASIL')
    end
  end
end
