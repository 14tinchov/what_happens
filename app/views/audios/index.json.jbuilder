json.array!(@audios) do |audio|
  json.extract! audio, :id, :title, :description, :sound, :user_id
  json.url audio_url(audio, format: :json)
end
