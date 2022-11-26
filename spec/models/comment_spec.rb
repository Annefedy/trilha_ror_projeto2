require 'rails_helper'

RSpec.describe Comment, type: :model do
	context "if body text is not filled" do 
		it "is not valid empty field case"
			@author = Author.new(name: "James", email: "myemail@email.com", year: 2021)
			@author.save
			@movie = Movie.new(title: "Rings of Paower", year: 2022)
			@movie.authors << Author.first
			@movie.save
			@comment = Comment.new(body: "writing text here...", approved: false)
			@comment.movie = Movie.first
			@comment.save

			expect(@comment.valid?).to_not be_valid
	end
end