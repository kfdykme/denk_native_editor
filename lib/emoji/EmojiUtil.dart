
const CODE_BASE = 48;
const CODE_SUFFIX = 8419;
const CODE_SUFFIX_2 = 65039;
List<String> _emojiNumber = [];

String getEmojiNumberByIndex(int index) {
  if (_emojiNumber.isEmpty) {
    for (int x = 0; x < 10; x++) {
      _emojiNumber.add(String.fromCharCodes([CODE_BASE + x, CODE_SUFFIX, CODE_SUFFIX_2]));
    }
  }
  if (index < 10) {
    return _emojiNumber[index];
  }
  String result = "";
  int nextIndex = index;
  do {
    int currentIndex = nextIndex % 10;
    result = getEmojiNumberByIndex(currentIndex) + result;
    nextIndex = (nextIndex/10).floor();
  } while (nextIndex > 0);
  return result;
}
