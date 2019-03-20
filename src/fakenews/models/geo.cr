class Geo
  # float
  # Latitude from -90.0 to +90.0, where negative is south.
  property lat : Any

  # float
  # Longitude from -180.0 to +180.0, where negative is west.
  property lon : Any

  # integer
  # Source of location data; recommended when passing lat/lon. Refer to List 5.20.
  property type : Any

  # integer
  # Estimated location accuracy in meters; recommended when lat/lon are specified and derived from a device’s location services (i.e., type = 1). Note that this is the accuracy as reported from the device. Consult OS specific documentation (e.g., Android, iOS) for exact interpretation.
  property accuracy : Any

  # integer
  # Number of seconds since this geolocation fix was established. Note that devices may cache location data across multiple fetches. Ideally, this value should be from the time the actual fix was taken.
  property lastfix : Any

  # integer
  # Service or provider used to determine geolocation from IP address if applicable (i.e., type = 2). Refer to List 5.23.
  property ipservice : Any

  # string
  # Country code using ISO-3166-1-alpha-3.
  property country : Any

  # string
  # Region code using ISO-3166-2; 2-letter state code if USA.
  property region : Any

  # string
  # Region of a country using FIPS 10-4 notation. While OpenRTB supports this attribute, it has been withdrawn by NIST in 2008.
  property regionfips104 : Any

  # string
  # Google metro code; similar to but not exactly Nielsen DMAs. See Appendix A for a link to the codes.
  property metro : Any

  # string
  # City using United Nations Code for Trade & Transport Locations. See Appendix A for a link to the codes.
  property city : Any

  # string
  # Zip or postal code.
  property zip : Any

  # integer
  # Local time as the number +/- of minutes from UTC.
  property utcoffset : Any

  #  object
  # Placeholder for exchange-specific extensions to OpenRTB.
  property ext : Any
end
