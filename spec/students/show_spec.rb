require 'rails_helper'

RSpec.describe 'As a visitor', type: :feature do
    describe 'I visit student show page' do
        it 'will show me the list of that student courses' do
            
                student_1 = Student.create(name: "Ronnie",
                                           age: 16,
                                           house: "Slytherin")
                wand_waving = student_1.courses.create(name: 'Wand Waving')
                bad_juju = student_1.courses.create(name: 'Black Magic')
                potions = student_1.courses.create(name: 'potions')

            visit "/students/#{student_1.id}"

            expect(page).to have_content(student_1.name)
            expect(page).to have_content(wand_waving.name)
            expect(page).to have_content(bad_juju.name)
            expect(page).to have_content(potion.name) 
        end
    end
end


