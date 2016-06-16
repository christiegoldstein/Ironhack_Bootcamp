arr = [
	[{:s =>"not yet"},
	 {:se =>"not yet"},
	 {:sec =>"not yet"},
	 {:secr =>"not yet"},
	 {:secre => "not yet"},
	 {:secret => {:unlock => ["I'm", "DONE!"]}}	
	]
]


puts arr[0][5][:secret][:unlock][1]