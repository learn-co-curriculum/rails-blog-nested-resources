require 'spec_helper'

describe User do
  context 'User Relationship to Comment' do 
    it 'has many comments' do 
      expect(@kitten.comments.count).to eq(2)
    end
  end
end