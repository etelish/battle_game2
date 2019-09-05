#
#
# describe 'website content', type: :feature do
#  scenario 'Can run app and check page content' do
#    visit '/'
#    expect(page).to have_content 'Hello Battle!'
#  end
# end

describe 'game set up', type: :feature do
  scenario 'enter and store player 1 and 2 names' do
    sign_in_and_play
    expect(page).to have_content 'Rafaela vs. Volker'
  end
end

describe 'player hitpoints', type: :feature do
  scenario 'display player 2 hitpoints' do
      sign_in_and_play
      expect(page).to have_content 'Volker: 100 HP'
  end
end

describe 'attacking player', type: :feature do
  scenario 'receive a confirmation when attack' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'attacked'
  end
end

describe 'HP state', type: :feature do
  scenario 'HP reduces after attack' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'lose 10 points'
  end
end
