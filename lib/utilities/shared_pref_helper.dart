import 'package:axisapp/enum/shared_pref_enum.dart';
import 'package:simple_shared_pref/simple_shared_pref.dart';

class SharedPRefHelper {
  bool get isLight =>
      SimpleSharedPref().getValue(key: SharedPrefEnum.isLight.toString())!;

  bool get rememberMe {
    if (SimpleSharedPref().containsKey(SharedPrefEnum.rememberMe.toString()))
      return SimpleSharedPref()
          .getValue(key: SharedPrefEnum.rememberMe.toString())!;
    return false;
  }

  String get userId {
    if (SimpleSharedPref().containsKey(SharedPrefEnum.userId.toString()))
      return SimpleSharedPref()
          .getValue(key: SharedPrefEnum.userId.toString())!;
    return '';
  }
  String get getPassengersData {
    if (SimpleSharedPref().containsKey(SharedPrefEnum.passengersData.toString()))
      return SimpleSharedPref()
          .getValue(key: SharedPrefEnum.passengersData.toString())!;
    return '';
  }
  String get ticketPrice {
    if (SimpleSharedPref().containsKey(SharedPrefEnum.ticketPrice.toString()))
      return SimpleSharedPref()
          .getValue(key: SharedPrefEnum.ticketPrice.toString())!;
    return '';
  }


  String get getBearerToken {
    if (SimpleSharedPref().containsKey(SharedPrefEnum.bearerToken.toString()))
      return SimpleSharedPref()
          .getValue(key: SharedPrefEnum.bearerToken.toString())!;
    return '';
  }

  String get getRefreshToken {
    if (SimpleSharedPref().containsKey(SharedPrefEnum.refresh_token.toString()))
      return SimpleSharedPref()
          .getValue(key: SharedPrefEnum.refresh_token.toString())!;
    return '';
  }

  String get getHashKey {
    if (SimpleSharedPref().containsKey(SharedPrefEnum.hashKey.toString()))
      return SimpleSharedPref()
          .getValue(key: SharedPrefEnum.hashKey.toString())!;
    return '';
  }

  String get getPatientName {
    if (SimpleSharedPref().containsKey(SharedPrefEnum.patientName.toString()))
      return SimpleSharedPref()
          .getValue(key: SharedPrefEnum.patientName.toString())!;
    return '';
  }

  String get getPatientPhone {
    if (SimpleSharedPref().containsKey(SharedPrefEnum.patientPhone.toString()))
      return SimpleSharedPref()
          .getValue(key: SharedPrefEnum.patientPhone.toString())!;
    return '';
  }

  String get getBookingId {
    if (SimpleSharedPref().containsKey(SharedPrefEnum.bookingId.toString()))
      return SimpleSharedPref()
          .getValue(key: SharedPrefEnum.bookingId.toString())!;
    return '';
  }

  String get getExaminationDate {
    if (SimpleSharedPref()
        .containsKey(SharedPrefEnum.examinationDate.toString()))
      return SimpleSharedPref()
          .getValue(key: SharedPrefEnum.examinationDate.toString())!;
    return '';
  }

  String get getBookingDate {
    if (SimpleSharedPref().containsKey(SharedPrefEnum.bookingDate.toString()))
      return SimpleSharedPref()
          .getValue(key: SharedPrefEnum.bookingDate.toString())!;
    return '';
  }

  String get getUserData {
    if (SimpleSharedPref().containsKey(SharedPrefEnum.userData.toString()))
      return SimpleSharedPref()
          .getValue(key: SharedPrefEnum.userData.toString())!;
    return '';
  }

  String get getEmail {
    if (SimpleSharedPref().containsKey(SharedPrefEnum.email.toString()))
      return SimpleSharedPref().getValue(key: SharedPrefEnum.email.toString())!;
    return '';
  }

  String get getDeviceId {
    if (SimpleSharedPref().containsKey(SharedPrefEnum.Device_ID.toString()))
      return SimpleSharedPref()
          .getValue(key: SharedPrefEnum.Device_ID.toString())!;
    return '';
  }

  String get getReservation_number {
    if (SimpleSharedPref()
        .containsKey(SharedPrefEnum.reservation_number.toString()))
      return SimpleSharedPref()
          .getValue(key: SharedPrefEnum.reservation_number.toString())!;
    return '';
  }

  String get getReservationDateTo {
    if (SimpleSharedPref()
        .containsKey(SharedPrefEnum.reservationDateTo.toString()))
      return SimpleSharedPref()
          .getValue(key: SharedPrefEnum.reservationDateTo.toString())!;
    return '';
  }

