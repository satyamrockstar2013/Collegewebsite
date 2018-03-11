json.array!(@staffs) do |staff|
  json.extract! staff, :id, :staffid, :name, :dob, :laddress, :lphone, :address, :pphone, :mobile, :email, :doj, :bid, :designation, :qualification, :priority, :nrpjc, :gender, :status, :path, :profile
  json.url staff_url(staff, format: :json)
end
