class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network

  def actors_list
    self.characters.map do |char|
      "#{char.actor.full_name}"
    end
  end
end