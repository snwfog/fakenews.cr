require "json"

module FakeNews
  class Geo
    include JSON::Serializable

    # float
    # Latitude from -90.0 to +90.0, where negative is south.
    @[JSON::Field(key: "")]
    property lat : Float64

    # float
    # Longitude from -180.0 to +180.0, where negative is west.
    @[JSON::Field(key: "")]
    property lon : String

    # integer
    # Source of location data; recommended when passing lat/lon. Refer to List 5.20.
    @[JSON::Field(key: "")]
    property type : String

    # integer
    # Estimated location accuracy in meters; recommended when lat/lon are specified and derived from a device’s location services (i.e., type = 1). Note that this is the accuracy as reported from the device. Consult OS specific documentation (e.g., Android, iOS) for exact interpretation.
    @[JSON::Field(key: "")]
    property accuracy : String

    # integer
    # Number of seconds since this geolocation fix was established. Note that devices may cache location data across multiple fetches. Ideally, this value should be from the time the actual fix was taken.
    @[JSON::Field(key: "")]
    property lastfix : String

    # integer
    # Service or provider used to determine geolocation from IP address if applicable (i.e., type = 2). Refer to List 5.23.
    @[JSON::Field(key: "")]
    property ipservice : String

    # string
    # Country code using ISO-3166-1-alpha-3.
    @[JSON::Field(key: "")]
    property country : String

    # string
    # Region code using ISO-3166-2; 2-letter state code if USA.
    @[JSON::Field(key: "")]
    property region : String

    # string
    # Region of a country using FIPS 10-4 notation. While OpenRTB supports this attribute, it has been withdrawn by NIST in 2008.
    @[JSON::Field(key: "")]
    property regionfips104 : String

    # string
    # Google metro code; similar to but not exactly Nielsen DMAs. See Appendix A for a link to the codes.
    @[JSON::Field(key: "")]
    property metro : String

    # string
    # City using United Nations Code for Trade & Transport Locations. See Appendix A for a link to the codes.
    @[JSON::Field(key: "")]
    property city : String

    # string
    # Zip or postal code.
    @[JSON::Field(key: "")]
    property zip : String

    # integer
    # Local time as the number +/- of minutes from UTC.
    @[JSON::Field(key: "")]
    property utcoffset : String

    #  object
    # Placeholder for exchange-specific extensions to OpenRTB.
    @[JSON::Field(key: "")]
    property ext : String
  end
end
