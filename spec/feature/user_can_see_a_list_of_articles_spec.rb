require "rails_helper"

feature 'List of articles on index page' do
    context 'with articles in db' do
        before do
            visit rooth_path
        end

        it 'displays first article title' do
            expect(page).to have_content 'A breaking news item'
        end

        it 'displays sexond artigle title' do
            expect(page).to have_content 'Some really breaking action'
        end
    end
end