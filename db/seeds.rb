# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Guest.destroy_all

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'daily_show_guests.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.first(100).each do |row|
  g = Guest.find_or_initialize_by(name: row['Raw_Guest_List'].split(',').first )
  g.occupation = row['GoogleKnowlege_Occupation']
  g.save
end

date = Date.parse('2015-09-08')

(1..40).each do |num|
  Episode.create(date: date, number: num)
  date = date.next
end

ticket1 = Ticket.create(guest_id: 2, episode_id: 2)
ticket2 = Ticket.create(guest_id: 5, episode_id: 3)
ticket3 = Ticket.create(guest_id: 19, episode_id: 7)
ticket4 = Ticket.create(guest_id: 4, episode_id: 6)
