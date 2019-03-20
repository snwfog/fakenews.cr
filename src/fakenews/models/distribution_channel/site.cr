class Site < DistributionChannel
  JSON.mapping(
    id: Any,
    # string; recommended
    # Exchange-specific site ID.

    name: Any,
    # string
    # Site name (may be aliased at the publisher’s request).

    domain: Any,
    # string
    # Domain of the site (e.g., “mysite.foo.com”).

    cat: Any,
    # string array
    # Array of IAB content categories of the site. Refer to List 5.1.

    sectioncat: Any,
    # string array
    # Array of IAB content categories that describe the current section of the site. Refer to List 5.1.

    pagecat: Any,
    # string array
    # Array of IAB content categories that describe the current page or view of the site. Refer to List 5.1.

    page: Any,
    # string
    # URL of the page where the impression will be shown.

    ref: Any,
    # string
    # Referrer URL that caused navigation to the current page.

    search: Any,
    # string
    # Search string that caused navigation to the current page.

    mobile: Any,
    # integer
    # Indicates if the site has been programmed to optimize layout when viewed on mobile devices, where 0 = no, 1 = yes.

    privacypolicy: Any,
    # integer
    # Indicates if the site has a privacy policy, where 0 = no, 1 = yes.

    keywords: Any,
    # string
    # Comma separated list of keywords about the site.

    ext: Any,
    # object
    # Placeholder for exchange-specific extensions to OpenRTB.
  )
end
