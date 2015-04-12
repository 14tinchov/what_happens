desc "Load audios" 
task :load_audios => :environment do

  u = User.first
  Audio.all.each do |a|
    a.user_id = u.id
    a.save!
  end
  
  puts "\n Succes!"
end 