require "../distribution_channel"

class Site < DistributionChannel
  # string; recommended
  # Exchange-specific site ID.
  property id : Any

  # string
  # Site name (may be aliased at the publisher’s request).
  property name : Any

  # string
  # Domain of the site (e.g., “mysite.foo.com”).
  property domain : Any

  # string array
  # Array of IAB content categories of the site. Refer to List 5.1.
  property cat : Any

  # string array
  # Array of IAB content categories that describe the current section of the site. Refer to List 5.1.
  property sectioncat : Any

  # string array
  # Array of IAB content categories that describe the current page or view of the site. Refer to List 5.1.
  property pagecat : Any

  # string
  # URL of the page where the impression will be shown.
  property page : Any

  # string
  # Referrer URL that caused navigation to the current page.
  property ref : Any

  # string
  # Search string that caused navigation to the current page.
  property search : Any

  # integer
  # Indicates if the site has been programmed to optimize layout when viewed on mobile devices, where 0 = no, 1 = yes.
  property mobile : Any

  # integer
  # Indicates if the site has a privacy policy, where 0 = no, 1 = yes.
  property privacypolicy : Any

  # string
  # Comma separated list of keywords about the site.
  property keywords : Any

  # object
  # Placeholder for exchange-specific extensions to OpenRTB.
  property ext : Any
end
