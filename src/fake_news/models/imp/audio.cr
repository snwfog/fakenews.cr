require "json"

module FakeNews
  class Audio
    include JSON::Serializable

    # string array; required
    # Content MIME types supported (e.g., “audio/mp4”).
    @[JSON::Field(key: "")]
    property mimes : String

    # integer; recommended
    # Minimum audio ad duration in seconds.
    @[JSON::Field(key: "")]
    property minduration : String

    # integer; recommended
    # Maximum audio ad duration in seconds.
    @[JSON::Field(key: "")]
    property maxduration : String

    # integer array; recommended
    # Array of supported audio protocols. Refer to List 5.8.
    @[JSON::Field(key: "")]
    property protocols : String

    # integer; recommended
    # Indicates the start delay in seconds for pre-roll, mid-roll, or post-roll ad placements. Refer to List 5.12.
    @[JSON::Field(key: "")]
    property startdelay : String

    # integer
    # If multiple ad impressions are offered in the same bid request, the sequence number will allow for the coordinated delivery of multiple creatives.
    @[JSON::Field(key: "")]
    property sequence : String

    # integer array
    # Blocked creative attributes. Refer to List 5.3.
    @[JSON::Field(key: "")]
    property battr : String

    # integer
    # Maximum extended ad duration if extension is allowed. If blank or 0, extension is not allowed. If -1, extension is allowed, and there is no time limit imposed. If greater than 0, then the value represents the number of seconds of extended play supported beyond the maxduration value.
    @[JSON::Field(key: "")]
    property maxextended : String

    # integer
    # Minimum bit rate in Kbps.
    @[JSON::Field(key: "")]
    property minbitrate : String

    # integer
    # Maximum bit rate in Kbps.
    @[JSON::Field(key: "")]
    property maxbitrate : String

    # integer array
    # Supported delivery methods (e.g., streaming, progressive). If none specified, assume all are supported. Refer to List 5.15.
    @[JSON::Field(key: "")]
    property delivery : String

    # object array
    # Array of Banner objects (Section 3.2.6) if companion ads are available.
    @[JSON::Field(key: "")]
    property companionad : String

    # integer array
    # List of supported API frameworks for this impression. Refer to List 5.6. If an API is not explicitly listed, it is assumed not to be supported.
    @[JSON::Field(key: "")]
    property api : String

    # integer array
    # Supported DAAST companion ad types. Refer to List 5.14. Recommended if companion Banner objects are included via the companionad array.
    @[JSON::Field(key: "")]
    property companiontype : String

    # integer
    # The maximum number of ads that can be played in an ad pod.
    @[JSON::Field(key: "")]
    property maxseq : String

    # integer
    # Type of audio feed. Refer to List 5.16.
    @[JSON::Field(key: "")]
    property feed : String

    # integer
    # Indicates if the ad is stitched with audio content or delivered independently, where 0 = no, 1 = yes.
    @[JSON::Field(key: "")]
    property stitched : String

    # integer
    # Volume normalization mode. Refer to List 5.17.
    @[JSON::Field(key: "")]
    property nvol : String

    # object
    # Placeholder for exchange-specific extensions to OpenRTB.
    @[JSON::Field(key: "")]
    property ext : String
  end
end
