module Fakenews
  # 5.2
  enum BannerAdType
    XHTMLTextAd = 1

    XHTMLBannerAd
    JavascriptAd
    Iframe
  end

  # 5.3
  enum CreativeAttribute
    AudioAdAutoPlay = 1

    AudioAdUserInitiated
    ExpandableAutomatic
    ExpandableUserInitiatedClick
    ExpandableUserInitiatedRollover
    InBannerVideoAdAutoPlay
    InBannerVideoAdUserInitiated
    Pop
    ProvocativeSuggestiveImagery
    ShakyFlashingFlickeringExtremeAnimationSmileys
    Surveys
    TextOnly
    UserInteractive # Embedded games
    WindowsDialogAlertStyle
    HasAudioOnOffButton
    AdProvidesSkipButton # VPAID rendered skip button on pre-roll video
    AdobeFlash
  end

  # 5.4
  enum AdPosition
    Unknown = 0

    AboveTheFold
    Deprecated # - May or may not be initially visible depending on screen size/resolution.
    BelowTheFold
    Header
    Footer
    Sidebar
    FullScreen
  end

  # 5.5
  enum ExpandableDirection
    Left = 1

    Right
    Up
    Down
    FullScreen
  end

  # 5.6
  enum APIFrameworks
    VPAID_1_0 = 1

    VPAID_2_0
    MRAID_1
    ORMMA
    MRAID_2
    MRAID_3
  end

  enum VideoProtocol
    VAST_1_0 = 1

    VAST_2_0
    VAST_3_0
    VAST_1_0_Wrapper
    VAST_2_0_Wrapper
    VAST_3_0_Wrapper
  end
end
