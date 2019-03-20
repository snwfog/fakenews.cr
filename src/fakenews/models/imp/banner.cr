require "json"
require "../lists/rtb_2_3"

module Fakenews
  class Banner
    include JSON::Serializable

    # object array; recommended
    # Array of format objects (Section 3.2.10) representing the banner sizes permitted. If none are specified, then use of the h and w attributes is highly recommended.
    @[JSON::Field(key: "")]
    property format : Array(Format)

    # integer
    # Exact width in device independent pixels (DIPS); recommended if no format objects are specified.
    @[JSON::Field(key: "")]
    property w : Int8

    # integer
    # Exact height in device independent pixels (DIPS); recommended if no format objects are specified.
    @[JSON::Field(key: "")]
    property h : Int8

    # integer; DEPRECATED
    # NOTE: Deprecatedinfavoroftheformatarray. Maximum width in device independent pixels (DIPS).
    # wmax: String,

    # integer; DEPRECATED
    # NOTE: Deprecatedinfavoroftheformatarray. Maximum height in device independent pixels (DIPS).
    # hmax: String,

    # integer; DEPRECATED
    # NOTE: Deprecatedinfavoroftheformatarray. Minimum width in device independent pixels (DIPS).
    # wmin: String,

    # integer; DEPRECATED
    # NOTE: Deprecatedinfavoroftheformatarray. Minimum height in device independent pixels (DIPS).
    # hmin: String,

    # integer array
    # Blocked banner ad types. Refer to List 5.2.
    @[JSON::Field(key: "")]
    property btype : Array(BannerAdType)

    # integer array
    # Blocked creative attributes. Refer to List 5.3.
    @[JSON::Field(key: "")]
    property battr : Array(CreativeAttribute)

    # integer
    # Ad position on screen. Refer to List 5.4.
    @[JSON::Field(key: "")]
    property pos : String

    # string array
    # Content MIME types supported. Popular MIME types may include “application/x-shockwave-flash”, “image/jpg”, and “image/gif”.
    @[JSON::Field(key: "")]
    property mimes : String

    # integer
    # Indicates if the banner is in the top frame as opposed to an iframe, where 0 = no, 1 = yes.
    @[JSON::Field(key: "")]
    property topframe : String

    # integer array
    # Directions in which the banner may expand. Refer to List 5.5.
    @[JSON::Field(key: "")]
    property expdir : String

    # integer array
    # List of supported API frameworks for this impression. Refer to List 5.6. If an API is not explicitly listed, it is assumed not to be supported.
    @[JSON::Field(key: "")]
    property api : String

    # string
    # Unique identifier for this banner object. Recommended when Banner objects are used with a Video object (Section 3.2.7) to represent an array of companion ads. Values usually start at 1 and increase with each object; should be unique within an impression.
    @[JSON::Field(key: "")]
    property id : String

    # integer
    # Relevant only for Banner objects used with a Video object (Section 3.2.7) in an array of companion ads. Indicates the companion banner rendering mode relative to the associated video, where 0 = concurrent, 1 = end-card.
    @[JSON::Field(key: "")]
    property vcm : String

    # object
    # Placeholder for exchange-specific extensions to OpenRTB.
    @[JSON::Field(key: "")]
    property ext : String
  end

  class Format
    include JSON::Serializable

    # integer
    # Width in device independent pixels (DIPS).
    @[JSON::Field(key: "")]
    property w : String

    # integer
    # Height in device independent pixels (DIPS).
    @[JSON::Field(key: "")]
    property h : String

    # integer
    # Relative width when expressing size as a ratio.
    @[JSON::Field(key: "")]
    property wratio : String

    # integer
    # Relative height when expressing size as a ratio.
    @[JSON::Field(key: "")]
    property hratio : String

    # integer
    # The minimum width in device independent pixels (DIPS) at which the ad will be displayed the size is expressed as a ratio.
    @[JSON::Field(key: "")]
    property wmin : String

    # object
    # Placeholder for exchange-specific extensions to OpenRTB.
    @[JSON::Field(key: "")]
    property ext : String
  end
end
