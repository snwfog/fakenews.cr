require "json"
require "./channel"

module FakeNews
  class Site < Channel
    include JSON::Serializable
    # string; recommended
    # Exchange-specific site ID.
    @[JSON::Field(key: "")]
    property id : String

    # string
    # Site name (may be aliased at the publisher’s request).
    @[JSON::Field(key: "")]
    property name : String

    # string
    # Domain of the site (e.g., “mysite.foo.com”).
    @[JSON::Field(key: "")]
    property domain : String

    # string array
    # Array of IAB content categories of the site. Refer to List 5.1.
    @[JSON::Field(key: "")]
    property cat : String

    # string array
    # Array of IAB content categories that describe the current section of the site. Refer to List 5.1.
    @[JSON::Field(key: "")]
    property sectioncat : String

    # string array
    # Array of IAB content categories that describe the current page or view of the site. Refer to List 5.1.
    @[JSON::Field(key: "")]
    property pagecat : String

    # string
    # URL of the page where the impression will be shown.
    @[JSON::Field(key: "")]
    property page : String

    # string
    # Referrer URL that caused navigation to the current page.
    @[JSON::Field(key: "")]
    property ref : String

    # string
    # Search string that caused navigation to the current page.
    @[JSON::Field(key: "")]
    property search : String

    # integer
    # Indicates if the site has been programmed to optimize layout when viewed on mobile devices, where 0 = no, 1 = yes.
    @[JSON::Field(key: "")]
    property mobile : String

    # integer
    # Indicates if the site has a privacy policy, where 0 = no, 1 = yes.
    @[JSON::Field(key: "")]
    property privacypolicy : String

    # string
    # Comma separated list of keywords about the site.
    @[JSON::Field(key: "")]
    property keywords : String

    # object
    # Placeholder for exchange-specific extensions to OpenRTB.
    @[JSON::Field(key: "")]
    property ext : String
  end
end
