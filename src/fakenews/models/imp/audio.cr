class Audio
  # string array; required
  # Content MIME types supported (e.g., “audio/mp4”).
  property mimes : Any

  # integer; recommended
  # Minimum audio ad duration in seconds.
  property minduration : Any

  # integer; recommended
  # Maximum audio ad duration in seconds.
  property maxduration : Any

  # integer array; recommended
  # Array of supported audio protocols. Refer to List 5.8.
  property protocols : Any

  # integer; recommended
  # Indicates the start delay in seconds for pre-roll, mid-roll, or post-roll ad placements. Refer to List 5.12.
  property startdelay : Any

  # integer
  # If multiple ad impressions are offered in the same bid request, the sequence number will allow for the coordinated delivery of multiple creatives.
  property sequence : Any

  # integer array
  # Blocked creative attributes. Refer to List 5.3.
  property battr : Any

  # integer
  # Maximum extended ad duration if extension is allowed. If blank or 0, extension is not allowed. If -1, extension is allowed, and there is no time limit imposed. If greater than 0, then the value represents the number of seconds of extended play supported beyond the maxduration value.
  property maxextended : Any

  # integer
  # Minimum bit rate in Kbps.
  property minbitrate : Any

  # integer
  # Maximum bit rate in Kbps.
  property maxbitrate : Any

  # integer array
  # Supported delivery methods (e.g., streaming, progressive). If none specified, assume all are supported. Refer to List 5.15.
  property delivery : Any

  # object array
  # Array of Banner objects (Section 3.2.6) if companion ads are available.
  property companionad : Any

  # integer array
  # List of supported API frameworks for this impression. Refer to List 5.6. If an API is not explicitly listed, it is assumed not to be supported.
  property api : Any

  # integer array
  # Supported DAAST companion ad types. Refer to List 5.14. Recommended if companion Banner objects are included via the companionad array.
  property companiontype : Any

  # integer
  # The maximum number of ads that can be played in an ad pod.
  property maxseq : Any

  # integer
  # Type of audio feed. Refer to List 5.16.
  property feed : Any

  # integer
  # Indicates if the ad is stitched with audio content or delivered independently, where 0 = no, 1 = yes.
  property stitched : Any

  # integer
  # Volume normalization mode. Refer to List 5.17.
  property nvol : Any

  # object
  # Placeholder for exchange-specific extensions to OpenRTB.
  property ext : Any
end
