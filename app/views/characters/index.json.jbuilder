json.array!(@characters) do |character|
  json.extract! character, :id, :name, :user_id, :hp, :mp, :ep, :str, :dex, :spd, :con, :end, :min, :sol, :lv, :exp
  json.url character_url(character, format: :json)
end
