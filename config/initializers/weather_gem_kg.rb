WeatherGem.configure do |c|         # => MyGem
  c.api_key_apixu = '6d79fff9ef764b8c85d61836190907'              # => 1
  c.api_key_dark = '0a06f48b71537e4e72554c3f8d39d234'  # => "some string"
end                            # => "some string"

# WeatherGemKg.config  # => #<struct MyGem::Config property1=1, property2="some string">
