require "sinatra"
require "artii"

get "/ascii/:word" do
	word = params[:word]
	ascifier = Artii::Base.new(:font => "doh")
	@ascii_word = ascifier.asciify(word)
	erb(:ascii_page)
end