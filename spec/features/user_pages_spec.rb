describe 'the login process', :type => :feature do
  context 'employee login' do
    it 'logs in an employee' do
      user = FactoryGirl.create(:user)
      visit new_session_path

      fill_in 'Email', :with => user.email
      fill_in 'Password', :with => user.password
      click_button "Log In"
      page.should have_content "Logged in!"
    end

    it  'lets an employee access the employee login page' do
      visit root_url
      click_link 'Employee Login'
      page.should have_content "Log In"
    end
  end
end
