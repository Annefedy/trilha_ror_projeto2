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

