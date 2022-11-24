require 'rails_helper'

RSpec.describe Comment, type: :model do
  it 'precisa ter texto para ser valido' do
    comment = Comment.new(body: nil)
    expect(comment).to_not be_valid
  end
  
  
  it 'não é válido sem filme associado' do
    comment = Comment.new(movie: nil)
    expect(comment).to_not be_valid
  end
  
  
  it 'precisa de aprovação' do
    comment = Comment.new(approved: true)
      expect(comment).to be_valid
  end
end