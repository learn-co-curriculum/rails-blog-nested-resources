require 'spec_helper'

describe 'comment actions', :type => :feature do

  it 'can create a new comment on a post' do 
    visit 'posts/1'
    fill_in 'Content', :with => @comment1.content
    click_button 'Create Comment'
    expect(page).to have_content(@comment1.content)
  end

  it 'post knows about its existing comments' do 
    visit 'posts/1'
    expect(page).to have_content(@comment2.content)
  end

end
