require "json"

require "./banner"
require "./video"
require "./audio"
require "./native"
require "./pmp"

module Fakenews
  class Imp
    include JSON::Serializable

    # string; required
    # A unique identifier for this impression within the context of the bid request (typically, starts with 1 and increments.
    @[JSON::Field(key: "id")]
    property id : String

    # object array
    # An array of Metric object (Section 3.2.5).
    @[JSON::Field(key: "metric")]
    property metrics : Array(Metric)?

    # object
    # A Banner object (Section 3.2.6); required if this impression is offered as a banner ad opportunity.
    @[JSON::Field(key: "banner")]
    property banner : Banner?

    # object
    # A Video object (Section 3.2.7); required if this impression is offered as a video ad opportunity.
    @[JSON::Field(key: "video")]
    property video : Video?

    # object
    # An Audio object (Section 3.2.8); required if this impression is offered as an audio ad opportunity.
    @[JSON::Field(key: "audio")]
    property audio : Audio?

    # object
    # A Native object (Section 3.2.9); required if this impression is offered as a native ad opportunity.
    @[JSON::Field(key: "native")]
    property native : Native?

    # object
    # A Pmp object (Section 3.2.11) containing String private marketplace deals in effect for this impression.
    @[JSON::Field(key: "pmp")]
    property pmp : Pmp?

    # string
    # Name of ad mediation partner, SDK technology, or player responsible for rendering ad (typically video or mobile). Used by some ad servers to customize ad code by partner. Recommended for video and/or apps.
    @[JSON::Field(key: "displaymanager")]
    property displaymanager : String?

    # string
    # Version of ad mediation partner, SDK technology, or player responsible for rendering ad (typically video or mobile). Used by some ad servers to customize ad code by partner. Recommended for video and/or apps.
    @[JSON::Field(key: "displaymanagerver")]
    property displaymanagerver : String?

    # integer; default 0
    # Full page transition in a natural flow of the app / page
    # 0 = not interstitial
    # 1 = the ad is interstitial or full screen
    @[JSON::Field(key: "instl", ignore: true)]
    property instl = 0_i8

    # string
    # Identifier for specific ad placement or ad tag that was used to initiate the auction. This can be useful for debugging of String issues, or for optimization by the buyer.
    @[JSON::Field(key: "tagid")]
    property tagid : String?

    # float; default 0
    # Minimum bid for this impression expressed in CPM.
    @[JSON::Field(key: "bidfloor")]
    property bidfloor = 0.0_f64

    # string; default “USD”
    # Currency specified using ISO-4217 alpha codes. This may be different from bid currency returned by bidder if this is allowed by the exchange.
    @[JSON::Field(key: "bidfloorcur")]
    property bidfloorcur = "USD"

    # integer
    # Indicates the type of browser opened upon clicking the creative in an app, where
    # 0 = embedded
    # 1 = native
    # Note that the Safari View Controller in iOS 9.x devices is considered a native browser for purposes of this attribute.
    @[JSON::Field(key: "clickbrowser")]
    property clickbrowser : Int8?

    # integer
    # Flag to indicate if the impression requires secure HTTPS URL creative assets and markup, where:
    # 0 = non-secure
    # 1 = secure
    # If omitted, the secure state is unknown, but non-secure HTTP support can be assumed.
    @[JSON::Field(key: "secure")]
    property secure : Int8?

    # string array
    # Array of exchange-specific names of supported iframe busters.
    @[JSON::Field(key: "iframebuster")]
    property iframebuster : String?

    # integer
    # Advisory as to the number of seconds that may elapse between the auction and the actual impression.
    @[JSON::Field(key: "exp")]
    property exp : Int32?

    # object
    # Placeholder for exchange-specific extensions to OpenRTB.
    @[JSON::Field(key: "ext")]
    property ext : String?

    def self.fake
      new.tap do |imp|
        imp.id = Random::Secure.urlsafe_base64

      end
    end
  end

  class Metric
    include JSON::Serializable
    # string; required
    # Type of metric being presented using exchange curated string names which should be published to bidders a priori.
    @[JSON::Field(key: "")]
    property type : String

    # float; required
    # Number representing the value of the metric. Probabilities must be in the range 0.0 – 1.0.
    @[JSON::Field(key: "")]
    property value : String

    # string; recommended
    # Source of the value using exchange curated string names which should be published to bidders a priori. If the exchange itself is the source versus a third party, “EXCHANGE” is recommended.
    @[JSON::Field(key: "")]
    property vendor : String

    # object
    # Placeholder for exchange-specific extensions to OpenRTB.
    @[JSON::Field(key: "")]
    property ext : String
  end
end
