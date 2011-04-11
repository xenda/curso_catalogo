class Product < ActiveRecord::Base

  validates_presence_of :name
  validates_presence_of :available  
  validates_numericality_of :price

  scope :unavailable, where(:available => false)
  scope :available, where(:available => true)
  scope :expensive, where("price > 100")
  scope :pricier_than, lambda{|price| where("price > #{price}")}

  belongs_to :category

  def to_param
    "#{id}-#{name.try(:parameterize)}"
  end

  def to_s
    name
  end

  cattr_reader :per_page
  @@per_page = 10 

end
