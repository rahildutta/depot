require 'spec_helper'
require 'rails_helper'

context "Depot login" do
  before(:each) do
    @user = FactoryGirl.create(:user)
  end
  
  it 'with valid details' do
    visit '/login'
    sign_in(@user.name,@user.password)
    expect(page).to have_current_path(admin_path)
  end
  
  it 'with invalid details' do
     visit '/login'
     sign_in(@user.name,"xyz")
     expect(page).to have_content 'Invalid user/password combination'
  end
end



