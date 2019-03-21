require "json"

module Fakenews
  class Pmp
    include JSON::Serializable
    # integer; default 0
    # Indicator of auction eligibility to seats named in the Direct
    # Deals object where:
    # 0 = all bids are accepted
    # 1 = bids are restricted to the deals specified and the terms thereof.
    @[JSON::Field(key: "private_auction")]
    property private_auction = 0_i8

    # object array
    # Array of Deal (Section 3.2.12) objects that convey the specific deals applicable to this impression.
    @[JSON::Field(key: "deals")]
    property deals : Array(Deal)

    # object
    # Placeholder for exchange-specific extensions to OpenRTB.
    @[JSON::Field(key: "ext")]
    property ext : String?
  end

  class Deal
    include JSON::Serializable
    # string; required
    # A unique identifier for the direct deal.
    @[JSON::Field(key: "id")]
    property id : String

    # float; default 0
    # Minimum bid for this impression expressed in CPM.
    @[JSON::Field(key: "bidfloor")]
    property bidfloor = 0.0_f64

    # string; default ”USD”
    # Currency specified using ISO-4217 alpha codes. This may be different from bid currency returned by bidder if this is allowed by the exchange.
    @[JSON::Field(key: "bidfloorcur")]
    property bidfloorcur = "USD"

    # integer
    # Optional override of the overall auction type of the bid request
    # 1 = First Price
    # 2 = Second Price Plus
    # 3 = the value passed in bidfloor is the agreed upon deal price.
    # Additional auction types can be defined by the exchange.
    @[JSON::Field(key: "at")]
    property at : String?

    # string array
    # Whitelist of buyer seats (e.g., advertisers, agencies) allowed to bid on this deal. IDs of seats and the buyer’s customers to which they refer must be coordinated between bidders and the exchange a priori. Omission implies no seat restrictions.
    @[JSON::Field(key: "wseat")]
    property wseat : Array(String)

    # string array
    # Array of advertiser domains (e.g., advertiser.com) allowed to bid on this deal. Omission implies no advertiser restrictions.
    @[JSON::Field(key: "")]
    property wadomain : Array(String)

    # object
    # Placeholder for exchange-specific extensions to OpenRTB.
    @[JSON::Field(key: "ext")]
    property ext : String?

    def self.fake
      deal = new
      deal.id = Random::Secure.urlsafe_base64
    end
  end
end
