class User

  attr_accessor :email, :age
  @@all_user = Array.new

  def initialize(email, age)

    @email = email
    @age = age.to_i
    @@all_user << self
  end

  def self.all
    @@all_user.to_s
  end

  def self.find_by_email(email)
    @@all_user.each do |user|
      if user.email == email 
        return user.age
      end
    end
  end

end