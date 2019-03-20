class Native
  JSON.mapping(
    # string; required
    # Request payload complying with the Native Ad Specification.
    request: Any,

    # string; recommended
    # Version of the Dynamic Native Ads API to which request complies; highly recommended for efficient parsing.
    ver: Any,

    # integer array
    # List of supported API frameworks for this impression. Refer to List 5.6. If an API is not explicitly listed, it is assumed not to be supported.
    api: Any,

    # integer array
    # Blocked creative attributes. Refer to List 5.3.
    battr: Any,

    # object
    # Placeholder for exchange-specific extensions to OpenRTB.
    ext: Any,
  )
end
