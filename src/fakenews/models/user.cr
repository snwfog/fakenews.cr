class User
  # string; recommended
  # Exchange-specific ID for the user. At least one of id or buyeruid is recommended.
  property id : Any

  # string; recommended
  # Buyer-specific ID for the user as mapped by the exchange for thebuyer. Atleastoneofbuyeruidoridisrecommended.
  property buyeruid : Any

  # integer
  # Year of birth as a 4-digit integer.
  property yob : Any

  # string
  # Gender, where “M” = male, “F” = female, “O” = known to be other (i.e., omitted is unknown).
  property gender : Any

  # customdata
  # string string
  property keywords : Any

  # Comma separated list of keywords, interests, or intent.
  # Optional feature to pass bidder data that was set in the exchange’s cookie. The string must be in base85 cookie safe characters and be in any format. Proper JSON encoding must be used to include “escaped” quotation marks.
  # object
  # Location of the user’s home base defined by a Geo object (Section 3.2.19). This is not necessarily their current location.
  property geo : Any

  # object array
  # Additionaluserdata. EachDataobject(Section3.2.21) represents a different data source.
  property data : Any

  # object
  # Placeholder for exchange-specific extensions to OpenRTB.
  property ext : Any
end
