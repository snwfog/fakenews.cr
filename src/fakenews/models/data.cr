class Data
  JSON.mapping(
    id: Any,
    # string
    # Exchange-specific ID for the data provider.
    name: Any,
    # string
    # Exchange-specific name for the data provider.
    segment: Segment,
    # object array
    # Array of Segment (Section 3.2.22) objects that contain the actual data values.
    ext: Any,
    # object
    # Placeholder for exchange-specific extensions to OpenRTB.
  )
end

class Segment
  JSON.mapping(
    id: String,
    # string
    # ID of the data segment specific to the data provider.
    name: String,
    # string
    # Name of the data segment specific to the data provider.
    value: String,
    # string
    # String representation of the data segment value.
    ext: String,
    # object
    # Placeholder for exchange-specific extensions to OpenRTB.
  )
end
