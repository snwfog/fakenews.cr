class Audio
  JSON.mapping(
    mimes: Any,
    # string array; required
    # Content MIME types supported (e.g., “audio/mp4”).

    minduration: Any,
    # integer; recommended
    # Minimum audio ad duration in seconds.

    maxduration: Any,
    # integer; recommended
    # Maximum audio ad duration in seconds.

    protocols: Any,
    # integer array; recommended
    # Array of supported audio protocols. Refer to List 5.8.

    startdelay: Any,
    # integer; recommended
    # Indicates the start delay in seconds for pre-roll, mid-roll, or post-roll ad placements. Refer to List 5.12.

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

    delivery: Any,
    # integer array
    # Supported delivery methods (e.g., streaming, progressive). If none specified, assume all are supported. Refer to List 5.15.

    companionad: Any,
    # object array
    # Array of Banner objects (Section 3.2.6) if companion ads are available.

    api: Any,
    # integer array
    # List of supported API frameworks for this impression. Refer to List 5.6. If an API is not explicitly listed, it is assumed not to be supported.

    companiontype: Any,
    # integer array
    # Supported DAAST companion ad types. Refer to List 5.14. Recommended if companion Banner objects are included via the companionad array.

    maxseq: Any,
    # integer
    # The maximum number of ads that can be played in an ad pod.

    feed: Any,
    # integer
    # Type of audio feed. Refer to List 5.16.

    stitched: Any,
    # integer
    # Indicates if the ad is stitched with audio content or delivered independently, where 0 = no, 1 = yes.

    nvol: Any,
    # integer
    # Volume normalization mode. Refer to List 5.17.

    ext: Any,
    # object
    # Placeholder for exchange-specific extensions to OpenRTB.
)
end
