Dir[Rails.root.join('db', 'seeds', '**', '*.rb')].sort.each do |f|
  require f
end
