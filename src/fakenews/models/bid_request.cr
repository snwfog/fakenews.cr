class BidRequest
  JSON.mapping(
    # required
    # Unique ID of the bid request, provided by the exchange.
    id: String,

    # object array; required
    # Array of Imp objects (Section 3.2.4) representing the impressionsoffered. Atleast1Impobjectisrequired.
    imp: String,

    # object; recommended
    # Details via a Site object (Section 3.2.13) about the publisher’s website. Only applicable and recommended for websites.
    site: Site,

    # object; recommended
    # Details via an App object (Section 3.2.14) about the publisher’s app (i.e., non-browser applications). Only applicable and recommended for apps.
    app: App,

    # object; recommended
    # Details via a Device object (Section 3.2.18) about the user’s device to which the impression will be delivered.
    device: Device,

    # object; recommended
    # Details via a User object (Section 3.2.20) about the human user of the device; the advertising audience.
    user: User,

    # integer; default 0
    # Indicator of test mode in which auctions are not billable, where 0 = live mode, 1 = test mode.
    test: Int8,

    # integer; default 2
    # Auction type, where 1 = First Price, 2 = Second Price Plus. Exchange-specific auction types can be defined using values greater than 500.
    at: Int8,

    # integer
    # Maximum time in milliseconds the exchange allows for bids to be received including Internet latency to avoid timeout. This value supersedes any a priori guidance from the exchange.
    tmax: Int32,

    # string array
    # White list of buyer seats (e.g., advertisers, agencies) allowed to bid on this impression. IDs of seats and knowledge of the buyer’s customers to which they refer must be coordinated between bidders and the exchange a priori. At most, only one of wseat and bseat should be used in the same request. Omission of both implies no seat restrictions.
    wseat: [] of String,

    # string array
    # Block list of buyer seats (e.g., advertisers, agencies) restricted from bidding on this impression. IDs of seats and knowledge of the buyer’s customers to which they refer must be coordinated between bidders and the exchange a priori. At most, only one of wseat and bseat should be used in the same request. Omission of both implies no seat restrictions.
    bseat: [] of String,

    # integer; default 0
    # Flag to indicate if Exchange can verify that the impressions offered represent all of the impressions available in context (e.g., all on the web page, all video spots such as pre/mid/post roll) to support road-blocking. 0 = no or unknown, 1 = yes, the impressions offered represent all that are available.
    allimps: Int8,

    # string array
    # Array of allowed currencies for bids on this bid request using ISO-4217 alpha codes. Recommended only if the exchange accepts multiple currencies.
    cur: [] of String,

    # string array
    # White list of languages for creatives using ISO-639-1-alpha-2. Omission implies no specific restrictions, but buyers would be advised to consider language attribute in the Device and/or Content objects if available.
    wlang: [] of String,

    # string array
    # Blocked advertiser categories using the IAB content categories. Refer to List 5.1.
    bcat: [] of String,

    # string array
    # Block list of advertisers by their domains (e.g., “ford.com”).
    badv: [] of String,

    # string array
    # Block list of applications by their platform-specific exchange- independent application identifiers. On Android, these should be bundle or package names (e.g., com.foo.mygame). On iOS, these are numeric IDs.
    bapp: [] of String,

    # object
    # A Sorce object (Section 3.2.2) that provides data about the inventory source and which entity makes the final decision.
    source: Source,

    # object
    # A Regs object (Section 3.2.3) that specifies any industry, legal, or governmental regulations in force for this request.
    regs: Regs,

    #  object
    # Placeholder for exchange-specific extensions to OpenRTB.
    ext: Ext,
  )
end

class Source
  JSON.mapping(
    # Integer; recommended
    # Entity responsible for the final impression sale decision, where 0 = exchange, 1 = upstream source.
    fd: Int32,

    # string; recommended
    # Transaction ID that must be common across all participants in this bid request (e.g., potentially multiple exchanges).
    tid: Int32,

    # string; recommended
    # Payment ID chain string containing embedded syntax described in the TAG Payment ID Protocol v1.0.
    pchain: String,

    # object
    # Placeholder for exchange-specific extensions to OpenRTB.
    ext: Any,
  )
end

class Reg
  JSON.mapping(
    # integer
    # Flag indicating if this request is subject to the COPPA regulations established by the USA FTC, where 0 = no, 1 = yes. Refer to Section 7.5 for more information.
    coppa: Int8,

    # object
    # Placeholder for exchange-specific extensions to OpenRTB.
    ext: Any,
  )
end
