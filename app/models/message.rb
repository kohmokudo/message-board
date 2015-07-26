class Message < ActiveRecord::Base
  validates :name , length: {  maximum: 20 } , presence: true
  validates :body , length: {minimum: 2 , maximum: 30 } , presence: true
  
  #MENTORADD FROM-MIGRATION-ADDAGETOMESSAGE
  #These 3 validations is missunderstanding
  #validates :age , only_integer , presence: true
  #validates :age , numericality: only_integer , presence: true
  #validates_numericality_of(age [:only_integer]) 
  
  validates :age , numericality: { only_integer: true , greater_than_or_equal_to: 0 , less_than_or_equal_to: 150 } , presence: true
end
