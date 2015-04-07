class Quote < ActiveRecord::Base
	def self.motivation_quotes
		[
			Quote.new(quote: 'When you love and accept yourself, when you know who really cares about you, and when you learn from your mistakes, then you stop caring about what people who don\'t know you think.'),
			Quote.new(quote: 'If everything was perfect, you would never learn and you would never grow.'),
			Quote.new(quote: 'I can never be safe; I always try and go against the grain. As soon as I accomplish one thing, I just set a higher goal. That\'s how I\'ve gotten to where I am.'),
			Quote.new(quote: 'I wanted to sell a million records, and I sold a million records. I wanted to go platinum; I went platinum. I\'ve been working nonstop since I was 15. I don\'t even know how to chill out.'),
			Quote.new(quote: 'Your self-worth is determined by you. You don’t have to depend on someone telling you who you are'),
			Quote.new(quote: 'I don’t feel like I have to please anyone. I feel free. I feel like I’m an adult. I’m grown. I can do what I want. I can say what I want. I can retire if I want. That’s why I’ve worked hard.'),
			Quote.new(quote: 'When I’m not feeling my best I ask myself, "What are you gonna do about it?"I use the negativity to fuel the transformation into a better me.'),
		]
	end
	
end
