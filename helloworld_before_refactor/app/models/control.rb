class Control < ActiveRecord::Base
	validates :name, presence: true
	validates :email, presence: true, length: { minimum: 2 }
	
	before_create :status_assign

	attr_accessor :marker

	def status_assign
		self.ost_id = 2
	end
end
