# 
#Base Class
class Mammal
	attr_accessor :gender, :name, :age, :alive
    # optional parameters has to come at the very end
	def initialize(gender, name, age, alive = true)

		@gender = gender
		@name = name
		@age = age
		@alive = alive

	end

   # instance method
	def speak
		raise 'you must implement this in a sub class'
	end

	def increment_age(age = 1)
		 @age += age
	end

	def kill
		# if @alive
		# 	@alive = false
		# end
		@alive = false if @alive
	end

	# class methods
	# self - i.e mammal changes with scope

	def self.type_of_blood
		puts "Mammal are warm blooded"
	end
end

# creating the sub - classes

# human
class Human < Mammal
	def initialize (gender, name, age, alive, hair_color)
		super(gender, name, age, alive)
		@hair_color = hair_color
	end

	def speak
		puts "this is english"
	end
end

# elephant
class Elephant < Mammal
	def initialize (gender, name, age, alive)
		super(gender, name, age, alive)
	end

	def speak
		puts "Trumpeting..."
	end
end

# cat
class Cat < Mammal
	def initialize (gender, name, age, alive, fur_color)
		super(gender, name, age, alive)
		@fur_color = fur_color

	end

	def speak
		puts "Mewo..."
	end
end


jake = Human.new("Male", "Jake", 26, true, "Brown")
jake.speak
jax = Cat.new("Female", "Jax", 2, true, 'white')
jax.speak
dumbo = Elephant.new("Male", "Dumbo", 5, true)
dumbo.speak
# puts anml.age
# puts anml.increment_age
# puts anml.kill

# calling a class method
# Mammal.type_of_blood

