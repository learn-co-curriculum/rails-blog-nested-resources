require 'spec_helper'

describe Comment do
  context 'Comment Validation' do 
    it "comment is valid" do 
      expect(Comment.create(content: "hello")).to be_valid
    end

    it "invalid with no content" do 
      expect(Comment.create(content: nil)).to_not be_valid
    end
  end

  context 'Comment Relationship to Post and User' do 
    it 'belongs to User' do 
      expect(@kitten.comments.first).to eq(@comment1)
    end

    it 'belongs to Post' do 
      expect(@post1.comments.first).to eq(@comment1)
    end

  end
end
