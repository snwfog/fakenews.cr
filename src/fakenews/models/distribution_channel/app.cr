require "../distribution_channel"

class App < DistributionChannel
  # string
  # recommended
  # Exchange-specific app ID.
  property id : Any

  # string
  # App name (may be aliased at the publisher’s request).
  property name : Any

  # string
  # A platform-specific application identifier intended to be unique to the app and independent of the exchange. On Android, this should be a bundle or package name (e.g., com.foo.mygame). On iOS, it is typically a numeric ID.
  property bundle : Any

  # string
  # Domain of the app (e.g., “mygame.foo.com”).
  property domain : Any

  # string
  # App store URL for an installed app; for IQG 2.1 compliance.
  property storeurl : Any

  # string array
  # Array of IAB content categories of the app. Refer to List 5.1.
  property cat : Any

  # string array
  # Array of IAB content categories that describe the current section of the app. Refer to List 5.1.
  property sectioncat : Any

  # string array
  # Array of IAB content categories that describe the current page or view of the app. Refer to List 5.1.
  property pagecat : Any

  # string
  # Application version.
  property ver : Any

  # integer
  # Indicates if the app has a privacy policy, where 0 = no, 1 = yes.
  property privacypolicy : Any

  # integer
  # 0 = app is free, 1 = the app is a paid version.
  property paid : Any

  # string
  # Comma separated list of keywords about the app.
  property keywords : Any

  # object
  # Placeholder for exchange-specific extensions to OpenRTB.
  property ext : Any
end
