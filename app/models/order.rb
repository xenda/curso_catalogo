class Order < ActiveRecord::Base

  validates_presence_of :store_id
  validates_presence_of :document_type
  #alidates_presence_of :client_id
  belongs_to :client

  DOCUMENT_TYPES = {:invoice => "Factura", :ticket => "Boleta" }

  before_create :setup_document_type

  def setup_document_type
    self.document_type ||= DOCUMENT_TYPES[:invoice]
  end

end