  String get loginNumber {
    if (SimpleSharedPref().containsKey(SharedPrefEnum.loginNumber.toString()))
      return SimpleSharedPref()
          .getValue(key: SharedPrefEnum.loginNumber.toString())!;
    return '';
  }

  String get loginPassword {
    if (SimpleSharedPref().containsKey(SharedPrefEnum.loginPassword.toString()))
      return SimpleSharedPref()
          .getValue(key: SharedPrefEnum.loginPassword.toString())!;
    return '';
  }

  String get getShiftID {
    if (SimpleSharedPref().containsKey(SharedPrefEnum.Shift_ID.toString()))
      return SimpleSharedPref()
          .getValue(key: SharedPrefEnum.Shift_ID.toString())!;
    return '';
  }

  String get getAccessToken {
    if (SimpleSharedPref().containsKey(SharedPrefEnum.access_token.toString()))
      return SimpleSharedPref()
          .getValue(key: SharedPrefEnum.access_token.toString())!;
    return '';
  }

  String get getLanguage {
    if (SimpleSharedPref().containsKey(SharedPrefEnum.language.toString()))
      return SimpleSharedPref()
          .getValue(key: SharedPrefEnum.language.toString())!;
    return '';
  }

  void setUserId(String userId) {
    SimpleSharedPref().getValue(key: SharedPrefEnum.userId.toString());
  }

  void setBearerToken(String value) {
    SimpleSharedPref().getValue(key: SharedPrefEnum.bearerToken.toString());
  }

  void setAccessToken(String value) {
    SimpleSharedPref().getValue(key: SharedPrefEnum.access_token.toString());
  }

  void setRefreshToken(String value) {
    SimpleSharedPref().getValue(key: SharedPrefEnum.refresh_token.toString());
  }

  void setHashKey(String hashKey) {
    SimpleSharedPref().getValue(key: SharedPrefEnum.hashKey.toString());
  }

 void setPassengersData(String passengersData) {
    SimpleSharedPref().setValue(key: SharedPrefEnum.passengersData.toString(), value: passengersData);
  }
  void setTicketPrice(String ticketPrice) {
    SimpleSharedPref().setValue(key: SharedPrefEnum.ticketPrice.toString(), value: ticketPrice);
  }


  void setLoginNumber(String loginNumber) {
    SimpleSharedPref().getValue(key: SharedPrefEnum.loginNumber.toString());
  }

  void setLoginPassword(String loginPassword) {
    SimpleSharedPref().getValue(key: SharedPrefEnum.loginPassword.toString());
  }

  void setPatientName(String patientName) {
    SimpleSharedPref().getValue(key: SharedPrefEnum.patientName.toString());
  }

  void setRememberMePassword(bool rememberMe) {
    SimpleSharedPref()
        .setValue(value: rememberMe, key: SharedPrefEnum.rememberMe.toString());
  }

  void setBookingId(String bookingId) {
    SimpleSharedPref().getValue(key: SharedPrefEnum.bookingId.toString());
  }

  void setBookingDate(String bookingDate) {
    SimpleSharedPref().getValue(key: SharedPrefEnum.bookingDate.toString());
  }

  void setUserData(String userData) {
    SimpleSharedPref().getValue(key: SharedPrefEnum.userData.toString());
  }

  void setEmail(String email) {
    SimpleSharedPref().getValue(key: SharedPrefEnum.email.toString());
  }

  void setDeviceId(String Device_ID) {
    SimpleSharedPref().getValue(key: SharedPrefEnum.Device_ID.toString());
  }

  void setReservation_number(String reservation_number) {
    SimpleSharedPref()
        .setValue(value: reservation_number, key: SharedPrefEnum.reservation_number.toString());
  }

  void setReservationDateTo(String reservationDateTo) {
    SimpleSharedPref()
        .getValue(key: SharedPrefEnum.reservationDateTo.toString());
  }

  void setShiftID(String Shift_ID) {
    SimpleSharedPref().getValue(key: SharedPrefEnum.Shift_ID.toString());
  }

  void setExaminationDate(String examinationDate) {
    SimpleSharedPref().getValue(key: SharedPrefEnum.examinationDate.toString());
  }

  void setPatientPhone(String patientPhone) {
    SimpleSharedPref().getValue(key: SharedPrefEnum.patientPhone.toString());
  }

  void setDarkMode(bool value) {
    SimpleSharedPref()
        .setValue(key: SharedPrefEnum.isLight.toString(), value: value);
  }

  void setLanguage(String value) {
    SimpleSharedPref().getValue(key: SharedPrefEnum.language.toString());
  }
}
