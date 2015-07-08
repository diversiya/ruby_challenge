# encoding: utf-8

def solution text, comment_with
	comment_with.each do |e| 
		matcher = "(#{e}.*?(\\n|$))"
		puts matcher.inspect
		text = text.sub(Regexp.new(matcher), "\n").gsub(/\s$/,'')
	end
	puts text.inspect	
end

result = solution("apples, pears # and bananas\ngrapes\nbananas !apples                           ", ["#", "!"])
