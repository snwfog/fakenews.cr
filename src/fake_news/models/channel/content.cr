require "json"
require "../data"

module FakeNews
  class Content
    include JSON::Serializable
    # string
    # ID uniquely identifying the content.
    @[JSON::Field(key: "")]
    property id : String

    # integer
    # Episode number.
    @[JSON::Field(key: "")]
    property episode : String

    # string
    # Content title.
    # Video Examples: “Search Committee” (television), “A New Hope” (movie), or “Endgame” (made for web).
    # Non-Video Example: “Why an Antarctic Glacier Is Melting So Quickly” (Time magazine article).
    # series string Content series.
    # Video Examples: “The Office” (television), “Star Wars” (movie),
    # or “Arby ‘N’ The Chief” (made for web).
    # Non-Video Example: “Ecocentric” (Time Magazine blog).
    @[JSON::Field(key: "")]
    property title : String

    # string
    # Content season (e.g., “Season 3”).
    @[JSON::Field(key: "")]
    property season : String

    # string
    # Artist credited with the content.
    @[JSON::Field(key: "")]
    property artist : String

    # string
    # Genre that best describes the content (e.g., rock, pop, etc).
    @[JSON::Field(key: "")]
    property genre : String

    # string
    # Album to which the content belongs; typically for audio.
    @[JSON::Field(key: "")]
    property album : String

    # string
    # International Standard Recording Code conforming to ISO- 3901.
    @[JSON::Field(key: "")]
    property isrc : String

    # object
    # Details about the content Producer (Section 3.2.17).
    @[JSON::Field(key: "")]
    property producer : Producer

    # string
    # URL of the content, for buy-side contextualization or review.
    @[JSON::Field(key: "")]
    property url : String

    # string array
    # Array of IAB content categories that describe the content producer. Refer to List 5.1.
    @[JSON::Field(key: "")]
    property cat : String

    # integer
    # Production quality. Refer to List 5.13.
    @[JSON::Field(key: "")]
    property prodq : String

    # integer
    # DEPRECATED
    @[JSON::Field(key: "")]
    property videoquality : String

    # Video quality. Refer to List 5.13.
    @[JSON::Field(key: "")]
    property # Note : Deprecatedinfavorofpr odq

    # integer
    # Type of content (game, video, text, etc.). Refer to List 5.18.
    @[JSON::Field(key: "")]
    property context : String

    # string
    # Content rating (e.g., MPAA).
    @[JSON::Field(key: "")]
    property contentrating : String

    # string
    # User rating of the content (e.g., number of stars, likes, etc.).
    @[JSON::Field(key: "")]
    property userrating : String

    # integer
    # Media rating per IQG guidelines. Refer to List 5.19.
    @[JSON::Field(key: "")]
    property qagmediarating : String

    # string
    # Comma separated list of keywords describing the content.
    @[JSON::Field(key: "")]
    property keywords : String

    # integer
    # 0 = not live, 1 = content is live (e.g., stream, live blog).
    @[JSON::Field(key: "")]
    property livestream : String
    # integer
    # 0 = indirect, 1 = direct.
    @[JSON::Field(key: "")]
    property sourcerelationship : String

    # integer
    # Length of content in seconds; appropriate for video or audio.
    @[JSON::Field(key: "")]
    property len : String

    # string
    # Content language using ISO-639-1-alpha-2.
    @[JSON::Field(key: "")]
    property language : String

    # integer
    # Indicator of whether or not the content is embeddable (e.g., an embeddable video player), where 0 = no, 1 = yes.
    @[JSON::Field(key: "")]
    property embeddable : String

    # object array
    # Additional content data. Each Data object (Section 3.2.21) represents a different data source.
    @[JSON::Field(key: "")]
    property data : Array(Data)

    # object
    # Placeholder for exchange-specific extensions to OpenRTB.
    @[JSON::Field(key: "")]
    property ext : String
  end

  class Producer
    include JSON::Serializable
    # string
    # Content producer or originator ID. Useful if content is syndicated and may be posted on a site using embed tags.
    @[JSON::Field(key: "")]
    property id : String

    # string
    # Content producer or originator name (e.g., “Warner Bros”).
    @[JSON::Field(key: "")]
    property name : String

    # string array
    # Array of IAB content categories that describe the content producer. Refer to List 5.1.
    @[JSON::Field(key: "")]
    property cat : String

    # string
    # Highest level domain of the content producer (e.g., “producer.com”).
    @[JSON::Field(key: "")]
    property domain : String

    # object
    # Placeholder for exchange-specific extensions to OpenRTB.
    @[JSON::Field(key: "")]
    property ext : String
  end
end
