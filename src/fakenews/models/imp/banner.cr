require "./constant"

class Banner
  JSON.mapping(
    # object array; recommended
    # Array of format objects (Section 3.2.10) representing the banner sizes permitted. If none are specified, then use of the h and w attributes is highly recommended.
    format: [] of Format,

    # integer
    # Exact width in device independent pixels (DIPS); recommended if no format objects are specified.
    w: Int8,

    # integer
    # Exact height in device independent pixels (DIPS); recommended if no format objects are specified.
    h: Int8,

    # integer; DEPRECATED
    # NOTE: Deprecatedinfavoroftheformatarray. Maximum width in device independent pixels (DIPS).
    # wmax: Any,

    # integer; DEPRECATED
    # NOTE: Deprecatedinfavoroftheformatarray. Maximum height in device independent pixels (DIPS).
    # hmax: Any,

    # integer; DEPRECATED
    # NOTE: Deprecatedinfavoroftheformatarray. Minimum width in device independent pixels (DIPS).
    # wmin: Any,

    # integer; DEPRECATED
    # NOTE: Deprecatedinfavoroftheformatarray. Minimum height in device independent pixels (DIPS).
    # hmin: Any,

    # integer array
    # Blocked banner ad types. Refer to List 5.2.
    btype: [] of BannerAdType,

    # integer array
    # Blocked creative attributes. Refer to List 5.3.
    battr: [] of CreativeAttribute,

    # integer
    # Ad position on screen. Refer to List 5.4.
    pos: Any,

    # string array
    # Content MIME types supported. Popular MIME types may include “application/x-shockwave-flash”, “image/jpg”, and “image/gif”.
    mimes: Any,

    # integer
    # Indicates if the banner is in the top frame as opposed to an iframe, where 0 = no, 1 = yes.
    topframe: Any,

    # integer array
    # Directions in which the banner may expand. Refer to List 5.5.
    expdir: Any,

    # integer array
    # List of supported API frameworks for this impression. Refer to List 5.6. If an API is not explicitly listed, it is assumed not to be supported.
    api: Any,

    # string
    # Unique identifier for this banner object. Recommended when Banner objects are used with a Video object (Section 3.2.7) to represent an array of companion ads. Values usually start at 1 and increase with each object; should be unique within an impression.
    id: Any,

    # integer
    # Relevant only for Banner objects used with a Video object (Section 3.2.7) in an array of companion ads. Indicates the companion banner rendering mode relative to the associated video, where 0 = concurrent, 1 = end-card.
    vcm: Any,

    # object
    # Placeholder for exchange-specific extensions to OpenRTB.
    ext: Any,
  )
end

class Format
  JSON.mapping(
    w: Any,
    # integer
    # Width in device independent pixels (DIPS).

    h: Any,
    # integer
    # Height in device independent pixels (DIPS).

    wratio: Any,
    # integer
    # Relative width when expressing size as a ratio.

    hratio: Any,
    # integer
    # Relative height when expressing size as a ratio.

    wmin: Any,
    # integer
    # The minimum width in device independent pixels (DIPS) at which the ad will be displayed the size is expressed as a ratio.

    ext: Any,
      # object
    # Placeholder for exchange-specific extensions to OpenRTB.
)
end
