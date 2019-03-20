require "json"

module Fakenews
  class Channel
    include JSON::Serializable

    # object
    # Details about the Publisher (Section 3.2.15) of the site.
    @[JSON::Field(key: "")]
    property publisher : String

    # object
    # Details about the Content (Section 3.2.16) within the site.
    @[JSON::Field(key: "")]
    property content : String
  end

  class Publisher
    include JSON::Serializable

    # string
    # Exchange-specific publisher ID.
    @[JSON::Field(key: "")]
    property id : String

    # string
    # Publisher name (may be aliased at the publisher’s request).
    @[JSON::Field(key: "")]
    property name : String

    # string array
    # Array of IAB content categories that describe the publisher. Refer to List 5.1.
    @[JSON::Field(key: "")]
    property cat : String

    # string
    # Highest level domain of the publisher (e.g., “publisher.com”).
    @[JSON::Field(key: "")]
    property domain : String

    # object
    # Placeholder for exchange-specific extensions to OpenRTB.
    @[JSON::Field(key: "")]
    property ext : String
  end
end
