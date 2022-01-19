class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{first_name} #{last_name}"
  end
  def list_roles
    holder = []
    # "#{characters.map{|t| t.name}} - #{shows.each{|t| t}}"
    characters.map{|c| "#{c.name} - #{c.show.name}"}
  end
end