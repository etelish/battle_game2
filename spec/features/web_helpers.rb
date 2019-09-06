def sign_in_and_play
  visit '/'
  fill_in 'p1_name', with: 'Rafaela'
  fill_in 'p2_name', with: 'Volker'
  click_button 'Submit'
end
