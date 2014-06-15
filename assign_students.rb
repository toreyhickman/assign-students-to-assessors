require 'dbc-ruby'
require_relative "dbc_patch"
require_relative "assessor_student_helper"


if ARGV[0] && __FILE__ == $0

	DBC::token = ENV["DBC_API_KEY"]

	cohort = DBC::Cohort.find_by_name(ARGV[0])
	shuffled_students = cohort.student_names.shuffle

	assessor_names = ARGV[1..-1]
	assessors_students = AssessorStudentHelper.assign_students_to_assessors(assessor_names, shuffled_students)

	AssessorStudentHelper.generate_markdown_file(assessors_students)
end
