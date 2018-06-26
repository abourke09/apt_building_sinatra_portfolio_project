Building.create(name: "NEMA")
Building.create(name: "Duboce Apartments")
Building.create(name: "Broadway Apartments")
Building.create(name: "Rincon Green")
Building.create(name: "Jasper")
Building.create(name: "Preston Apartments")
Building.create(name: "Beale")
Building.create(name: "Van Ness")
Building.create(name: "MB360")
Building.create(name: "Avalon Hayes Valley")

@example_resident = Resident.create(
  :username => "abourke09",
  :password => "pancakes!",
  :name => "Annie Bourke",
  :apt_number => 3,
  :building_id => 7,
)
