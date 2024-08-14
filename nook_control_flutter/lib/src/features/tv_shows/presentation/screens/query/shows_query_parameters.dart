class ShowsQueryParameters {
  const ShowsQueryParameters({
    this.name,
  });
  final String? name;
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      if (name != null) 'name': name,
    };
  }
}
