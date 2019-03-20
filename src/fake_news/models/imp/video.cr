require "json"

module FakeNews
  class Video
    include JSON::Serializable
    # string array; required
    # Content MIME types supported (e.g., “video/x-ms-wmv”, “video/mp4”).
    @[JSON::Field(key: "")]
    property mimes : String

    # integer; recommended
    # Minimum video ad duration in seconds.
    @[JSON::Field(key: "")]
    property minduration : String

    # integer; recommended
    # Maximum video ad duration in seconds.
    @[JSON::Field(key: "")]
    property maxduration : String

    # integer array; recommended
    # Array of supported video protocols. Refer to List 5.8. At least one supported protocol must be specified in either the protocol or protocols attribute.
    @[JSON::Field(key: "")]
    property protocols : String

    # integer; DEPRECATED
    # Supported video protocol. Refer to List 5.8. At least one supported protocol must be specified in either the protocol or protocols attribute.
    # NOTE: Deprecatedinfavorofprotocols
    # @[JSON::Field(key: "")]
    # property protocol : String

    # integer; recommended
    # Width of the video player in device independent pixels (DIPS).
    @[JSON::Field(key: "")]
    property w : String

    # integer; recommended
    # Height of the video player in device independent pixels (DIPS).
    @[JSON::Field(key: "")]
    property h : String

    # integer; recommended
    # Indicates the start delay in seconds for pre-roll, mid-roll, or post-roll ad placements. Refer to List 5.12 for additional generic values.
    @[JSON::Field(key: "")]
    property startdelay : String

    # integer
    # Placement type for the impression. Refer to List 5.9.
    @[JSON::Field(key: "")]
    property placement : String

    # integer
    # Indicates if the impression must be linear, nonlinear, etc. If none specified, assume all are allowed. Refer to List 5.7.
    @[JSON::Field(key: "")]
    property linearity : String

    # integer
    # Indicates if the player will allow the video to be skipped, where 0 = no, 1 = yes.
    @[JSON::Field(key: "")]
    property skip : String
    # If a bidder sends markup/creative that is itself skippable, the Bid object should include the attr array with an element of 16 indicating skippable video. Refer to List 5.3.

    # integer; default 0
    # Videos of total duration greater than this number of seconds can be skippable; only applicable if the ad is skippable.
    @[JSON::Field(key: "")]
    property skipmin : String

    # integer; default 0
    # Number of seconds a video must play before skipping is enabled; only applicable if the ad is skippable.
    @[JSON::Field(key: "")]
    property skipafter : String

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

    # integer; default 1
    # Indicates if letter-boxing of 4:3 content into a 16:9 window is allowed, where 0 = no, 1  = yes
    @[JSON::Field(key: "")]
    property boxingallowed : String

    # integer array
    # Playback methods that may be in use. If none are specified, String method may be used. Refer to List 5.10. Only one method is typically used in practice. As a result, this array may be converted to an integer in a future version of the specification. It is strongly advised to use only the first element of this array in preparation for this change.
    @[JSON::Field(key: "")]
    property playbackmethod : String

    # integer
    # The event that causes playback to end. Refer to List 5.11.
    @[JSON::Field(key: "")]
    property playbackend : String

    # integer array
    # Supported delivery methods (e.g., streaming, progressive). If none specified, assume all are supported. Refer to List 5.15.
    @[JSON::Field(key: "")]
    property delivery : String

    # integer
    # Ad position on screen. Refer to List 5.4.
    @[JSON::Field(key: "")]
    property pos : String

    # object array
    # Array of Banner objects (Section 3.2.6) if companion ads are available.
    @[JSON::Field(key: "")]
    property companionad : String

    # integer array
    # List of supported API frameworks for this impression. Refer to List 5.6. If an API is not explicitly listed, it is assumed not to be supported.
    @[JSON::Field(key: "")]
    property api : String

    # integer array
    # Supported VAST companion ad types. Refer to List 5.14. Recommended if companion Banner objects are included via thecompanionadarray. Ifoneofthesebannerswillbe rendered as an end-card, this can be specified using the vcm attribute with the particular banner (Section 3.2.6).
    @[JSON::Field(key: "")]
    property companiontype : String

    # object
    # Placeholder for exchange-specific extensions to OpenRTB.
    @[JSON::Field(key: "")]
    property ext : String
  end
end
