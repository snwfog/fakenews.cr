class Device
  property ua : Any
  # string; recommended
  # Browser user agent string.
  property geo : Any
  # object; recommended
  # Location of the device assumed to be the user’s current location defined by a Geo object (Section 3.2.19).
  property dnt : Any
  # integer; recommended
  # Standard “Do Not Track” flag as set in the header by the browser, where 0 = tracking is unrestricted, 1 = do not track.
  property lmt : Any
  # integer; recommended
  # “Limit Ad Tracking” signal commercially endorsed (e.g., iOS, Android), where 0 = tracking is unrestricted, 1 = tracking must be limited per commercial guidelines.
  property ip : Any
  # string; recommended
  # IPv4 address closest to device.
  property ipv6 : Any
  # string
  # IP address closest to device as IPv6.
  property devicetype : Any
  # integer
  # The general type of device. Refer to List 5.21.
  property make : Any
  # string
  # Device make (e.g., “Apple”).
  property model : Any
  # string
  # Device model (e.g., “iPhone”).
  property os : Any
  # string
  # Device operating system (e.g., “iOS”).
  property osv : Any
  # string
  # Device operating system version (e.g., “3.1.2”).
  property hwv : Any
  # string
  # Hardware version of the device (e.g., “5S” for iPhone 5S).
  property h : Any
  # integer
  # Physical height of the screen in pixels.
  property w : Any
  # integer
  # Physical width of the screen in pixels.
  property ppi : Any
  # integer
  # Screen size as pixels per linear inch.
  property pxratio : Any
  # float
  # The ratio of physical pixels to device independent pixels.
  property js : Any
  # integer
  # Support for JavaScript, where 0 = no, 1 = yes.
  property geofetch : Any
  # integer
  # Indicates if the geolocation API will be available to JavaScript code running in the banner, where 0 = no, 1 = yes.
  property flashver : Any
  # string
  # Version of Flash supported by the browser.
  property language : Any
  # string
  # Browser language using ISO-639-1-alpha-2.

  property carrier : Any
  # string
  # Carrier or ISP (e.g., “VERIZON”) using exchange curated string names which should be published to bidders a priori.
  property mccmnc : Any
  # string
  property # Mobile carrier as the concatenated MCC-MNC code (e.g., “310-005” identifies Verizon Wireless CDMA in the USA). Refer to https ://en.wikipedia.org/wiki/Mobile_country_code for further examples. Note that the dash between the MCC and MNC parts is required to remove parsing ambiguity

  property connectiontype : Any
  # integer
  # Network connection type. Refer to List 5.22.
  property ifa : Any
  # string
  # ID sanctioned for advertiser use in the clear (i.e., not hashed).
  property didsha1 : Any
  # string
  # Hardware device ID (e.g., IMEI); hashed via SHA1.
  property didmd5 : Any
  # string
  # Hardware device ID (e.g., IMEI); hashed via MD5.
  property dpidsha1 : Any
  # string
  # Platform device ID (e.g., Android ID); hashed via SHA1.
  property dpidmd5 : Any
  # string
  # Platform device ID (e.g., Android ID); hashed via MD5.
  property macsha1 : Any
  # string
  # MAC address of the device; hashed via SHA1.
  property macmd5 : Any
  # string
  # MAC address of the device; hashed via MD5.
  property ext : Any
  # object
  # Placeholder for exchange-specific extensions to OpenRTB.
end
