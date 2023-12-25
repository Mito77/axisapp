class Constant {
  static String appLanguage = 'ar';

  static const String mobileRegex = '^([0-9]{50})\$';
  static const String baseLiveUrl = 'http://10.1.23.63:1212/';
  static const String baseDebugUrl = 'http://10.1.23.63:1212/';
  static const String eslamUrl = 'http://10.1.23.63:1212/';
  static const String filesUrl = 'http://10.1.23.63:1212/';

  static paymentUrl(String reservationNumber, int userId, userdeleteDialog,lang) =>
      "https://abelatrains.com/BankPayment/Payment.aspx?reservation_number="
          "$reservationNumber&user=$userId&channel=3&lang=$lang&deleteDialog=$userdeleteDialog";

  static refundPaymentUrl(
      String reservationNumber, int userId, userdeleteDialog, int ticket) =>
      "https://abelatrains.com/BankPayment/refund.aspx?reservation_number="
          "$reservationNumber&user=$userId&channel=3&deleteDialog=$userdeleteDialog&ticket=$ticket";

  static const bool appLive = false;
  static const int apiVersion = 1;
}