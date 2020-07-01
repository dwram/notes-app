class NoteList
  def initialize(title, body)
    @note_id = 0
    @notes = {}
    create_note(title, body)
  end

  def create_note(title, body)
    #p "New note -> Title: #{title}, Body: #{body}"
    @note_id += 1
    @notes[@note_id] = [title, body]
  end

  def view_notes
    a = []
    a = @notes.each_pair do |id, note|
      a << [id, note]
    end
    a
  end

  def note_titles
    #p "Viewing #{@note_id} note titles: "
    @notes.each_pair do |id, note|
      p note[0]
    end
  end

  def add_note(title, body)
    create_note(title, body)
  end

  def pick_note(key)
    #p "Note ##{key} selected: #{@notes[key].join(",")}"
    @notes[key]
  end
end