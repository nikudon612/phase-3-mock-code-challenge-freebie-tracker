class Company < ActiveRecord::Base
  has_many :freebies
  has_many :devs, through: :freebies

  def give_freebie(dev, item_name, value)
    Freebie.create(dev: dev, item_name: item_name, value: value, company: self)
  end

  def self.oldest_company
    # returns the Company instance with the earliest founding year
    # find minimum founding_year
    self.all.order(:founding_year).first
  end
end
