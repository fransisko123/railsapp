class Student < ApplicationRecord
  require 'csv'

  paginates_per 10

  validates :name, presence: true
  validates :gender, presence: true
  validates :date_of_birth, presence: true

  def self.to_csv collection
    CSV.generate(col_sep: ";") do |csv|
      csv << ["Name", "Gender", "Date Of Birth"]
      collection.find_each do |student|
        csv << [student.name, student.gender, student.date_of_birth]
      end
    end
  end

end
