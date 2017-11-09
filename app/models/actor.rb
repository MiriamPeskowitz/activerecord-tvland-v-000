class Actor < ActiveRecord::Base
  # * An actor has many characters and has many shows through characters.
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    puts "#{first_name} + #{last_name}"
  end 

  def list_roles
    self.characters do |character|
      puts "character"
    end
  end 
end
