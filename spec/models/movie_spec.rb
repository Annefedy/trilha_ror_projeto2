require 'rails_helper'

RSpec.describe Movie, type: :model do
  it 'o ano precisa ser valido' do
    subject.year = nil

    expect(subject).to_not be_valid
  end
  
  it 'precisa ter um titulo para validar' do
    subject.title = nil

    expect(subject).to_not be_valid
  end
end

it 'é válido com texto e filme associado' do
  review = Review.new
  review.comment = 'Primeiro comentario'
  review.movie = 'Movie 1'

  expect(review).to be_valid  
end

end

