require 'rails_helper'

RSpec.describe Author, type: :model do
    context 'before create' do
      it 'o nome não pode ficar em branco' do
        author = Author.new
        expect( author.save ).to eq(false)  
      end

      it 'o ano precisa ser válido' do
        author = Author.new(year: nil)
         expect(author.save).to eq(false)
      end

      it 'o email precisa ser válido' do
        author = Author.new(email: nil)
        expect(author.save).to eq(false)  
      end
   end
end
