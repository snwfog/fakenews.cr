require "json"

module FakeNews
  class Data
    include JSON::Serializable

    # string
    # Exchange-specific ID for the data provider.
    @[JSON::Field(key: "")]
    property id : String

    # string
    # Exchange-specific name for the data provider.
    @[JSON::Field(key: "")]
    property name : String

    # object array
    # Array of Segment (Section 3.2.22) objects that contain the actual data values.
    @[JSON::Field(key: "")]
    property segment : Segment

    # object
    # Placeholder for exchange-specific extensions to OpenRTB.
    @[JSON::Field(key: "")]
    property ext : String
  end

  class Segment
    include JSON::Serializable

    # string
    # ID of the data segment specific to the data provider.
    @[JSON::Field(key: "")]
    property id : String

    # string
    # Name of the data segment specific to the data provider.
    @[JSON::Field(key: "")]
    property name : String

    # string
    # String representation of the data segment value.
    @[JSON::Field(key: "")]
    property value : String

    # object
    # Placeholder for exchange-specific extensions to OpenRTB.
    @[JSON::Field(key: "")]
    property ext : String
  end
end
