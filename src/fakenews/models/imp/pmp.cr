class Pmp
  JSON.mapping(
    private_auction: Any,
    # integer;
    # default 0
    # Indicator of auction eligibility to seats named in the Direct
    # Deals object, where 0 = all bids are accepted, 1 = bids are restricted to the deals specified and the terms thereof.

    deals: Any,
    # object array
    # Array of Deal (Section 3.2.12) objects that convey the specific deals applicable to this impression.

    ext: Any,
      # object
    # Placeholder for exchange-specific extensions to OpenRTB.
)
end

class Deal
  JSON.mapping(
    id: Any,
    # string; required
    # A unique identifier for the direct deal.

    bidfloor: Any,
    # float; default 0
    # Minimum bid for this impression expressed in CPM.

    bidfloorcur: Any,
    # string; default ”USD”
    # Currency specified using ISO-4217 alpha codes. This may be different from bid currency returned by bidder if this is allowed by the exchange.

    at: Any,
    # integer
    # Optional override of the overall auction type of the bid request, where 1 = First Price, 2 = Second Price Plus, 3 = the value passed in bidfloor is the agreed upon deal price. Additional auction types can be defined by the exchange.

    wseat: Any,
    # string array
    # Whitelist of buyer seats (e.g., advertisers, agencies) allowed to
    # bid on this deal. IDs of seats and the buyer’s customers to which they refer must be coordinated between bidders and the exchange a priori. Omission implies no seat restrictions.

    wadomain: Any,
    # string array
    # Array of advertiser domains (e.g., advertiser.com) allowed to bid on this deal. Omission implies no advertiser restrictions.

    ext: Any,
      # object
    # Placeholder for exchange-specific extensions to OpenRTB.
)
end
