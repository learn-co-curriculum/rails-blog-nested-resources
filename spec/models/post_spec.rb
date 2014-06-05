require 'spec_helper'

describe Post do

  context 'Post relationship to Comment' do 
    it 'has many comments' do 
      expect(@post1.comments.count).to eq(2)
    end

    it 'associated comments are deleted with it' do 
      @post1.destroy
      expect(Comment.all).to eq([])
    end
  end
end