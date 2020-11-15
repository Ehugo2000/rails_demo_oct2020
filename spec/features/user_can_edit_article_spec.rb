feature 'User can' do
  context 'edit an article' do
    let(:article) { create(:article, title: 'Some crispy news', content: 'This is crispy content') }
    before do
      visit article_path(article)
      click_on 'Edit this article'
    end

    it 'to change the content' do
      fill_in 'Content', with: 'It is almost friday and we have a grad-party!'
      click_on 'Update Article'
      expect(page).to have_content 'It is almost friday and we have a grad-party!'
    end
  end
end 