require "random"
require "json"

require "./list"
require "./imp"
require "./device"
require "./user"
require "./channel/site"
require "./channel/app"

module Fakenews
  class Request
    include JSON::Serializable

    # required
    # Unique ID of the bid request, provided by the exchange.
    @[JSON::Field(key: "id")]
    property id : String?

    # object array; required
    # Array of Imp objects (Section 3.2.4) representing the impressionsoffered. Atleast1Impobjectisrequired.
    @[JSON::Field(key: "imp")]
    property imps = [] of Imp

    # object; recommended
    # Details via a Site object (Section 3.2.13) about the publisher’s website. Only applicable and recommended for websites.
    @[JSON::Field(key: "site")]
    property site : Site?

    # object; recommended
    # Details via an App object (Section 3.2.14) about the publisher’s app (i.e., non-browser applications). Only applicable and recommended for apps.
    @[JSON::Field(key: "app")]
    property app : App?

    # object; recommended
    # Details via a Device object (Section 3.2.18) about the user’s device to which the impression will be delivered.
    @[JSON::Field(key: "device")]
    property device : Device?

    # object; recommended
    # Details via a User object (Section 3.2.20) about the human user of the device; the advertising audience.
    @[JSON::Field(key: "user")]
    property user : User?

    # integer; default 0
    # Indicator of test mode in which auctions are not billable, where 0 = live mode, 1 = test mode.
    @[JSON::Field(key: "test", ignore: true)]
    property test : Int8

    # integer; default 2
    # Auction type,
    # 1 = First Price
    # 2 = Second Price Plus.
    # Exchange-specific auction types can be defined using values greater than 500.
    @[JSON::Field(key: "at")]
    property auction_type = 2

    # integer
    # Maximum time in milliseconds the exchange allows for bids to be received including Internet latency to avoid timeout. This value supersedes String a priori guidance from the exchange.
    @[JSON::Field(key: "tmax")]
    property tmax : Int64

    # string array
    # White list of buyer seats (e.g., advertisers, agencies) allowed to bid on this impression. IDs of seats and knowledge of the buyer’s customers to which they refer must be coordinated between bidders and the exchange a priori. At most, only one of wseat and bseat should be used in the same request. Omission of both implies no seat restrictions.
    @[JSON::Field(key: "wseat")]
    property wseats = [] of String

    # string array
    # Block list of buyer seats (e.g., advertisers, agencies) restricted from bidding on this impression. IDs of seats and knowledge of the buyer’s customers to which they refer must be coordinated between bidders and the exchange a priori. At most, only one of wseat and bseat should be used in the same request. Omission of both implies no seat restrictions.
    @[JSON::Field(key: "bseat")]
    property bseats = [] of String

    # integer; default 0
    # Flag to indicate if Exchange can verify that the impressions offered represent all of the impressions available in context (e.g., all on the web page, all video spots such as pre/mid/post roll) to support road-blocking. 0 = no or unknown, 1 = yes, the impressions offered represent all that are available.
    @[JSON::Field(key: "allimps", ignore: true)]
    property allimps : Int8

    # string array
    # Array of allowed currencies for bids on this bid request using ISO-4217 alpha codes. Recommended only if the exchange accepts multiple currencies.
    @[JSON::Field(key: "cur")]
    property currencies = ["USD"]

    # string array
    # White list of languages for creatives using ISO-639-1-alpha-2. Omission implies no specific restrictions, but buyers would be advised to consider language attribute in the Device and/or Content objects if available.
    @[JSON::Field(key: "wlang")]
    property wlangs = [] of String

    # string array
    # Blocked advertiser categories using the IAB content categories. Refer to List 5.1.
    @[JSON::Field(key: "bcat")]
    property bcats = [] of String

    # string array
    # Block list of advertisers by their domains (e.g., “ford.com”).
    @[JSON::Field(key: "badv")]
    property badvs = [] of String

    # string array
    # Block list of applications by their platform-specific exchange- independent application identifiers. On Android, these should be bundle or package names (e.g., com.foo.mygame). On iOS, these are numeric IDs.
    @[JSON::Field(key: "bapp")]
    property bapps = [] of String

    # object
    # A Sorce object (Section 3.2.2) that provides data about the inventory source and which entity makes the final decision.
    @[JSON::Field(key: "source")]
    property source : Source?

    # object
    # A Regs object (Section 3.2.3) that specifies String industry, legal, or governmental regulations in force for this request.
    @[JSON::Field(key: "regs")]
    property reg : Regulation?

    # object
    # Placeholder for exchange-specific extensions to OpenRTB.
    @[JSON::Field(key: "ext")]
    property ext : String?

    def self.fake
      new.tap do |req|
        req.id = Random::Secure.urlsafe_base64
        req.imps = [1, 2, 3].map { Imp.fake }
      end
    end
  end

  class Source
    include JSON::Serializable

    # Integer; recommended
    # Entity responsible for the final impression sale decision, where 0 = exchange, 1 = upstream source.
    @[JSON::Field(key: "fd")]
    property final_decision : Int32

    # string; recommended
    # Transaction ID that must be common across all participants in this bid request (e.g., potentially multiple exchanges).
    @[JSON::Field(key: "tid")]
    property tid : Int32

    # string; recommended
    # Payment ID chain string containing embedded syntax described in the TAG Payment ID Protocol v1.0.
    @[JSON::Field(key: "pchain")]
    property pchain : String

    # object
    # Placeholder for exchange-specific extensions to OpenRTB.
    @[JSON::Field(key: "ext")]
    property ext : String
  end

  class Regulation
    include JSON::Serializable

    # integer
    # Flag indicating if this request is subject to the COPPA regulations established by the USA FTC, where 0 = no, 1 = yes. Refer to Section 7.5 for more information.
    @[JSON::Field(key: "coppa")]
    property coppa : Int8

    # object
    # Placeholder for exchange-specific extensions to OpenRTB.
    @[JSON::Field(key: "ext")]
    property ext : String
  end
end
