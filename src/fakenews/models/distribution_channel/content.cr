class Content
  JSON.mapping(
    id: Any,
    # string
    # ID uniquely identifying the content.

    episode: Any,
    # integer
    # Episode number.

    title: Any,
    # string
    # Content title.
    # Video Examples: “Search Committee” (television), “A New Hope” (movie), or “Endgame” (made for web).
    # Non-Video Example: “Why an Antarctic Glacier Is Melting So Quickly” (Time magazine article).
    # series string Content series.
    # Video Examples: “The Office” (television), “Star Wars” (movie),
    # or “Arby ‘N’ The Chief” (made for web).
    # Non-Video Example: “Ecocentric” (Time Magazine blog).

    season: Any,
    # string
    # Content season (e.g., “Season 3”).

    artist: Any,
    # string
    # Artist credited with the content.

    genre: Any,
    # string
    # Genre that best describes the content (e.g., rock, pop, etc).
    album: Any,
    # string
    # Album to which the content belongs; typically for audio.

    isrc: Any,
    # string
    # International Standard Recording Code conforming to ISO- 3901.
    producer: Producer,
    # object
    # Details about the content Producer (Section 3.2.17).

    url: Any,
    #   string
    # URL of the content, for buy-side contextualization or review.
    cat: Any,
    # string array
    # Array of IAB content categories that describe the content producer. Refer to List 5.1.
    prodq: Any,
    #  integer
    # Production quality. Refer to List 5.13.

    videoquality: Any,
    # integer
    # Note: Deprecatedinfavorofpr odq.
    # DEPRECATED
    # Video quality. Refer to List 5.13.

    context: Any,
    # integer
    # Type of content (game, video, text, etc.). Refer to List 5.18.
    contentrating: Any,
    # string
    #  Content rating (e.g., MPAA).

    userrating: Any,
    # string
    # User rating of the content (e.g., number of stars, likes, etc.).

    qagmediarating: Any,
    # integer
    #   Media rating per IQG guidelines. Refer to List 5.19.

    keywords: Any,
    #   string
    # Comma separated list of keywords describing the content.

    livestream: Any,
    # integer
    #  0 = not live, 1 = content is live (e.g., stream, live blog).
    sourcerelationship: Any,
    # integer
    #   0 = indirect, 1 = direct.

    len: Any,
    # integer
    # Length of content in seconds; appropriate for video or audio.

    language: Any,
    # string
    # Content language using ISO-639-1-alpha-2.

    embeddable: Any,
    # integer
    # Indicator of whether or not the content is embeddable (e.g., an embeddable video player), where 0 = no, 1 = yes.

    data: Any,
    # object array
    # Additional content data. Each Data object (Section 3.2.21) represents a different data source.

    ext: Any,
    # object
    # Placeholder for exchange-specific extensions to OpenRTB.
  )
end

class Producer
  JSON.mapping(
    id: Any,
    # string
    # Description
    # Content producer or originator ID. Useful if content is syndicated and may be posted on a site using embed tags.
    name: Any,
    # string
    # Content producer or originator name (e.g., “Warner Bros”).
    cat: Any,
    # string array
    # Array of IAB content categories that describe the content producer. Refer to List 5.1.
    domain: Any,
    # string
    # Highest level domain of the content producer (e.g., “producer.com”).
    ext: Any,
    # object
    # Placeholder for exchange-specific extensions to OpenRTB.
  )
end
