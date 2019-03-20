class Video
  JSON.mapping(
    mimes: Any,
    # string array; required
    # Content MIME types supported (e.g., “video/x-ms-wmv”, “video/mp4”).

    minduration: Any,
    # integer; recommended
    # Minimum video ad duration in seconds.

    maxduration: Any,
    # integer; recommended
    # Maximum video ad duration in seconds.

    protocols: Any,
    # integer array; recommended
    # Array of supported video protocols. Refer to List 5.8. At least one supported protocol must be specified in either the protocol or protocols attribute.

    protocol: Any,
    # integer; DEPRECATED
    # NOTE: Deprecatedinfavorofprotocols.
    # Supported video protocol. Refer to List 5.8. At least one supported protocol must be specified in either the protocol or protocols attribute.

    w: Any,
    # integer; recommended
    # Width of the video player in device independent pixels (DIPS).

    h: Any,
    # integer; recommended
    # Height of the video player in device independent pixels (DIPS).

    startdelay: Any,
    # integer; recommended
    # Indicates the start delay in seconds for pre-roll, mid-roll, or post-roll ad placements. Refer to List 5.12 for additional generic values.

    placement: Any,
    # integer
    # Placement type for the impression. Refer to List 5.9.

    linearity: Any,
    # integer
    # Indicates if the impression must be linear, nonlinear, etc. If none specified, assume all are allowed. Refer to List 5.7.

    skip: Any,
    # integer
    # Indicates if the player will allow the video to be skipped, where 0 = no, 1 = yes.
    # If a bidder sends markup/creative that is itself skippable, the Bid object should include the attr array with an element of 16 indicating skippable video. Refer to List 5.3.

    skipmin: Any,
    # integer; default 0
    # Videos of total duration greater than this number of seconds can be skippable; only applicable if the ad is skippable.

    skipafter: Any,
    # integer; default 0
    # Number of seconds a video must play before skipping is enabled; only applicable if the ad is skippable.

    sequence: Any,
    # integer
    # If multiple ad impressions are offered in the same bid request, the sequence number will allow for the coordinated delivery of multiple creatives.

    battr: Any,
    # integer array
    # Blocked creative attributes. Refer to List 5.3.

    maxextended: Any,
    # integer
    # Maximum extended ad duration if extension is allowed. If blank or 0, extension is not allowed. If -1, extension is allowed, and there is no time limit imposed. If greater than 0, then the value represents the number of seconds of extended play supported beyond the maxduration value.

    minbitrate: Any,
    # integer
    # Minimum bit rate in Kbps.

    maxbitrate: Any,
    # integer
    # Maximum bit rate in Kbps.

    boxingallowed: Any,
    # integer; default 1
    # Indicates if letter-boxing of 4:3 content into a 16:9 window is allowed, where 0 = no, 1 = yes.

    playbackmethod: Any,
    # integer array
    # Playback methods that may be in use. If none are specified, any method may be used. Refer to List 5.10. Only one method is typically used in practice. As a result, this array may be converted to an integer in a future version of the specification. It is strongly advised to use only the first element of this array in preparation for this change.

    playbackend: Any,
    # integer
    # The event that causes playback to end. Refer to List 5.11.

    delivery: Any,
    # integer array
    # Supported delivery methods (e.g., streaming, progressive). If none specified, assume all are supported. Refer to List 5.15.

    pos: Any,
    # integer
    # Ad position on screen. Refer to List 5.4.

    companionad: Any,
    # object array
    # Array of Banner objects (Section 3.2.6) if companion ads are available.

    api: Any,
    # integer array
    # List of supported API frameworks for this impression. Refer to List 5.6. If an API is not explicitly listed, it is assumed not to be supported.

    companiontype: Any,
    # integer array
    # Supported VAST companion ad types. Refer to List 5.14. Recommended if companion Banner objects are included via thecompanionadarray. Ifoneofthesebannerswillbe rendered as an end-card, this can be specified using the vcm attribute with the particular banner (Section 3.2.6).

    ext: Any,
    # object
    # Placeholder for exchange-specific extensions to OpenRTB.
)
end
