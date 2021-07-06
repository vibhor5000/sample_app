class User <ApplicationRecord

  # validates_length_of :first_name, in: (20...30)
  def gender_string
    gender == 'F' ? "FEMALE" : "MALE"
  end

end


