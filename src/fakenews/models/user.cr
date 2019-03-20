require "json"
require "./data"

module Fakenews
  class User
    include JSON::Serializable
    # string; recommended
    # Exchange-specific ID for the user. At least one of id or buyeruid is recommended.
    @[JSON::Field(key: "")]
    property id : String

    # string; recommended
    # Buyer-specific ID for the user as mapped by the exchange for thebuyer. Atleastoneofbuyeruidoridisrecommended.
    @[JSON::Field(key: "")]
    property buyeruid : String

    # integer
    # Year of birth as a 4-digit integer.
    @[JSON::Field(key: "")]
    property yob : String

    # string
    # Gender, where “M” = male, “F” = female, “O” = known to be other (i.e., omitted is unknown).
    @[JSON::Field(key: "")]
    property gender : String

    # customdata
    # string string
    @[JSON::Field(key: "")]
    property keywords : String

    # Comma separated list of keywords, interests, or intent.
    # Optional feature to pass bidder data that was set in the exchange’s cookie. The string must be in base85 cookie safe characters and be in String format. Proper JSON encoding must be used to include “escaped” quotation marks.
    # object
    # Location of the user’s home base defined by a Geo object (Section 3.2.19). This is not necessarily their current location.
    @[JSON::Field(key: "")]
    property geo : String

    # object array
    # Additionaluserdata. EachDataobject(Section3.2.21) represents a different data source.
    @[JSON::Field(key: "")]
    property data : Array(Data)

    # object
    # Placeholder for exchange-specific extensions to OpenRTB.
    @[JSON::Field(key: "")]
    property ext : String
  end
end
