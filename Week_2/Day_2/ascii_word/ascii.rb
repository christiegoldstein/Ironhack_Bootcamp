require "sinatra"
require "artii"

get "/ascii/:word/?:font?/?:secret?" do
	#"Hello #{params[:word]}, #{params[:font]}"
	@word = params[:word]
	@font = params[:font]
	@secret = params[:secret]
	
	if @word == "unicorn" && @font == "special" && @secret == "secret"
		ascifier = Artii::Base.new(:font => "cosmic")
		@ascii_word = ascifier.asciify(@word)
		erb(:fav_animal_ascii)
	elsif @font == nil
		ascifier = Artii::Base.new(:font => "doh")
		@ascii_word = ascifier.asciify(@word)
		erb(:ascii_page)
	elsif @font == "alligator" || @font == "acrobatic" || @font == "avatar"
		ascifier = Artii::Base.new(:font => @font)
		@ascii_word = ascifier.asciify(@word)
		erb(:font_ascii_page)
	end
end