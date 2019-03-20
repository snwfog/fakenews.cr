class Content
  # string
  # ID uniquely identifying the content.
  property id : Any

  # integer
  # Episode number.
  property episode : Any

  # string
  # Content title.
  # Video Examples: “Search Committee” (television), “A New Hope” (movie), or “Endgame” (made for web).
  # Non-Video Example: “Why an Antarctic Glacier Is Melting So Quickly” (Time magazine article).
  # series string Content series.
  # Video Examples: “The Office” (television), “Star Wars” (movie),
  # or “Arby ‘N’ The Chief” (made for web).
  # Non-Video Example: “Ecocentric” (Time Magazine blog).
  property title : Any

  # string
  # Content season (e.g., “Season 3”).
  property season : Any

  # string
  # Artist credited with the content.
  property artist : Any

  # string
  # Genre that best describes the content (e.g., rock, pop, etc).
  property genre : Any

  # string
  # Album to which the content belongs; typically for audio.
  property album : Any

  # string
  # International Standard Recording Code conforming to ISO- 3901.
  property isrc : Any

  # object
  # Details about the content Producer (Section 3.2.17).
  property producer : Producer

  # string
  # URL of the content, for buy-side contextualization or review.
  property url : Any

  # string array
  # Array of IAB content categories that describe the content producer. Refer to List 5.1.
  property cat : Any

  # integer
  # Production quality. Refer to List 5.13.
  property prodq : Any

  # integer
  # DEPRECATED
  property videoquality : Any

  # Video quality. Refer to List 5.13.
  property # Note : Deprecatedinfavorofpr odq

  # integer
  # Type of content (game, video, text, etc.). Refer to List 5.18.
  property context : Any

  # string
  # Content rating (e.g., MPAA).
  property contentrating : Any

  # string
  # User rating of the content (e.g., number of stars, likes, etc.).
  property userrating : Any

  # integer
  # Media rating per IQG guidelines. Refer to List 5.19.
  property qagmediarating : Any

  # string
  # Comma separated list of keywords describing the content.
  property keywords : Any

  # integer
  # 0 = not live, 1 = content is live (e.g., stream, live blog).
  property livestream : Any
  # integer
  # 0 = indirect, 1 = direct.
  property sourcerelationship : Any

  # integer
  # Length of content in seconds; appropriate for video or audio.
  property len : Any

  # string
  # Content language using ISO-639-1-alpha-2.
  property language : Any

  # integer
  # Indicator of whether or not the content is embeddable (e.g., an embeddable video player), where 0 = no, 1 = yes.
  property embeddable : Any

  # object array
  # Additional content data. Each Data object (Section 3.2.21) represents a different data source.
  property data : Any

  # object
  # Placeholder for exchange-specific extensions to OpenRTB.
  property ext : Any
end

class Producer
  # string
  # Content producer or originator ID. Useful if content is syndicated and may be posted on a site using embed tags.
  property id : Any

  # string
  # Content producer or originator name (e.g., “Warner Bros”).
  property name : Any

  # string array
  # Array of IAB content categories that describe the content producer. Refer to List 5.1.
  property cat : Any

  # string
  # Highest level domain of the content producer (e.g., “producer.com”).
  property domain : Any

  # object
  # Placeholder for exchange-specific extensions to OpenRTB.
  property ext : Any
end
