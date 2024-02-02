int decoder(String romanNumber) {
  Map toDec = {
    'I': 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000,
  };

  int ans = 0;
  List<int> temp = [];

  romanNumber.split('').forEach((e) => temp.add(toDec[e]));

  for (int i = 0; i < temp.length; i++) {
    i == temp.length - 1 || temp[i] >= temp[i + 1]
        ? ans += temp[i]
        : ans -= temp[i];
  }

  return ans;
}
