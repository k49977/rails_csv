require 'csv'

CSV.generate do |csv|
  column_names = %w(name)
  csv << column_names
  @users.each do |user|
    column_values = [
      user.name
    ]
    csv << column_values
  end
end