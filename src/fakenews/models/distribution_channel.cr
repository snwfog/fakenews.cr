class DistributionChannel
  JSON.mapping(
    publisher: Any,
    # object
    # Details about the Publisher (Section 3.2.15) of the site.

    content: Any,
    # object
    # Details about the Content (Section 3.2.16) within the site.
  )
end

class Publisher
  JSON.mapping(
    id: Any,
    # string
    # Exchange-specific publisher ID.
    name: Any,
    # string
    # Publisher name (may be aliased at the publisher’s request).
    cat: Any,
    # string array
    # Array of IAB content categories that describe the publisher. Refer to List 5.1.
    domain: Any,
    # string
    # Highest level domain of the publisher (e.g., “publisher.com”).
    ext: Any,
    # object
    # Placeholder for exchange-specific extensions to OpenRTB.
  )
end

