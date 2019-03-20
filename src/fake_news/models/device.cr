require "json"

module FakeNews
  class Device
    include JSON::Serializable

    # string; recommended
    # Browser user agent string.
    @[JSON::Field(key: "")]
    property ua : String

    # object; recommended
    # Location of the device assumed to be the user’s current location defined by a Geo object (Section 3.2.19).
    @[JSON::Field(key: "")]
    property geo : String

    # integer; recommended
    # Standard “Do Not Track” flag as set in the header by the browser, where 0 = tracking is unrestricted, 1 = do not track.
    @[JSON::Field(key: "")]
    property dnt : String

    # integer; recommended
    # “Limit Ad Tracking” signal commercially endorsed (e.g., iOS, Android), where 0 = tracking is unrestricted, 1 = tracking must be limited per commercial guidelines.
    @[JSON::Field(key: "")]
    property lmt : String

    # string; recommended
    # IPv4 address closest to device.
    @[JSON::Field(key: "")]
    property ip : String

    # string
    # IP address closest to device as IPv6.
    @[JSON::Field(key: "")]
    property ipv6 : String

    # integer
    # The general type of device. Refer to List 5.21.
    @[JSON::Field(key: "")]
    property devicetype : String

    # string
    # Device make (e.g., “Apple”).
    @[JSON::Field(key: "")]
    property make : String

    # string
    # Device model (e.g., “iPhone”).
    @[JSON::Field(key: "")]
    property model : String

    # string
    # Device operating system (e.g., “iOS”).
    @[JSON::Field(key: "")]
    property os : String

    # string
    # Device operating system version (e.g., “3.1.2”).
    @[JSON::Field(key: "")]
    property osv : String

    # string
    # Hardware version of the device (e.g., “5S” for iPhone 5S).
    @[JSON::Field(key: "")]
    property hwv : String

    # integer
    # Physical height of the screen in pixels.
    @[JSON::Field(key: "")]
    property h : String

    # integer
    # Physical width of the screen in pixels.
    @[JSON::Field(key: "")]
    property w : String

    # integer
    # Screen size as pixels per linear inch.
    @[JSON::Field(key: "")]
    property ppi : String

    # float
    # The ratio of physical pixels to device independent pixels.
    @[JSON::Field(key: "")]
    property pxratio : String

    # integer
    # Support for JavaScript, where 0 = no, 1 = yes.
    @[JSON::Field(key: "")]
    property js : String

    # integer
    # Indicates if the geolocation API will be available to JavaScript code running in the banner, where 0 = no, 1 = yes.
    @[JSON::Field(key: "")]
    property geofetch : String

    # string
    # Version of Flash supported by the browser.
    @[JSON::Field(key: "")]
    property flashver : String

    # string
    # Browser language using ISO-639-1-alpha-2.
    @[JSON::Field(key: "")]
    property language : String

    # string
    # Carrier or ISP (e.g., “VERIZON”) using exchange curated string names which should be published to bidders a priori.
    @[JSON::Field(key: "")]
    property carrier : String

    # string
    # Mobile carrier as the concatenated MCC-MNC code (e.g., “310-005” identifies Verizon Wireless CDMA in the USA). Refer to https ://en.wikipedia.org/wiki/Mobile_country_code for further examples. Note that the dash between the MCC and MNC parts is required to remove parsing ambiguity
    @[JSON::Field(key: "")]
    property mccmnc : String

    # integer
    # Network connection type. Refer to List 5.22.
    @[JSON::Field(key: "")]
    property connectiontype : String

    # string
    # ID sanctioned for advertiser use in the clear (i.e., not hashed).
    @[JSON::Field(key: "")]
    property ifa : String

    # string
    # Hardware device ID (e.g., IMEI); hashed via SHA1.
    @[JSON::Field(key: "")]
    property didsha1 : String

    # string
    # Hardware device ID (e.g., IMEI); hashed via MD5.
    @[JSON::Field(key: "")]
    property didmd5 : String

    # string
    # Platform device ID (e.g., Android ID); hashed via SHA1.
    @[JSON::Field(key: "")]
    property dpidsha1 : String

    # string
    # Platform device ID (e.g., Android ID); hashed via MD5.
    @[JSON::Field(key: "")]
    property dpidmd5 : String

    # string
    # MAC address of the device; hashed via SHA1.
    @[JSON::Field(key: "")]
    property macsha1 : String

    # string
    # MAC address of the device; hashed via MD5.
    @[JSON::Field(key: "")]
    property macmd5 : String

    # object
    # Placeholder for exchange-specific extensions to OpenRTB.
    @[JSON::Field(key: "")]
    property ext : String
  end
end
