class Device
  JSON.mapping(
    ua: Any,
    # string; recommended
    # Browser user agent string.
    geo: Any,
    # object; recommended
    # Location of the device assumed to be the user’s current location defined by a Geo object (Section 3.2.19).
    dnt: Any,
    # integer; recommended
    # Standard “Do Not Track” flag as set in the header by the browser, where 0 = tracking is unrestricted, 1 = do not track.
    lmt: Any,
    # integer; recommended
    # “Limit Ad Tracking” signal commercially endorsed (e.g., iOS, Android), where 0 = tracking is unrestricted, 1 = tracking must be limited per commercial guidelines.
    ip: Any,
    # string; recommended
    # IPv4 address closest to device.
    ipv6: Any,
    # string
    # IP address closest to device as IPv6.
    devicetype: Any,
    # integer
    # The general type of device. Refer to List 5.21.
    make: Any,
    # string
    # Device make (e.g., “Apple”).
    model: Any,
    # string
    # Device model (e.g., “iPhone”).
    os: Any,
    # string
    # Device operating system (e.g., “iOS”).
    osv: Any,
    # string
    # Device operating system version (e.g., “3.1.2”).
    hwv: Any,
    # string
    # Hardware version of the device (e.g., “5S” for iPhone 5S).
    h: Any,
    # integer
    # Physical height of the screen in pixels.
    w: Any,
    # integer
    # Physical width of the screen in pixels.
    ppi: Any,
    # integer
    # Screen size as pixels per linear inch.
    pxratio: Any,
    # float
    # The ratio of physical pixels to device independent pixels.
    js: Any,
    # integer
    # Support for JavaScript, where 0 = no, 1 = yes.
    geofetch: Any,
    # integer
    # Indicates if the geolocation API will be available to JavaScript code running in the banner, where 0 = no, 1 = yes.
    flashver: Any,
    # string
    # Version of Flash supported by the browser.
    language: Any,
    # string
    # Browser language using ISO-639-1-alpha-2.

    carrier: Any,
    # string
    # Carrier or ISP (e.g., “VERIZON”) using exchange curated string names which should be published to bidders a priori.
    mccmnc: Any,
    # string
    # Mobile carrier as the concatenated MCC-MNC code (e.g., “310-005” identifies Verizon Wireless CDMA in the USA). Refer to https://en.wikipedia.org/wiki/Mobile_country_code for further examples. Note that the dash between the MCC and MNC parts is required to remove parsing ambiguity.

    connectiontype: Any,
    # integer
    # Network connection type. Refer to List 5.22.
    ifa: Any,
    # string
    # ID sanctioned for advertiser use in the clear (i.e., not hashed).
    didsha1: Any,
    # string
    # Hardware device ID (e.g., IMEI); hashed via SHA1.
    didmd5: Any,
    # string
    # Hardware device ID (e.g., IMEI); hashed via MD5.
    dpidsha1: Any,
    # string
    # Platform device ID (e.g., Android ID); hashed via SHA1.
    dpidmd5: Any,
    # string
    # Platform device ID (e.g., Android ID); hashed via MD5.
    macsha1: Any,
    # string
    # MAC address of the device; hashed via SHA1.
    macmd5: Any,
    # string
    # MAC address of the device; hashed via MD5.
    ext: Any,
    # object
    # Placeholder for exchange-specific extensions to OpenRTB.
  )
end
