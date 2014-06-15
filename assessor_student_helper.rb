module AssessorStudentHelper

  def self.assign_students_to_assessors(assessor_names, students)
    assessor_count = assessor_names.count

    students.each_with_index.with_object(Hash.new(Array.new)) do |(student, index), assessors_students|
      assessor = assessor_names.at(index % assessor_count)
      assessors_students[assessor] += [student]
    end
  end

  def self.generate_markdown_file(assessor_students)
    File.open("./assessor_assignments_for_cohorts/#{ARGV[0]}.md", 'w') do |file|
      assessor_students.each do |assessor, students|
        file << "## #{assessor}\n"

        students.each do |student|
          file << "- #{student}\n"
        end

        file << "\n"
      end
    end
  end
end
