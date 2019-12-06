require 'rails_helper'

RSpec.describe "Students index page", type: :feature do
  describe 'as a visitor' do
        it 'will see a list of all student and information' do

        student_1 = Student.create(name: "Ronnie",
                                    age: 16,
                                    house: "Slytherin")
        student_2 = Student.create(name: "Series",
                                    age: 16,
                                    house: "Ravenclaw")

        

        visit "/students"
        
        expect(page).to have_content(student_1.name)
        expect(page).to have_content(student_1.age)
        expect(page).to have_content(student_1.house)

        expect(page).to have_content(student_2.name)
        expect(page).to have_content(student_2.age)
        expect(page).to have_content(student_2.house)
        
        end
    end
end
