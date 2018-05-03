class User < ApplicationRecord

	def self.import(file)
		begin
	    CSV.foreach(file.path, headers: true) do |row|
	      User.create! row.to_hash
	    end
		rescue Exception => e
			return false
		end
  end
end
