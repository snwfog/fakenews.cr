class Geo
  JSON.mapping(
    lat: Any,
    # float
    # Latitude from -90.0 to +90.0, where negative is south.
    lon: Any,
    # float
    # Longitude from -180.0 to +180.0, where negative is west.
    type: Any,
    # integer
    # Source of location data; recommended when passing lat/lon. Refer to List 5.20.
    accuracy: Any,
    # integer
    # Estimated location accuracy in meters; recommended when lat/lon are specified and derived from a device’s location services (i.e., type = 1). Note that this is the accuracy as reported from the device. Consult OS specific documentation (e.g., Android, iOS) for exact interpretation.
    lastfix: Any,
    # integer
    # Number of seconds since this geolocation fix was established. Note that devices may cache location data across multiple fetches. Ideally, this value should be from the time the actual fix was taken.
    ipservice: Any,
    # integer
    # Service or provider used to determine geolocation from IP address if applicable (i.e., type = 2). Refer to List 5.23.
    country: Any,
    # string
    # Country code using ISO-3166-1-alpha-3.
    region: Any,
    # string
    # Region code using ISO-3166-2; 2-letter state code if USA.
    regionfips104: Any,
    # string
    # Region of a country using FIPS 10-4 notation. While OpenRTB supports this attribute, it has been withdrawn by NIST in 2008.
    metro: Any,
    # string
    # Google metro code; similar to but not exactly Nielsen DMAs. See Appendix A for a link to the codes.
    city: Any,
    # string
    # City using United Nations Code for Trade & Transport Locations. See Appendix A for a link to the codes.
    zip: Any,
    # string
    # Zip or postal code.
    utcoffset: Any,
    # integer
    # Local time as the number +/- of minutes from UTC.
    ext: Any,
    #  object
    # Placeholder for exchange-specific extensions to OpenRTB.
  )
end
