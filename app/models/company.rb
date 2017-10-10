class Company < ApplicationRecord
    has_many :jobs


    # companies = Company.includes(:jobs)

    # companies.each do |companies|
    #     puts companies.jobs.count
    # end
end
