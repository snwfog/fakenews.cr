require "json"
require "./channel"

module Fakenews
  class App < Channel
    include JSON::Serializable
    # string
    # recommended
    # Exchange-specific app ID.
    @[JSON::Field(key: "")]
    property id : String

    # string
    # App name (may be aliased at the publisher’s request).
    @[JSON::Field(key: "")]
    property name : String

    # string
    # A platform-specific application identifier intended to be unique to the app and independent of the exchange. On Android, this should be a bundle or package name (e.g., com.foo.mygame). On iOS, it is typically a numeric ID.
    @[JSON::Field(key: "")]
    property bundle : String

    # string
    # Domain of the app (e.g., “mygame.foo.com”).
    @[JSON::Field(key: "")]
    property domain : String

    # string
    # App store URL for an installed app; for IQG 2.1 compliance.
    @[JSON::Field(key: "")]
    property storeurl : String

    # string array
    # Array of IAB content categories of the app. Refer to List 5.1.
    @[JSON::Field(key: "")]
    property cat : String

    # string array
    # Array of IAB content categories that describe the current section of the app. Refer to List 5.1.
    @[JSON::Field(key: "")]
    property sectioncat : String

    # string array
    # Array of IAB content categories that describe the current page or view of the app. Refer to List 5.1.
    @[JSON::Field(key: "")]
    property pagecat : String

    # string
    # Application version.
    @[JSON::Field(key: "")]
    property ver : String

    # integer
    # Indicates if the app has a privacy policy, where 0 = no, 1 = yes.
    @[JSON::Field(key: "")]
    property privacypolicy : String

    # integer
    # 0 = app is free, 1 = the app is a paid version.
    @[JSON::Field(key: "")]
    property paid : String

    # string
    # Comma separated list of keywords about the app.
    @[JSON::Field(key: "")]
    property keywords : String

    # object
    # Placeholder for exchange-specific extensions to OpenRTB.
    @[JSON::Field(key: "")]
    property ext : String
  end
end
