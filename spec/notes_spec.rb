require 'rspec'

require '../lib/note_list'

describe 'Create NodeList' do
    it 'creates a note with "title, body"' do
      classname = NoteList.new('title', 'body')
      expect(classname.view_notes).to eq([[1, ['title', 'body']]])
    end
end

describe 'Add a new note' do
  it 'creates a note' do
    classname = NoteList.new('title', 'body')
    classname.add_note('Chore', 'Dishes')
    expect(classname.view_notes).to eq([[1, ['title', 'body']], [2, ['Chore','Dishes']]])
  end
end

describe 'Pick Note' do
  it 'picks a note from the repo' do
    classname = NoteList.new('title', 'body')
    classname.add_note('Chore', 'Dishes')
    expect(classname.pick_note(1)).to eq(['title','body'])
  end
end