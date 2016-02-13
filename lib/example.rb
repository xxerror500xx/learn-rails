class Example < Object

  # This is a comment.

  # attr_accessor creates the get set methods as well as .new for the
  # below attributes for the example object
  attr_accessor :honorific
  attr_accessor :name
  attr_accessor :date

  # Example.new("Obama", Date(1990, 3, 12))
  def initialize(name, date) # Takes in two Args / parameters
    # @name is an instance variable which means that the scope
    # of the name attribute can only be used on a created Example object
    @name = name
    # an if statement that checks to see if arg date is nil or todays
    # date and returns todays date if it is.
    @date = date.nil? ? Date.today : date
  end

  def backwards_name
    # reverses the name string of the created object Example
    @name.reverse
  end

  # Override the original to string method from the object
  def to_s
    # pretty sure this means that if anyone wants to .to_s an object
    # created from the Example class it will simply return the objects
    # name attribute. not sure why you would want to do that... but atleast
    # it's only this class scope...
    @name
  end

  def titled_name # identify if the instanced object is honorific
    @honorific ||= 'Esteemed'
    titled_name = "#{@honorific} #{@name}" # return a interpolated string
  end

  def december_birthdays # identify what birthdays from the given hash are in december.
    born_in_december = [ ] # create a new array to hold all december bdays
    famous_birthdays.each do |name, date| # itterates over given hash object
      if date.month == 12 # Compares month to 12
        born_in_december << name # appends to the end of the array
      end
    end
    born_in_december # returns the array with only december bdays.
  end

  private # all methods that follow will be made
          # private: not accessible for outside objects...

# create a hash to be used above
  def famous_birthdays
    birthdays = {
      'Ludwig van Beethoven' => Date.new(1770, 12, 16),
      'Dave Bruebeck' => Date.new(1920, 12, 6),
      'Buddy Holly' => Date.new(1936, 9, 7),
      'Cliff Minks' => Date.new(1982, 12, 23),
      'Keith Richards' => Date.new(1943, 12, 18)
    }
  end

end
