def make_test_user
  test_user = User.create(email: 'arthur1@gmail', password: 'P', password_confirmation: 'P')
  visit signin_path
  fill_in 'Email', with: 'arthur1@gmail'
  fill_in 'Password', with: 'P'
  click_button 'Sign in'
end

def make_test_admin
  test_admin = User.create(email: 'admin1@gmail', password: 'P', password_confirmation: 'P', admin: true)
  visit signin_path
  fill_in 'Email', with: 'admin1@gmail'
  fill_in 'Password', with: 'P'
  click_button 'Sign in'
end