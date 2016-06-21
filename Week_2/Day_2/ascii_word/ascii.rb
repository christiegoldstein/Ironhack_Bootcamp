require "sinatra"
require "artii"

get "/ascii/:word/?:font?" do
	#"Hello #{params[:word]}, #{params[:font]}"
	@word = params[:word]
	@font = params[:font]
	if @font == nil
		ascifier = Artii::Base.new(:font => "doh")
		@ascii_word = ascifier.asciify(@word)
		erb(:ascii_page)
	elsif @font == "alligator" || @font == "acrobatic" || @font == "avatar"
		ascifier = Artii::Base.new(:font => @font)
		@ascii_word = ascifier.asciify(@word)
		erb(:font_ascii_page)
	end
end