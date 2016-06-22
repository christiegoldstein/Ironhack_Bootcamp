class PasswordChecker
	# def initialize
	# 	#@email = []
	# 	#@password = []
	# end

	def check_length(password)
		if password.length	> 7
			true
		else
			false
		end
	end

	def letter_check(password)

		if password =~ /[A-Z]/ && password =~ /[a-z]/
			true
		else
			false
		end

	end

	def check_one_of_each(password)
		if password =~ /[^A-Za-z0-9]/ && password =~ /[0-9]/ && password =~ /[A-Za-z]/
			true
		else
			false
		end
	end

	def check_name_domain(email, password)
		arr = email.split('@')

		arr2 = arr[1].split('.')

		if password.include?(arr[0]) || password.include?(arr2[0])
			false
		else
			true
		end

	end

#
end