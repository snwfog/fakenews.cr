class Data
  # string
  # Exchange-specific ID for the data provider.
  property id : Any
  # string
  # Exchange-specific name for the data provider.
  property name : Any
  # object array
  # Array of Segment (Section 3.2.22) objects that contain the actual data values.
  property segment : Segment
  # object
  # Placeholder for exchange-specific extensions to OpenRTB.
  property ext : Any
end

class Segment
  # string
  # ID of the data segment specific to the data provider.
  property id : String
  # string
  # Name of the data segment specific to the data provider.
  property name : String
  # string
  # String representation of the data segment value.
  property value : String
  # object
  # Placeholder for exchange-specific extensions to OpenRTB.
  property ext : String
end
