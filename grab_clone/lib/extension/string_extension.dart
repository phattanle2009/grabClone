extension StringExtension on String {
  String getConcurrency() {
    var temp = this;
    List<String> result = [];
    while (temp.length > 3) {
      result.add(temp.substring(temp.length - 3, temp.length));
      temp = temp.replaceRange(temp.length - 3, temp.length, "");
    }
    result.add(temp);
    return result.reversed.join(".") + "₫";
  }
}
