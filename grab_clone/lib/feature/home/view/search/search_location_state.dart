class SearchLocationState {
  bool isShowShadow;
  bool isSuggestionSearch;
  double scrolledOffset;
  String searchNavigationTitle;
  String selectedLabel;
  bool isShowSearchBar;

  SearchLocationState({
    this.isShowShadow = false,
    this.scrolledOffset = 0.0,
    this.isSuggestionSearch = true,
    this.searchNavigationTitle = "Pick Up/Drop Off Gate",
    this.selectedLabel = "All",
    this.isShowSearchBar = true,
  });
}
