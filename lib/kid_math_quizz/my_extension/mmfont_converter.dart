class MMfontConverter {
  static String mmFontConvert(int? number) {
    List<String> numList = number.toString().split("");
    List<String> mmList = [];
    String mmNumber;
    if (number == null) {
      mmNumber = '  ';
    } else {
      for (int i = 0; i < numList.length; i++) {
        switch (numList[i]) {
          case '0':
            mmList.add('၀');
          case '1':
            mmList.add('၁');
          case '2':
            mmList.add('၂');
          case '3':
            mmList.add('၃');
          case '4':
            mmList.add('၄');
          case '5':
            mmList.add('၅');
          case '6':
            mmList.add('၆');
          case '7':
            mmList.add('၇');
          case '8':
            mmList.add('၈');
          case '9':
            mmList.add('၉');
        }
      }
      mmNumber = mmList.join("");
    }
    return mmNumber;
  }
}
