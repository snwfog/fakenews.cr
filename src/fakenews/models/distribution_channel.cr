class DistributionChannel
  # object
  # Details about the Publisher (Section 3.2.15) of the site.
  property publisher : Any

  # object
  # Details about the Content (Section 3.2.16) within the site.
  property content : Any
end

class Publisher
  # string
  # Exchange-specific publisher ID.
  property id : Any

  # string
  # Publisher name (may be aliased at the publisher’s request).
  property name : Any

  # string array
  # Array of IAB content categories that describe the publisher. Refer to List 5.1.
  property cat : Any

  # string
  # Highest level domain of the publisher (e.g., “publisher.com”).
  property domain : Any

  # object
  # Placeholder for exchange-specific extensions to OpenRTB.
  property ext : Any
end
