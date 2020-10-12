require 'time'

class Event

  attr_accessor :start_date, :duration, :title, :attendees, :end_date

  def initialize(start_date, duration, title, attendees)
    @start_date = Time.parse(start_date)
    @duration = duration.to_i
    @title = title.to_s
    @attendees = attendees
    @end_date = @start_date + @duration*60
  end

  def postpone_24h
    @start_date = self.start_date + 24*60*60
  end

  def is_past?
    @start_date < Time.now
  end

  def is_future?
    @start_date > Time.now
  end

  def is_soon?
    Time.now > (@start_date - 30*60) && Time.now < @start_date
  end

  def to_s
    puts "> Titre de la réunion: #{self.title}"
    puts "> Début de la réunion: #{self.start_date.strftime("%Y-%m-%d %H:%M")}"
    puts "> Fin de la réunion: #{self.end_date.strftime("%Y-%m-%d %H:%M")}"
    puts "> Réunion déja passée: #{self.is_past?}"
    puts "> Réunion à venir: #{self.is_future?}"
    puts "> Réunion bientôt: #{self.is_soon?}"
  end
end