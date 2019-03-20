class Imp
  JSON.mapping(
    # string; required
    # A unique identifier for this impression within the context of the bid request (typically, starts with 1 and increments.
    id: String,

    # object array
    # An array of Metric object (Section 3.2.5).
    metric: [] of Any | Metric,

    # object
    # A Banner object (Section 3.2.6); required if this impression is offered as a banner ad opportunity.
    banner: Nil | Banner,

    # object
    # A Video object (Section 3.2.7); required if this impression is offered as a video ad opportunity.
    video: Nil | Video,

    # object
    # An Audio object (Section 3.2.8); required if this impression is offered as an audio ad opportunity.
    audio: Nil | Audio,

    # object
    # A Native object (Section 3.2.9); required if this impression is offered as a native ad opportunity.
    native: Nil | Native,

    # object
    # A Pmp object (Section 3.2.11) containing any private marketplace deals in effect for this impression.
    pmp: Nil | Pmp,

    # string
    # Name of ad mediation partner, SDK technology, or player responsible for rendering ad (typically video or mobile). Used by some ad servers to customize ad code by partner. Recommended for video and/or apps.
    displaymanager: String,

    # string
    # Version of ad mediation partner, SDK technology, or player responsible for rendering ad (typically video or mobile). Used by some ad servers to customize ad code by partner. Recommended for video and/or apps.
    displaymanagerver: String,

    # integer; default 0
    # 1 = the ad is interstitial or full screen, 0 = not interstitial.
    instl: Int8,

    # string
    # Identifier for specific ad placement or ad tag that was used to initiate the auction. This can be useful for debugging of any issues, or for optimization by the buyer.
    tagid: String,

    # float; default 0
    # Minimum bid for this impression expressed in CPM.
    bidfloor: Float32,

    # string; default “USD”
    # Currency specified using ISO-4217 alpha codes. This may be different from bid currency returned by bidder if this is allowed by the exchange.
    bidfloorcur: String,

    # integer
    # Indicates the type of browser opened upon clicking the creative in an app, where 0 = embedded, 1 = native. Note that the Safari View Controller in iOS 9.x devices is considered a native browser for purposes of this attribute.
    clickbrowser: Int8,

    # integer
    # Flag to indicate if the impression requires secure HTTPS URL creative assets and markup, where 0 = non-secure, 1 = secure. If omitted, the secure state is unknown, but non-secure HTTP support can be assumed.
    secure: Int8,

    # string array
    # Array of exchange-specific names of supported iframe busters.
    iframebuster: String,

    # integer
    # Advisory as to the number of seconds that may elapse between the auction and the actual impression.
    exp: Int8,

    # object
    # Placeholder for exchange-specific extensions to OpenRTB.
    ext: Any,
  )
end

class Metric
  JSON.mapping(
    # string; required
    # Type of metric being presented using exchange curated string names which should be published to bidders a priori.
    type: Any,

    # float; required
    # Number representing the value of the metric. Probabilities must be in the range 0.0 – 1.0.
    value: Any,

    # string; recommended
    # Source of the value using exchange curated string names which should be published to bidders a priori. If the exchange itself is the source versus a third party, “EXCHANGE” is recommended.
    vendor: Any,

    # object
    # Placeholder for exchange-specific extensions to OpenRTB.
    ext: Any,
  )
end
