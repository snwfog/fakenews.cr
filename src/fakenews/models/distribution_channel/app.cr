class App < DistributionChannel
  JSON.mapping(
    id: Any,
    # string
    # recommended
    # Exchange-specific app ID.

    name: Any,
    # string
    # App name (may be aliased at the publisher’s request).

    bundle: Any,
    # string
    # A platform-specific application identifier intended to be unique to the app and independent of the exchange. On Android, this should be a bundle or package name (e.g., com.foo.mygame). On iOS, it is typically a numeric ID.

    domain: Any,
    # string
    # Domain of the app (e.g., “mygame.foo.com”).

    storeurl: Any,
    # string
    # App store URL for an installed app; for IQG 2.1 compliance.

    cat: Any,
    # string array
    # Array of IAB content categories of the app. Refer to List 5.1.

    sectioncat: Any,
    # string array
    # Array of IAB content categories that describe the current section of the app. Refer to List 5.1.

    pagecat: Any,
    # string array
    # Array of IAB content categories that describe the current page or view of the app. Refer to List 5.1.

    ver: Any,
    # string
    # Application version.

    privacypolicy: Any,
    # integer
    # Indicates if the app has a privacy policy, where 0 = no, 1 = yes.

    paid: Any,
    # integer
    # 0 = app is free, 1 = the app is a paid version.

    keywords: Any,
    # string
    # Comma separated list of keywords about the app.

    ext: Any,
    # object
    # Placeholder for exchange-specific extensions to OpenRTB.
  )
end
