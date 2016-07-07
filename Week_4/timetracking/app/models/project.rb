class Project < ApplicationRecord
	has_many :time_entries

	def self.clean_old
		#find projects older than a week
		#destroy them
		Project.where("created_at < ?", Time.now - 7.days).destroy_all

	end
end


#the_project = Project.find_by(id: 1)
#the_project.time_entries


#this is the same as 
#TimeEntry.where(project_id: 1)