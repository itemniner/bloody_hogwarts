require 'rails_helper'

RSpec.describe "Course index page", type: :feature do
  describe 'as a visitor' do
        it 'will see a list of all course and how many student assigned to the course' do

        student_1 = Student.create(name: "Ronnie",
                                    age: 16,
                                    house: "Slytherin")
        student_2 = Student.create(name: "Series",
                                    age: 16,
                                    house: "Ravenclaw")

        wand_waving = student_1.courses.create(name: 'Wand Waving')
        bad_juju = student_1.courses.create(name: 'Black Magic')
        potions = student_1.courses.create(name: 'potions')

        bad_juju = student_2.courses.create(name: 'Black Magic')
        potions = student_2.courses.create(name: 'potions')

        

        visit "/courses"
        
        expect(page).to have_content("#{wand_waving.name}: 1")
        expect(page).to have_content("#{bad_juju.name}: 2")
        expect(page).to have_content("#{potions.name}: 2") 
        end
    end
end
