import 'package:roman_numerals_decoder/roman_numerals_decoder.dart';
import 'package:test/test.dart';

void main() {
  group('group name', () {
    test('Decode M', () {
      expect(decoder('M'), 1000);
    });
    test('Decode MM', () {
      expect(decoder('MM'), 2000);
    });
    test('Decode CD', () {
      expect(decoder('CD'), 400);
    });
    test('Decode DC', () {
      expect(decoder('DC'), 600);
    });
    test('Decode XC', () {
      expect(decoder('XC'), 90);
    });
    test('Decode MDCLXVI', () {
      expect(decoder('MDCLXVI'), 1666);
    });
    test('Decode III', () {
      expect(decoder('LII'), 52);
      expect(decoder('III'), 3);
    });
    test('Decode MCMXCIV', () {
      expect(decoder('MCMXCIV'), 1994);
    });
    test('Random Test', () {
      expect(decoder('MMCMLXXVIII'), 2978);
      expect(decoder('MCDX'), 1410);
    });
  });
}
