class Cheque < ActiveRecord::Base
  attr_accessible :amount, :cross, :recipient, :sender


    validates :recipient,:sender,:amount,:cross, :presence => true
    validates :amount, :numericality => { :greater_than_or_equal_to => 0.01 , :less_than_or_equal_to => 99999999}
    default_scope order: 'cheques.created_at DESC'

end
