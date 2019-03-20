class Video
  # string array; required
  # Content MIME types supported (e.g., “video/x-ms-wmv”, “video/mp4”).
  property mimes : Any

  # integer; recommended
  # Minimum video ad duration in seconds.
  property minduration : Any

  # integer; recommended
  # Maximum video ad duration in seconds.
  property maxduration : Any

  # integer array; recommended
  # Array of supported video protocols. Refer to List 5.8. At least one supported protocol must be specified in either the protocol or protocols attribute.
  property protocols : Any

  # integer; DEPRECATED
  # Supported video protocol. Refer to List 5.8. At least one supported protocol must be specified in either the protocol or protocols attribute.
  property protocol : Any

  property # NOTE: Deprecatedinfavorofprot ocols
  # integer; recommended
  # Width of the video player in device independent pixels (DIPS).
  property w : Any

  # integer; recommended
  # Height of the video player in device independent pixels (DIPS).
  property h : Any

  # integer; recommended
  # Indicates the start delay in seconds for pre-roll, mid-roll, or post-roll ad placements. Refer to List 5.12 for additional generic values.
  property startdelay : Any

  # integer
  # Placement type for the impression. Refer to List 5.9.
  property placement : Any

  # integer
  # Indicates if the impression must be linear, nonlinear, etc. If none specified, assume all are allowed. Refer to List 5.7.
  property linearity : Any

  # integer
  # Indicates if the player will allow the video to be skipped, where 0 = no, 1 = yes.
  property skip : Any
  # If a bidder sends markup/creative that is itself skippable, the Bid object should include the attr array with an element of 16 indicating skippable video. Refer to List 5.3.

  # integer; default 0
  # Videos of total duration greater than this number of seconds can be skippable; only applicable if the ad is skippable.
  property skipmin : Any

  # integer; default 0
  # Number of seconds a video must play before skipping is enabled; only applicable if the ad is skippable.
  property skipafter : Any

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

  # integer; default 1
  # Indicates if letter-boxing of 4:3 content into a 16:9 window is allowed, where 0 = no, 1  = yes
  property boxingallowed : Any

  # integer array
  # Playback methods that may be in use. If none are specified, any method may be used. Refer to List 5.10. Only one method is typically used in practice. As a result, this array may be converted to an integer in a future version of the specification. It is strongly advised to use only the first element of this array in preparation for this change.
  property playbackmethod : Any

  # integer
  # The event that causes playback to end. Refer to List 5.11.
  property playbackend : Any

  # integer array
  # Supported delivery methods (e.g., streaming, progressive). If none specified, assume all are supported. Refer to List 5.15.
  property delivery : Any

  # integer
  # Ad position on screen. Refer to List 5.4.
  property pos : Any

  # object array
  # Array of Banner objects (Section 3.2.6) if companion ads are available.
  property companionad : Any

  # integer array
  # List of supported API frameworks for this impression. Refer to List 5.6. If an API is not explicitly listed, it is assumed not to be supported.
  property api : Any

  # integer array
  # Supported VAST companion ad types. Refer to List 5.14. Recommended if companion Banner objects are included via thecompanionadarray. Ifoneofthesebannerswillbe rendered as an end-card, this can be specified using the vcm attribute with the particular banner (Section 3.2.6).
  property companiontype : Any

  # object
  # Placeholder for exchange-specific extensions to OpenRTB.
  property ext : Any
end
