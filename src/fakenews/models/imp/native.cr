require "json"

module Fakenews
  class Native
    include JSON::Serializable
    # string; required
    # Request payload complying with the Native Ad Specification.
    @[JSON::Field(key: "")]
    property request : String

    # string; recommended
    # Version of the Dynamic Native Ads API to which request complies; highly recommended for efficient parsing.
    @[JSON::Field(key: "")]
    property ver : String

    # integer array
    # List of supported API frameworks for this impression. Refer to List 5.6. If an API is not explicitly listed, it is assumed not to be supported.
    @[JSON::Field(key: "")]
    property api : String

    # integer array
    # Blocked creative attributes. Refer to List 5.3.
    @[JSON::Field(key: "")]
    property battr : String

    # object
    # Placeholder for exchange-specific extensions to OpenRTB.
    @[JSON::Field(key: "")]
    property ext : String
  end
end
