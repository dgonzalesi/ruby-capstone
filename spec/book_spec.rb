require_relative '../src/book'
require_relative '../src/author'
require './src/genre'
require_relative '../src/label'
require_relative '../src/item'
require 'date'
require 'json'
require 'securerandom'

# disable: Metrics/ClassLength

describe Book do
  let(:title) { 'The Book' }
  let(:genre) { Genre.new('The Genre') }
  let(:author) { Author.new('The Author First Name', 'Last Name') }
  let(:source) { 'The Source' }
  let(:label) { Label.new('The Label', 'The Color') }
  let(:publish_date) { Date.new(2005, 1, 1) }
  let(:publisher) { 'The Publisher' }
  let(:cover_state) { 'The Cover State' }
  let(:book) do
    Book.new(
      title,
      genre,
      author,
      source,
      label,
      publish_date,
      publisher,
      cover_state
    ) end

  context 'Initilize' do
    it 'has a title' do
      expect(book.title).to eq('The Book')
    end

    it 'has a publisher' do
      expect(book.publisher).to eq('The Publisher')
    end

    it 'has a cover state' do
      expect(book.cover_state).to eq('The Cover State')
      puts 'The cover is bad' if book.cover_state == 'bad'
    end

    it 'can be created' do
      expect(book).to be_a(Book)
    end
  end

  context 'move_to_archive' do
    it 'can be archived' do
      book.move_to_archive
      expect(book.archived).to eq(false)
    end
  end
end
