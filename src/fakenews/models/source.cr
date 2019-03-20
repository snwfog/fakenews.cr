class Source
  JSON.mapping(
    # Integer; recommended
    # Entity responsible for the final impression sale decision, where 0 = exchange, 1 = upstream source.
    fd: Int32,

    # string; recommended
    # Transaction ID that must be common across all participants in this bid request (e.g., potentially multiple exchanges).
    tid: Int32,

    # string; recommended
    # Payment ID chain string containing embedded syntax described in the TAG Payment ID Protocol v1.0.
    pchain: String,
  )
end
