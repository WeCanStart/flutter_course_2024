class SearchQuery {
  final String? city;

  final double? x;
  final double? y;

  const SearchQuery.city(this.city) : x = null, y = null;

  const SearchQuery.cords(this.x, this.y) : city = null;
}
