module SessionHelpers

  def sign_up(name: 'Giancarlo Fabrizi',
              email: 'gfabrizi@email.com',
              username: 'gfabrizi',
              password: 'password',
              password_confirmation: 'password')
    visit '/signup'
    fill_in 'name', with: name
    fill_in 'email', with: email
    fill_in 'username', with: username
    fill_in 'password', with: password
    fill_in 'password_confirmation', with: password_confirmation
    click_button 'Sign up'
  end

  def sign_in(email, password)
    visit '/sessions/new'

    fill_in 'email', with: email
    fill_in 'password', with: password
    click_button 'Sign in'
  end
end
