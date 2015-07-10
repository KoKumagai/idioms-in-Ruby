params = {}

# nil guards
Array(params[:items]).each do |item|
  # ...
end

# equivalent to
(params[:items] || []).each do |item|
  # ...
end