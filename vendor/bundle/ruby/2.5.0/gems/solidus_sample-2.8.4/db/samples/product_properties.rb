# frozen_string_literal: true

products =
  {
    "Ruby on Rails Baseball Jersey" =>
    {
      "Manufacturer" => "Wilson",
      "Brand" => "Wannabe Sports",
      "Model" => "JK1002",
      "Shirt Type" => "Baseball Jersey",
      "Sleeve Type" => "Long",
      "Made from" => "100% cotton",
      "Fit" => "Loose",
      "Gender" => "Men's"
    },
    "Ruby on Rails Jr. Spaghetti" =>
    {
      "Manufacturer" => "Jerseys",
      "Brand" => "Resiliance",
      "Model" => "TL174",
      "Shirt Type" => "Jr. Spaghetti T",
      "Sleeve Type" => "None",
      "Made from" => "90% Cotton, 10% Nylon",
      "Fit" => "Form",
      "Gender" => "Women's"
    },
    "Ruby on Rails Ringer T-Shirt" =>
    {
      "Manufacturer" => "Jerseys",
      "Brand" => "Conditioned",
      "Model" => "TL9002",
      "Shirt Type" => "Ringer T",
      "Sleeve Type" => "Short",
      "Made from" => "100% Vellum",
      "Fit" => "Loose",
      "Gender" => "Men's"
    },
    "Ruby on Rails Tote" =>
    {
      "Type" => "Tote",
      "Size" => %{15" x 18" x 6"},
      "Material" => "Canvas"
    },
    "Ruby on Rails Bag" =>
    {
      "Type" => "Messenger",
      "Size" => %{14 1/2" x 12" x 5"},
      "Material" => "600 Denier Polyester"
    },
    "Ruby on Rails Mug" =>
    {
      "Type" => "Mug",
      "Size" => %{4.5" tall, 3.25" dia.}
    },
    "Ruby on Rails Stein" =>
    {
      "Type" => "Stein",
      "Size" => %{6.75" tall, 3.75" dia. base, 3" dia. rim}
    }
  }

products.each do |name, properties|
  product = Spree::Product.find_by(name: name)
  properties.each do |prop_name, prop_value|
    product.set_property(prop_name, prop_value)
  end
end
