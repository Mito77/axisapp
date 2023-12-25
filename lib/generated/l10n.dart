// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Success`
  String get success {
    return Intl.message(
      'Success',
      name: 'success',
      desc: '',
      args: [],
    );
  }

  /// `Loading`
  String get loading {
    return Intl.message(
      'Loading',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `Hello!`
  String get title {
    return Intl.message(
      'Hello!',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `This is English`
  String get Message {
    return Intl.message(
      'This is English',
      name: 'Message',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get signIn {
    return Intl.message(
      'Sign in',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `delete account`
  String get delete {
    return Intl.message(
      'delete account',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Google`
  String get signInWithGoogle {
    return Intl.message(
      'Sign in with Google',
      name: 'signInWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `العربية`
  String get english {
    return Intl.message(
      'العربية',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Dark Theme`
  String get darkTheme {
    return Intl.message(
      'Dark Theme',
      name: 'darkTheme',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `history`
  String get history {
    return Intl.message(
      'history',
      name: 'history',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get more {
    return Intl.message(
      'More',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `yes`
  String get yes {
    return Intl.message(
      'yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `departure Time`
  String get departureTime {
    return Intl.message(
      'departure Time',
      name: 'departureTime',
      desc: '',
      args: [],
    );
  }

  /// `departure Data`
  String get departureData {
    return Intl.message(
      'departure Data',
      name: 'departureData',
      desc: '',
      args: [],
    );
  }

  /// `arrival Time`
  String get arrivalTime {
    return Intl.message(
      'arrival Time',
      name: 'arrivalTime',
      desc: '',
      args: [],
    );
  }

  /// `arrival Date`
  String get arrivalDate {
    return Intl.message(
      'arrival Date',
      name: 'arrivalDate',
      desc: '',
      args: [],
    );
  }

  /// `no`
  String get no {
    return Intl.message(
      'no',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure to delete the account ?`
  String get sureDelete {
    return Intl.message(
      'Are you sure to delete the account ?',
      name: 'sureDelete',
      desc: '',
      args: [],
    );
  }

  /// `at`
  String get at {
    return Intl.message(
      'at',
      name: 'at',
      desc: '',
      args: [],
    );
  }

  /// `Show Ticket`
  String get ShowTickets {
    return Intl.message(
      'Show Ticket',
      name: 'ShowTickets',
      desc: '',
      args: [],
    );
  }

  /// `Refunded`
  String get Refunded {
    return Intl.message(
      'Refunded',
      name: 'Refunded',
      desc: '',
      args: [],
    );
  }

  /// `Available`
  String get NotRefunded {
    return Intl.message(
      'Available',
      name: 'NotRefunded',
      desc: '',
      args: [],
    );
  }

  /// `Refund Status`
  String get ticketRefundStatus {
    return Intl.message(
      'Refund Status',
      name: 'ticketRefundStatus',
      desc: '',
      args: [],
    );
  }

  /// `password does not match`
  String get notSame {
    return Intl.message(
      'password does not match',
      name: 'notSame',
      desc: '',
      args: [],
    );
  }

  /// `Old password wrong`
  String get oldError {
    return Intl.message(
      'Old password wrong',
      name: 'oldError',
      desc: '',
      args: [],
    );
  }

  /// `Password has been updated`
  String get passwordChanged {
    return Intl.message(
      'Password has been updated',
      name: 'passwordChanged',
      desc: '',
      args: [],
    );
  }

  /// `Reservation`
  String get reservation {
    return Intl.message(
      'Reservation',
      name: 'reservation',
      desc: '',
      args: [],
    );
  }

  /// `My travels`
  String get myTravels {
    return Intl.message(
      'My travels',
      name: 'myTravels',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get account {
    return Intl.message(
      'Account',
      name: 'account',
      desc: '',
      args: [],
    );
  }

  /// `Reserve`
  String get reserveNow {
    return Intl.message(
      'Reserve',
      name: 'reserveNow',
      desc: '',
      args: [],
    );
  }

  /// `Inquiry`
  String get inquiry {
    return Intl.message(
      'Inquiry',
      name: 'inquiry',
      desc: '',
      args: [],
    );
  }

  /// `About Company`
  String get aboutCompany {
    return Intl.message(
      'About Company',
      name: 'aboutCompany',
      desc: '',
      args: [],
    );
  }

  /// `Refunded Date`
  String get DateRefunded {
    return Intl.message(
      'Refunded Date',
      name: 'DateRefunded',
      desc: '',
      args: [],
    );
  }

  /// `Gallery`
  String get gallery {
    return Intl.message(
      'Gallery',
      name: 'gallery',
      desc: '',
      args: [],
    );
  }

  /// `Last News`
  String get lastNews {
    return Intl.message(
      'Last News',
      name: 'lastNews',
      desc: '',
      args: [],
    );
  }

  /// `One Way`
  String get oneWay {
    return Intl.message(
      'One Way',
      name: 'oneWay',
      desc: '',
      args: [],
    );
  }

  /// `bed`
  String get bed {
    return Intl.message(
      'bed',
      name: 'bed',
      desc: '',
      args: [],
    );
  }

  /// `Gone and back`
  String get goneAndBack {
    return Intl.message(
      'Gone and back',
      name: 'goneAndBack',
      desc: '',
      args: [],
    );
  }

  /// `Select a station`
  String get selectStation {
    return Intl.message(
      'Select a station',
      name: 'selectStation',
      desc: '',
      args: [],
    );
  }

  /// `Select the arrival station`
  String get selectArrivalStation {
    return Intl.message(
      'Select the arrival station',
      name: 'selectArrivalStation',
      desc: '',
      args: [],
    );
  }

  /// `Choose your go date`
  String get chooseGoDate {
    return Intl.message(
      'Choose your go date',
      name: 'chooseGoDate',
      desc: '',
      args: [],
    );
  }

  /// `Search Now`
  String get searchNow {
    return Intl.message(
      'Search Now',
      name: 'searchNow',
      desc: '',
      args: [],
    );
  }

  /// `Search results`
  String get searchResults {
    return Intl.message(
      'Search results',
      name: 'searchResults',
      desc: '',
      args: [],
    );
  }

  /// `Major customers`
  String get mjrCustomers {
    return Intl.message(
      'Major customers',
      name: 'mjrCustomers',
      desc: '',
      args: [],
    );
  }

  /// `Train`
  String get travel {
    return Intl.message(
      'Train',
      name: 'travel',
      desc: '',
      args: [],
    );
  }

  /// `Travel Date`
  String get travelDate {
    return Intl.message(
      'Travel Date',
      name: 'travelDate',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get total {
    return Intl.message(
      'Total',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `Enter passenger data`
  String get enterPassengerData {
    return Intl.message(
      'Enter passenger data',
      name: 'enterPassengerData',
      desc: '',
      args: [],
    );
  }

  /// `Passenger`
  String get passenger {
    return Intl.message(
      'Passenger',
      name: 'passenger',
      desc: '',
      args: [],
    );
  }

  /// `Passenger's name`
  String get passengerName {
    return Intl.message(
      'Passenger\'s name',
      name: 'passengerName',
      desc: '',
      args: [],
    );
  }

  /// `Passenger type`
  String get passengerType {
    return Intl.message(
      'Passenger type',
      name: 'passengerType',
      desc: '',
      args: [],
    );
  }

  /// `Nationality`
  String get nationality {
    return Intl.message(
      'Nationality',
      name: 'nationality',
      desc: '',
      args: [],
    );
  }

  /// `National ID`
  String get nationalID {
    return Intl.message(
      'National ID',
      name: 'nationalID',
      desc: '',
      args: [],
    );
  }

  /// `Mobile number`
  String get mobileNumber {
    return Intl.message(
      'Mobile number',
      name: 'mobileNumber',
      desc: '',
      args: [],
    );
  }

  /// `Passenger gender`
  String get passengerGender {
    return Intl.message(
      'Passenger gender',
      name: 'passengerGender',
      desc: '',
      args: [],
    );
  }

  /// `Meal`
  String get meal {
    return Intl.message(
      'Meal',
      name: 'meal',
      desc: '',
      args: [],
    );
  }

  /// `Add a new passenger`
  String get addNewPassenger {
    return Intl.message(
      'Add a new passenger',
      name: 'addNewPassenger',
      desc: '',
      args: [],
    );
  }

  /// `Delete this passenger`
  String get deletePassenger {
    return Intl.message(
      'Delete this passenger',
      name: 'deletePassenger',
      desc: '',
      args: [],
    );
  }

  /// `Passenger info`
  String get passengerInfo {
    return Intl.message(
      'Passenger info',
      name: 'passengerInfo',
      desc: '',
      args: [],
    );
  }

  /// `Seat selection`
  String get seatSelection {
    return Intl.message(
      'Seat selection',
      name: 'seatSelection',
      desc: '',
      args: [],
    );
  }

  /// `Running trip`
  String get onGoing {
    return Intl.message(
      'Running trip',
      name: 'onGoing',
      desc: '',
      args: [],
    );
  }

  /// `Previous trip`
  String get previousTrip {
    return Intl.message(
      'Previous trip',
      name: 'previousTrip',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Refund`
  String get ticketRefund {
    return Intl.message(
      'Refund',
      name: 'ticketRefund',
      desc: '',
      args: [],
    );
  }

  /// `Train number`
  String get travelNum {
    return Intl.message(
      'Train number',
      name: 'travelNum',
      desc: '',
      args: [],
    );
  }

  /// `Parking station`
  String get parkingStation {
    return Intl.message(
      'Parking station',
      name: 'parkingStation',
      desc: '',
      args: [],
    );
  }

  /// `Account Details`
  String get accountDetails {
    return Intl.message(
      'Account Details',
      name: 'accountDetails',
      desc: '',
      args: [],
    );
  }

  /// `Change password`
  String get changeAccountDetails {
    return Intl.message(
      'Change password',
      name: 'changeAccountDetails',
      desc: '',
      args: [],
    );
  }

  /// `News`
  String get news {
    return Intl.message(
      'News',
      name: 'news',
      desc: '',
      args: [],
    );
  }

  /// `Contact Us`
  String get contactUs {
    return Intl.message(
      'Contact Us',
      name: 'contactUs',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Terms and conditions`
  String get termsCond {
    return Intl.message(
      'Terms and conditions',
      name: 'termsCond',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Welcome`
  String get welcome {
    return Intl.message(
      'Welcome',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to log in?`
  String get wantToLogin {
    return Intl.message(
      'Do you want to log in?',
      name: 'wantToLogin',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to refund this ticket ?`
  String get sureRefund {
    return Intl.message(
      'Do you want to refund this ticket ?',
      name: 'sureRefund',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to log out?`
  String get wantToLogout {
    return Intl.message(
      'Do you want to log out?',
      name: 'wantToLogout',
      desc: '',
      args: [],
    );
  }

  /// `Forget password`
  String get forgetPassword {
    return Intl.message(
      'Forget password',
      name: 'forgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Don't have account ?`
  String get newUser {
    return Intl.message(
      'Don\'t have account ?',
      name: 'newUser',
      desc: '',
      args: [],
    );
  }

  /// `We are glad you have joined us`
  String get gladToJoin {
    return Intl.message(
      'We are glad you have joined us',
      name: 'gladToJoin',
      desc: '',
      args: [],
    );
  }

  /// `User name or E-mail`
  String get userName {
    return Intl.message(
      'User name or E-mail',
      name: 'userName',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `First name`
  String get firstName {
    return Intl.message(
      'First name',
      name: 'firstName',
      desc: '',
      args: [],
    );
  }

  /// `Second name`
  String get lastName {
    return Intl.message(
      'Second name',
      name: 'lastName',
      desc: '',
      args: [],
    );
  }

  /// `Last name`
  String get surname {
    return Intl.message(
      'Last name',
      name: 'surname',
      desc: '',
      args: [],
    );
  }

  /// `Account type`
  String get accType {
    return Intl.message(
      'Account type',
      name: 'accType',
      desc: '',
      args: [],
    );
  }

  /// `Repeat password`
  String get repeatPass {
    return Intl.message(
      'Repeat password',
      name: 'repeatPass',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get gender {
    return Intl.message(
      'Gender',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `I agree with all`
  String get acceptAllTerms {
    return Intl.message(
      'I agree with all',
      name: 'acceptAllTerms',
      desc: '',
      args: [],
    );
  }

  /// `New registration`
  String get newRegister {
    return Intl.message(
      'New registration',
      name: 'newRegister',
      desc: '',
      args: [],
    );
  }

  /// `Current user`
  String get currentUser {
    return Intl.message(
      'Current user',
      name: 'currentUser',
      desc: '',
      args: [],
    );
  }

  /// `Please fill required field`
  String get fillRequired {
    return Intl.message(
      'Please fill required field',
      name: 'fillRequired',
      desc: '',
      args: [],
    );
  }

  /// `Terms and Conditions\nLast updated: December 23, 2020\n\nPlease read these terms and conditions carefully before using Our Service.\n\nInterpretation and Definitions\nInterpretation\nThe words of which the initial letter is capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural.\n\nDefinitions\nFor the purposes of these Terms and Conditions:\n\nAffiliate means an entity that controls, is controlled by or is under common control with a party, where "control" means ownership of 50% or more of the shares, equity interest or other securities entitled to vote for election of directors or other managing authority.\n\nCountry refers to: Egypt\n\nCompany (referred to as either "the Company", "We", "Us" or "Our" in this Agreement) refers to Ernst.\n\nDevice means any device that can access the Service such as a computer, a cellphone or a digital tablet.\n\nService refers to the Website.\n\nTerms and Conditions (also referred as "Terms") mean these Terms and Conditions that form the entire agreement between You and the Company regarding the use of the Service. This Terms and Conditions agreement has been created with the help of the Terms and Conditions Generator.\n\nThird-party Social Media Service means any services or content (including data, information, products or services) provided by a third-party that may be displayed, included or made available by the Service.\n\nWebsite refers to Ernst, accessible from ernst.com\n\nYou means the individual accessing or using the Service, or the company, or other legal entity on behalf of which such individual is accessing or using the Service, as applicable.\n\nAcknowledgment\nThese are the Terms and Conditions governing the use of this Service and the agreement that operates between You and the Company. These Terms and Conditions set out the rights and obligations of all users regarding the use of the Service.\n\nYour access to and use of the Service is conditioned on Your acceptance of and compliance with these Terms and Conditions. These Terms and Conditions apply to all visitors, users and others who access or use the Service.\n\nBy accessing or using the Service You agree to be bound by these Terms and Conditions. If You disagree with any part of these Terms and Conditions then You may not access the Service.\n\nYou represent that you are over the age of 18. The Company does not permit those under 18 to use the Service.\n\nYour access to and use of the Service is also conditioned on Your acceptance of and compliance with the Privacy Policy of the Company. Our Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your personal information when You use the Application or the Website and tells You about Your privacy rights and how the law protects You. Please read Our Privacy Policy carefully before using Our Service.\n\nLinks to Other Websites\nOur Service may contain links to third-party web sites or services that are not owned or controlled by the Company.\n\nThe Company has no control over, and assumes no responsibility for, the content, privacy policies, or practices of any third party web sites or services. You further acknowledge and agree that the Company shall not be responsible or liable, directly or indirectly, for any damage or loss caused or alleged to be caused by or in connection with the use of or reliance on any such content, goods or services available on or through any such web sites or services.\n\nWe strongly advise You to read the terms and conditions and privacy policies of any third-party web sites or services that You visit.\n\nTermination\nWe may terminate or suspend Your access immediately, without prior notice or liability, for any reason whatsoever, including without limitation if You breach these Terms and Conditions.\n\nUpon termination, Your right to use the Service will cease immediately.\n\nLimitation of Liability\nNotwithstanding any damages that You might incur, the entire liability of the Company and any of its suppliers under any provision of this Terms and Your exclusive remedy for all of the foregoing shall be limited to the amount actually paid by You through the Service or 100 USD if You haven't purchased anything through the Service.\n\nTo the maximum extent permitted by applicable law, in no event shall the Company or its suppliers be liable for any special, incidental, indirect, or consequential damages whatsoever (including, but not limited to, damages for loss of profits, loss of data or other information, for business interruption, for personal injury, loss of privacy arising out of or in any way related to the use of or inability to use the Service, third-party software and/or third-party hardware used with the Service, or otherwise in connection with any provision of this Terms), even if the Company or any supplier has been advised of the possibility of such damages and even if the remedy fails of its essential purpose.\n\nSome states do not allow the exclusion of implied warranties or limitation of liability for incidental or consequential damages, which means that some of the above limitations may not apply. In these states, each party's liability will be limited to the greatest extent permitted by law.\n\n"AS IS" and "AS AVAILABLE" Disclaimer\nThe Service is provided to You "AS IS" and "AS AVAILABLE" and with all faults and defects without warranty of any kind. To the maximum extent permitted under applicable law, the Company, on its own behalf and on behalf of its Affiliates and its and their respective licensors and service providers, expressly disclaims all warranties, whether express, implied, statutory or otherwise, with respect to the Service, including all implied warranties of merchantability, fitness for a particular purpose, title and non-infringement, and warranties that may arise out of course of dealing, course of performance, usage or trade practice. Without limitation to the foregoing, the Company provides no warranty or undertaking, and makes no representation of any kind that the Service will meet Your requirements, achieve any intended results, be compatible or work with any other software, applications, systems or services, operate without interruption, meet any performance or reliability standards or be error free or that any errors or defects can or will be corrected.\n\nWithout limiting the foregoing, neither the Company nor any of the company's provider makes any representation or warranty of any kind, express or implied: (i) as to the operation or availability of the Service, or the information, content, and materials or products included thereon; (ii) that the Service will be uninterrupted or error-free; (iii) as to the accuracy, reliability, or currency of any information or content provided through the Service; or (iv) that the Service, its servers, the content, or e-mails sent from or on behalf of the Company are free of viruses, scripts, trojan horses, worms, malware, timebombs or other harmful components.\n\nSome jurisdictions do not allow the exclusion of certain types of warranties or limitations on applicable statutory rights of a consumer, so some or all of the above exclusions and limitations may not apply to You. But in such a case the exclusions and limitations set forth in this section shall be applied to the greatest extent enforceable under applicable law.\n\nGoverning Law\nThe laws of the Country, excluding its conflicts of law rules, shall govern this Terms and Your use of the Service. Your use of the Application may also be subject to other local, state, national, or international laws.\n\nDisputes Resolution\nIf You have any concern or dispute about the Service, You agree to first try to resolve the dispute informally by contacting the Company.\n\nFor European Union (EU) Users\nIf You are a European Union consumer, you will benefit from any mandatory provisions of the law of the country in which you are resident in.\n\nUnited States Legal Compliance\nYou represent and warrant that (i) You are not located in a country that is subject to the United States government embargo, or that has been designated by the United States government as a "terrorist supporting" country, and (ii) You are not listed on any United States government list of prohibited or restricted parties.\n\nSeverability and Waiver\nSeverability\nIf any provision of these Terms is held to be unenforceable or invalid, such provision will be changed and interpreted to accomplish the objectives of such provision to the greatest extent possible under applicable law and the remaining provisions will continue in full force and effect.\n\nWaiver\nExcept as provided herein, the failure to exercise a right or to require performance of an obligation under this Terms shall not effect a party's ability to exercise such right or require such performance at any time thereafter nor shall be the waiver of a breach constitute a waiver of any subsequent breach.\n\nTranslation Interpretation\nThese Terms and Conditions may have been translated if We have made them available to You on our Service. You agree that the original English text shall prevail in the case of a dispute.\n\nChanges to These Terms and Conditions\nWe reserve the right, at Our sole discretion, to modify or replace these Terms at any time. If a revision is material We will make reasonable efforts to provide at least 30 days' notice prior to any new terms taking effect. What constitutes a material change will be determined at Our sole discretion.\n\nBy continuing to access or use Our Service after those revisions become effective, You agree to be bound by the revised terms. If You do not agree to the new terms, in whole or in part, please stop using the website and the Service.\n\nContact Us\nIf you have any questions about these Terms and Conditions, You can contact us:\n\nBy email: eslam.wael.8.ew@gmail.com`
  String get termsEx {
    return Intl.message(
      'Terms and Conditions\nLast updated: December 23, 2020\n\nPlease read these terms and conditions carefully before using Our Service.\n\nInterpretation and Definitions\nInterpretation\nThe words of which the initial letter is capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural.\n\nDefinitions\nFor the purposes of these Terms and Conditions:\n\nAffiliate means an entity that controls, is controlled by or is under common control with a party, where "control" means ownership of 50% or more of the shares, equity interest or other securities entitled to vote for election of directors or other managing authority.\n\nCountry refers to: Egypt\n\nCompany (referred to as either "the Company", "We", "Us" or "Our" in this Agreement) refers to Ernst.\n\nDevice means any device that can access the Service such as a computer, a cellphone or a digital tablet.\n\nService refers to the Website.\n\nTerms and Conditions (also referred as "Terms") mean these Terms and Conditions that form the entire agreement between You and the Company regarding the use of the Service. This Terms and Conditions agreement has been created with the help of the Terms and Conditions Generator.\n\nThird-party Social Media Service means any services or content (including data, information, products or services) provided by a third-party that may be displayed, included or made available by the Service.\n\nWebsite refers to Ernst, accessible from ernst.com\n\nYou means the individual accessing or using the Service, or the company, or other legal entity on behalf of which such individual is accessing or using the Service, as applicable.\n\nAcknowledgment\nThese are the Terms and Conditions governing the use of this Service and the agreement that operates between You and the Company. These Terms and Conditions set out the rights and obligations of all users regarding the use of the Service.\n\nYour access to and use of the Service is conditioned on Your acceptance of and compliance with these Terms and Conditions. These Terms and Conditions apply to all visitors, users and others who access or use the Service.\n\nBy accessing or using the Service You agree to be bound by these Terms and Conditions. If You disagree with any part of these Terms and Conditions then You may not access the Service.\n\nYou represent that you are over the age of 18. The Company does not permit those under 18 to use the Service.\n\nYour access to and use of the Service is also conditioned on Your acceptance of and compliance with the Privacy Policy of the Company. Our Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your personal information when You use the Application or the Website and tells You about Your privacy rights and how the law protects You. Please read Our Privacy Policy carefully before using Our Service.\n\nLinks to Other Websites\nOur Service may contain links to third-party web sites or services that are not owned or controlled by the Company.\n\nThe Company has no control over, and assumes no responsibility for, the content, privacy policies, or practices of any third party web sites or services. You further acknowledge and agree that the Company shall not be responsible or liable, directly or indirectly, for any damage or loss caused or alleged to be caused by or in connection with the use of or reliance on any such content, goods or services available on or through any such web sites or services.\n\nWe strongly advise You to read the terms and conditions and privacy policies of any third-party web sites or services that You visit.\n\nTermination\nWe may terminate or suspend Your access immediately, without prior notice or liability, for any reason whatsoever, including without limitation if You breach these Terms and Conditions.\n\nUpon termination, Your right to use the Service will cease immediately.\n\nLimitation of Liability\nNotwithstanding any damages that You might incur, the entire liability of the Company and any of its suppliers under any provision of this Terms and Your exclusive remedy for all of the foregoing shall be limited to the amount actually paid by You through the Service or 100 USD if You haven\'t purchased anything through the Service.\n\nTo the maximum extent permitted by applicable law, in no event shall the Company or its suppliers be liable for any special, incidental, indirect, or consequential damages whatsoever (including, but not limited to, damages for loss of profits, loss of data or other information, for business interruption, for personal injury, loss of privacy arising out of or in any way related to the use of or inability to use the Service, third-party software and/or third-party hardware used with the Service, or otherwise in connection with any provision of this Terms), even if the Company or any supplier has been advised of the possibility of such damages and even if the remedy fails of its essential purpose.\n\nSome states do not allow the exclusion of implied warranties or limitation of liability for incidental or consequential damages, which means that some of the above limitations may not apply. In these states, each party\'s liability will be limited to the greatest extent permitted by law.\n\n"AS IS" and "AS AVAILABLE" Disclaimer\nThe Service is provided to You "AS IS" and "AS AVAILABLE" and with all faults and defects without warranty of any kind. To the maximum extent permitted under applicable law, the Company, on its own behalf and on behalf of its Affiliates and its and their respective licensors and service providers, expressly disclaims all warranties, whether express, implied, statutory or otherwise, with respect to the Service, including all implied warranties of merchantability, fitness for a particular purpose, title and non-infringement, and warranties that may arise out of course of dealing, course of performance, usage or trade practice. Without limitation to the foregoing, the Company provides no warranty or undertaking, and makes no representation of any kind that the Service will meet Your requirements, achieve any intended results, be compatible or work with any other software, applications, systems or services, operate without interruption, meet any performance or reliability standards or be error free or that any errors or defects can or will be corrected.\n\nWithout limiting the foregoing, neither the Company nor any of the company\'s provider makes any representation or warranty of any kind, express or implied: (i) as to the operation or availability of the Service, or the information, content, and materials or products included thereon; (ii) that the Service will be uninterrupted or error-free; (iii) as to the accuracy, reliability, or currency of any information or content provided through the Service; or (iv) that the Service, its servers, the content, or e-mails sent from or on behalf of the Company are free of viruses, scripts, trojan horses, worms, malware, timebombs or other harmful components.\n\nSome jurisdictions do not allow the exclusion of certain types of warranties or limitations on applicable statutory rights of a consumer, so some or all of the above exclusions and limitations may not apply to You. But in such a case the exclusions and limitations set forth in this section shall be applied to the greatest extent enforceable under applicable law.\n\nGoverning Law\nThe laws of the Country, excluding its conflicts of law rules, shall govern this Terms and Your use of the Service. Your use of the Application may also be subject to other local, state, national, or international laws.\n\nDisputes Resolution\nIf You have any concern or dispute about the Service, You agree to first try to resolve the dispute informally by contacting the Company.\n\nFor European Union (EU) Users\nIf You are a European Union consumer, you will benefit from any mandatory provisions of the law of the country in which you are resident in.\n\nUnited States Legal Compliance\nYou represent and warrant that (i) You are not located in a country that is subject to the United States government embargo, or that has been designated by the United States government as a "terrorist supporting" country, and (ii) You are not listed on any United States government list of prohibited or restricted parties.\n\nSeverability and Waiver\nSeverability\nIf any provision of these Terms is held to be unenforceable or invalid, such provision will be changed and interpreted to accomplish the objectives of such provision to the greatest extent possible under applicable law and the remaining provisions will continue in full force and effect.\n\nWaiver\nExcept as provided herein, the failure to exercise a right or to require performance of an obligation under this Terms shall not effect a party\'s ability to exercise such right or require such performance at any time thereafter nor shall be the waiver of a breach constitute a waiver of any subsequent breach.\n\nTranslation Interpretation\nThese Terms and Conditions may have been translated if We have made them available to You on our Service. You agree that the original English text shall prevail in the case of a dispute.\n\nChanges to These Terms and Conditions\nWe reserve the right, at Our sole discretion, to modify or replace these Terms at any time. If a revision is material We will make reasonable efforts to provide at least 30 days\' notice prior to any new terms taking effect. What constitutes a material change will be determined at Our sole discretion.\n\nBy continuing to access or use Our Service after those revisions become effective, You agree to be bound by the revised terms. If You do not agree to the new terms, in whole or in part, please stop using the website and the Service.\n\nContact Us\nIf you have any questions about these Terms and Conditions, You can contact us:\n\nBy email: eslam.wael.8.ew@gmail.com',
      name: 'termsEx',
      desc: '',
      args: [],
    );
  }

  /// `Select passengers number`
  String get selectPassengerNum {
    return Intl.message(
      'Select passengers number',
      name: 'selectPassengerNum',
      desc: '',
      args: [],
    );
  }

  /// `Passengers number`
  String get passengerNum {
    return Intl.message(
      'Passengers number',
      name: 'passengerNum',
      desc: '',
      args: [],
    );
  }

  /// `Identity type`
  String get identityType {
    return Intl.message(
      'Identity type',
      name: 'identityType',
      desc: '',
      args: [],
    );
  }

  /// `Passport`
  String get passport {
    return Intl.message(
      'Passport',
      name: 'passport',
      desc: '',
      args: [],
    );
  }

  /// `Type of cabin`
  String get TypeOfCabin {
    return Intl.message(
      'Type of cabin',
      name: 'TypeOfCabin',
      desc: '',
      args: [],
    );
  }

  /// `Book`
  String get book {
    return Intl.message(
      'Book',
      name: 'book',
      desc: '',
      args: [],
    );
  }

  /// `From Date`
  String get fromDate {
    return Intl.message(
      'From Date',
      name: 'fromDate',
      desc: '',
      args: [],
    );
  }

  /// `To Date`
  String get toDate {
    return Intl.message(
      'To Date',
      name: 'toDate',
      desc: '',
      args: [],
    );
  }

  /// `QR Code`
  String get qrCode {
    return Intl.message(
      'QR Code',
      name: 'qrCode',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get update {
    return Intl.message(
      'Update',
      name: 'update',
      desc: '',
      args: [],
    );
  }

  /// `Email us`
  String get emailUs {
    return Intl.message(
      'Email us',
      name: 'emailUs',
      desc: '',
      args: [],
    );
  }

  /// `Message Title`
  String get messageTitle {
    return Intl.message(
      'Message Title',
      name: 'messageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Text message`
  String get messageTxt {
    return Intl.message(
      'Text message',
      name: 'messageTxt',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get send {
    return Intl.message(
      'Send',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `country`
  String get country {
    return Intl.message(
      'country',
      name: 'country',
      desc: '',
      args: [],
    );
  }

  /// `Train Type`
  String get trainType {
    return Intl.message(
      'Train Type',
      name: 'trainType',
      desc: '',
      args: [],
    );
  }

  /// `Train Number`
  String get trainNum {
    return Intl.message(
      'Train Number',
      name: 'trainNum',
      desc: '',
      args: [],
    );
  }

  /// `Please fill in all required data for passengers`
  String get PleaseFillInAllRequiredData {
    return Intl.message(
      'Please fill in all required data for passengers',
      name: 'PleaseFillInAllRequiredData',
      desc: '',
      args: [],
    );
  }

  /// `About us :`
  String get aboutUs {
    return Intl.message(
      'About us :',
      name: 'aboutUs',
      desc: '',
      args: [],
    );
  }

  /// `Abela Egypt is an Egyptian Catering and Services Company established in 1986.  The company provides catering support services for clients in various industries such as oil companies, construction sites, hospitals, universities, schools and special events.\nAbela Trains Services is a subsidiary of Abela Egypt and is managing Egypt’s sleeping trains full operation and services, in addition to managing the services offered onboard of all the trains across Egypt. We are pleased to offer best in class services for more than 400,000 passengers annually travelling with us.`
  String get aboutUsInfo {
    return Intl.message(
      'Abela Egypt is an Egyptian Catering and Services Company established in 1986.  The company provides catering support services for clients in various industries such as oil companies, construction sites, hospitals, universities, schools and special events.\nAbela Trains Services is a subsidiary of Abela Egypt and is managing Egypt’s sleeping trains full operation and services, in addition to managing the services offered onboard of all the trains across Egypt. We are pleased to offer best in class services for more than 400,000 passengers annually travelling with us.',
      name: 'aboutUsInfo',
      desc: '',
      args: [],
    );
  }

  /// `seat Price`
  String get seatPrice {
    return Intl.message(
      'seat Price',
      name: 'seatPrice',
      desc: '',
      args: [],
    );
  }

  /// `Double`
  String get double {
    return Intl.message(
      'Double',
      name: 'double',
      desc: '',
      args: [],
    );
  }

  /// `Single`
  String get single {
    return Intl.message(
      'Single',
      name: 'single',
      desc: '',
      args: [],
    );
  }

  /// `No Trips Found`
  String get no_trips {
    return Intl.message(
      'No Trips Found',
      name: 'no_trips',
      desc: '',
      args: [],
    );
  }

  /// `Show Ticket`
  String get showTicket {
    return Intl.message(
      'Show Ticket',
      name: 'showTicket',
      desc: '',
      args: [],
    );
  }

  /// `Please wait, it will be transferred to the bank`
  String get pleaseWait {
    return Intl.message(
      'Please wait, it will be transferred to the bank',
      name: 'pleaseWait',
      desc: '',
      args: [],
    );
  }

  /// `Seats`
  String get seat {
    return Intl.message(
      'Seats',
      name: 'seat',
      desc: '',
      args: [],
    );
  }

  /// `I agree to the terms and conditions`
  String get acceptTerms {
    return Intl.message(
      'I agree to the terms and conditions',
      name: 'acceptTerms',
      desc: '',
      args: [],
    );
  }

  /// `The trip has not been booked`
  String get reserveError {
    return Intl.message(
      'The trip has not been booked',
      name: 'reserveError',
      desc: '',
      args: [],
    );
  }

  /// `Your trip has been successfully booked`
  String get reserveDone {
    return Intl.message(
      'Your trip has been successfully booked',
      name: 'reserveDone',
      desc: '',
      args: [],
    );
  }

  /// `Pay`
  String get pay {
    return Intl.message(
      'Pay',
      name: 'pay',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get ok {
    return Intl.message(
      'Ok',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `There is a problem with the bank`
  String get bankError {
    return Intl.message(
      'There is a problem with the bank',
      name: 'bankError',
      desc: '',
      args: [],
    );
  }

  /// `Ticket has been refunded`
  String get refundDone {
    return Intl.message(
      'Ticket has been refunded',
      name: 'refundDone',
      desc: '',
      args: [],
    );
  }

  /// `Refund Error`
  String get refundError {
    return Intl.message(
      'Refund Error',
      name: 'refundError',
      desc: '',
      args: [],
    );
  }

  /// `There is a problem with the company`
  String get transItError {
    return Intl.message(
      'There is a problem with the company',
      name: 'transItError',
      desc: '',
      args: [],
    );
  }

  /// `Company Profile`
  String get companyProfile {
    return Intl.message(
      'Company Profile',
      name: 'companyProfile',
      desc: '',
      args: [],
    );
  }

  /// `Thank you for choosing our services`
  String get thanksChoosing {
    return Intl.message(
      'Thank you for choosing our services',
      name: 'thanksChoosing',
      desc: '',
      args: [],
    );
  }

  /// `National number`
  String get nationNum {
    return Intl.message(
      'National number',
      name: 'nationNum',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get date {
    return Intl.message(
      'Date',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  /// `Refund`
  String get refund {
    return Intl.message(
      'Refund',
      name: 'refund',
      desc: '',
      args: [],
    );
  }

  /// `From - To`
  String get fromTo {
    return Intl.message(
      'From - To',
      name: 'fromTo',
      desc: '',
      args: [],
    );
  }

  /// `Bed Number`
  String get bedNum {
    return Intl.message(
      'Bed Number',
      name: 'bedNum',
      desc: '',
      args: [],
    );
  }

  /// `Bed Type`
  String get bedType {
    return Intl.message(
      'Bed Type',
      name: 'bedType',
      desc: '',
      args: [],
    );
  }

  /// `ticket number`
  String get ticketNum {
    return Intl.message(
      'ticket number',
      name: 'ticketNum',
      desc: '',
      args: [],
    );
  }

  /// `Release Date`
  String get releaseDate {
    return Intl.message(
      'Release Date',
      name: 'releaseDate',
      desc: '',
      args: [],
    );
  }

  /// `Payment Method`
  String get paymentMethod {
    return Intl.message(
      'Payment Method',
      name: 'paymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `Passenger Class`
  String get passengerClass {
    return Intl.message(
      'Passenger Class',
      name: 'passengerClass',
      desc: '',
      args: [],
    );
  }

  /// `Trip Price`
  String get tripPrice {
    return Intl.message(
      'Trip Price',
      name: 'tripPrice',
      desc: '',
      args: [],
    );
  }

  /// `Trip Number`
  String get tripNum {
    return Intl.message(
      'Trip Number',
      name: 'tripNum',
      desc: '',
      args: [],
    );
  }

  /// `Old Password`
  String get oldPass {
    return Intl.message(
      'Old Password',
      name: 'oldPass',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get male {
    return Intl.message(
      'Male',
      name: 'male',
      desc: '',
      args: [],
    );
  }

  /// `Female`
  String get female {
    return Intl.message(
      'Female',
      name: 'female',
      desc: '',
      args: [],
    );
  }

  /// `Personal`
  String get personal {
    return Intl.message(
      'Personal',
      name: 'personal',
      desc: '',
      args: [],
    );
  }

  /// `Egypt`
  String get egypt {
    return Intl.message(
      'Egypt',
      name: 'egypt',
      desc: '',
      args: [],
    );
  }

  /// `Company`
  String get company {
    return Intl.message(
      'Company',
      name: 'company',
      desc: '',
      args: [],
    );
  }

  /// `Amount to be refunded`
  String get moneyWillRefund {
    return Intl.message(
      'Amount to be refunded',
      name: 'moneyWillRefund',
      desc: '',
      args: [],
    );
  }

  /// `Ticket price paid`
  String get ticketPaid {
    return Intl.message(
      'Ticket price paid',
      name: 'ticketPaid',
      desc: '',
      args: [],
    );
  }

  /// `discount percentage`
  String get discountPercentage {
    return Intl.message(
      'discount percentage',
      name: 'discountPercentage',
      desc: '',
      args: [],
    );
  }

  /// `Trip cannot be refunded`
  String get notRefunded {
    return Intl.message(
      'Trip cannot be refunded',
      name: 'notRefunded',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message(
      'Register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Please write the number correctly`
  String get fillCorrectNum {
    return Intl.message(
      'Please write the number correctly',
      name: 'fillCorrectNum',
      desc: '',
      args: [],
    );
  }

  /// `Error, make sure the data is correct`
  String get errorData {
    return Intl.message(
      'Error, make sure the data is correct',
      name: 'errorData',
      desc: '',
      args: [],
    );
  }

  /// `Registration completed successfully, Please login`
  String get registerDone {
    return Intl.message(
      'Registration completed successfully, Please login',
      name: 'registerDone',
      desc: '',
      args: [],
    );
  }

  /// `user with this mobile already exists`
  String get errorMSgmobile {
    return Intl.message(
      'user with this mobile already exists',
      name: 'errorMSgmobile',
      desc: '',
      args: [],
    );
  }

  /// `Passport number`
  String get passportNum {
    return Intl.message(
      'Passport number',
      name: 'passportNum',
      desc: '',
      args: [],
    );
  }

  /// `is Family`
  String get isFamily {
    return Intl.message(
      'is Family',
      name: 'isFamily',
      desc: '',
      args: [],
    );
  }

  /// `Not Family`
  String get notFamily {
    return Intl.message(
      'Not Family',
      name: 'notFamily',
      desc: '',
      args: [],
    );
  }

  /// `user with this username already exists`
  String get errorMSgEmail {
    return Intl.message(
      'user with this username already exists',
      name: 'errorMSgEmail',
      desc: '',
      args: [],
    );
  }

  /// `user with this email already exists`
  String get errorMSgusername {
    return Intl.message(
      'user with this email already exists',
      name: 'errorMSgusername',
      desc: '',
      args: [],
    );
  }

  /// `user with this number of identification already exists`
  String get errorMSgnumber {
    return Intl.message(
      'user with this number of identification already exists',
      name: 'errorMSgnumber',
      desc: '',
      args: [],
    );
  }

  /// `Can't reserve family cabine for solo passenger`
  String get familyError {
    return Intl.message(
      'Can\'t reserve family cabine for solo passenger',
      name: 'familyError',
      desc: '',
      args: [],
    );
  }

  /// `E-mail`
  String get EmailOnly {
    return Intl.message(
      'E-mail',
      name: 'EmailOnly',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get sendEmail {
    return Intl.message(
      'Send',
      name: 'sendEmail',
      desc: '',
      args: [],
    );
  }

  /// `user name`
  String get usernameOnly {
    return Intl.message(
      'user name',
      name: 'usernameOnly',
      desc: '',
      args: [],
    );
  }

  /// `There is no active user associated with this e-mail address`
  String get Noemail {
    return Intl.message(
      'There is no active user associated with this e-mail address',
      name: 'Noemail',
      desc: '',
      args: [],
    );
  }

  /// `Check your email`
  String get EmailDone {
    return Intl.message(
      'Check your email',
      name: 'EmailDone',
      desc: '',
      args: [],
    );
  }

  /// `The code that was sent to email`
  String get SendCode {
    return Intl.message(
      'The code that was sent to email',
      name: 'SendCode',
      desc: '',
      args: [],
    );
  }

  /// `New password`
  String get newPass {
    return Intl.message(
      'New password',
      name: 'newPass',
      desc: '',
      args: [],
    );
  }

  /// `Password changed`
  String get newPassChange {
    return Intl.message(
      'Password changed',
      name: 'newPassChange',
      desc: '',
      args: [],
    );
  }

  /// `Weak password`
  String get fieldpassword {
    return Intl.message(
      'Weak password',
      name: 'fieldpassword',
      desc: '',
      args: [],
    );
  }

  /// `Seat Type `
  String get seatType {
    return Intl.message(
      'Seat Type ',
      name: 'seatType',
      desc: '',
      args: [],
    );
  }

  /// `Ticket`
  String get Ticket {
    return Intl.message(
      'Ticket',
      name: 'Ticket',
      desc: '',
      args: [],
    );
  }

  /// `Coach Number`
  String get CoachNumber {
    return Intl.message(
      'Coach Number',
      name: 'CoachNumber',
      desc: '',
      args: [],
    );
  }

  /// `Tickets`
  String get Tickets {
    return Intl.message(
      'Tickets',
      name: 'Tickets',
      desc: '',
      args: [],
    );
  }

  /// `Seat Number`
  String get seatNumber {
    return Intl.message(
      'Seat Number',
      name: 'seatNumber',
      desc: '',
      args: [],
    );
  }

  /// `Coach Order`
  String get coachOrder {
    return Intl.message(
      'Coach Order',
      name: 'coachOrder',
      desc: '',
      args: [],
    );
  }

  /// `departure Station`
  String get departureStation {
    return Intl.message(
      'departure Station',
      name: 'departureStation',
      desc: '',
      args: [],
    );
  }

  /// `arrival Station`
  String get arrivalStation {
    return Intl.message(
      'arrival Station',
      name: 'arrivalStation',
      desc: '',
      args: [],
    );
  }

  /// `You must update this app to last version`
  String get shouldUpdate {
    return Intl.message(
      'You must update this app to last version',
      name: 'shouldUpdate',
      desc: '',
      args: [],
    );
  }

  /// `to version `
  String get shouldUpdate2 {
    return Intl.message(
      'to version ',
      name: 'shouldUpdate2',
      desc: '',
      args: [],
    );
  }

  /// `Revise passenger data`
  String get reviseData {
    return Intl.message(
      'Revise passenger data',
      name: 'reviseData',
      desc: '',
      args: [],
    );
  }

  /// `error`
  String get error {
    return Intl.message(
      'error',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `noDataFound`
  String get noDataFound {
    return Intl.message(
      'noDataFound',
      name: 'noDataFound',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get errorButton {
    return Intl.message(
      'Ok',
      name: 'errorButton',
      desc: '',
      args: [],
    );
  }

  /// `required`
  String get required {
    return Intl.message(
      'required',
      name: 'required',
      desc: '',
      args: [],
    );
  }

  /// `Password Required`
  String get passwordRequired {
    return Intl.message(
      'Password Required',
      name: 'passwordRequired',
      desc: '',
      args: [],
    );
  }

  /// `Invalid Password`
  String get invalidPassword {
    return Intl.message(
      'Invalid Password',
      name: 'invalidPassword',
      desc: '',
      args: [],
    );
  }

  /// `emailRequired`
  String get emailRequired {
    return Intl.message(
      'emailRequired',
      name: 'emailRequired',
      desc: '',
      args: [],
    );
  }

  /// `invalidEmail`
  String get invalidEmail {
    return Intl.message(
      'invalidEmail',
      name: 'invalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Where are you going ?`
  String get whereGo {
    return Intl.message(
      'Where are you going ?',
      name: 'whereGo',
      desc: '',
      args: [],
    );
  }

  /// `Know more`
  String get knowMor {
    return Intl.message(
      'Know more',
      name: 'knowMor',
      desc: '',
      args: [],
    );
  }

  /// `Train Services Company`
  String get abela {
    return Intl.message(
      'Train Services Company',
      name: 'abela',
      desc: '',
      args: [],
    );
  }

  /// `From`
  String get from {
    return Intl.message(
      'From',
      name: 'from',
      desc: '',
      args: [],
    );
  }

  /// `To`
  String get to {
    return Intl.message(
      'To',
      name: 'to',
      desc: '',
      args: [],
    );
  }

  /// `Trip Date`
  String get tripDate {
    return Intl.message(
      'Trip Date',
      name: 'tripDate',
      desc: '',
      args: [],
    );
  }

  /// `Departure time`
  String get fromTime {
    return Intl.message(
      'Departure time',
      name: 'fromTime',
      desc: '',
      args: [],
    );
  }

  /// `Arrival Time`
  String get toTime {
    return Intl.message(
      'Arrival Time',
      name: 'toTime',
      desc: '',
      args: [],
    );
  }

  /// `Price for single cabine`
  String get priceOdd {
    return Intl.message(
      'Price for single cabine',
      name: 'priceOdd',
      desc: '',
      args: [],
    );
  }

  /// `Price for double cabine`
  String get priceDouble {
    return Intl.message(
      'Price for double cabine',
      name: 'priceDouble',
      desc: '',
      args: [],
    );
  }

  /// `Stopped Stations`
  String get stops {
    return Intl.message(
      'Stopped Stations',
      name: 'stops',
      desc: '',
      args: [],
    );
  }

  /// `Available seats`
  String get avalibleSeats {
    return Intl.message(
      'Available seats',
      name: 'avalibleSeats',
      desc: '',
      args: [],
    );
  }

  /// `Trips available on`
  String get tripAvalible {
    return Intl.message(
      'Trips available on',
      name: 'tripAvalible',
      desc: '',
      args: [],
    );
  }

  /// `station`
  String get station {
    return Intl.message(
      'station',
      name: 'station',
      desc: '',
      args: [],
    );
  }

  /// `accept`
  String get accept {
    return Intl.message(
      'accept',
      name: 'accept',
      desc: '',
      args: [],
    );
  }

  /// `National ID`
  String get identify {
    return Intl.message(
      'National ID',
      name: 'identify',
      desc: '',
      args: [],
    );
  }

  /// `change`
  String get change {
    return Intl.message(
      'change',
      name: 'change',
      desc: '',
      args: [],
    );
  }

  /// `Login done successfully`
  String get loginDone {
    return Intl.message(
      'Login done successfully',
      name: 'loginDone',
      desc: '',
      args: [],
    );
  }

  /// `Logout done`
  String get logoutDone {
    return Intl.message(
      'Logout done',
      name: 'logoutDone',
      desc: '',
      args: [],
    );
  }

  /// `Account deleted`
  String get deleteDone {
    return Intl.message(
      'Account deleted',
      name: 'deleteDone',
      desc: '',
      args: [],
    );
  }

  /// `New Account`
  String get newUserReg {
    return Intl.message(
      'New Account',
      name: 'newUserReg',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Code`
  String get code {
    return Intl.message(
      'Code',
      name: 'code',
      desc: '',
      args: [],
    );
  }

  /// `Refund Time`
  String get RefundTime {
    return Intl.message(
      'Refund Time',
      name: 'RefundTime',
      desc: '',
      args: [],
    );
  }

  /// `expired`
  String get expired {
    return Intl.message(
      'expired',
      name: 'expired',
      desc: '',
      args: [],
    );
  }

  /// `available`
  String get available {
    return Intl.message(
      'available',
      name: 'available',
      desc: '',
      args: [],
    );
  }

  /// `Try again`
  String get again {
    return Intl.message(
      'Try again',
      name: 'again',
      desc: '',
      args: [],
    );
  }

  /// `oppps`
  String get oppps {
    return Intl.message(
      'oppps',
      name: 'oppps',
      desc: '',
      args: [],
    );
  }

  /// `No internet connection`
  String get internet {
    return Intl.message(
      'No internet connection',
      name: 'internet',
      desc: '',
      args: [],
    );
  }

  /// `You must login first`
  String get mustLogin {
    return Intl.message(
      'You must login first',
      name: 'mustLogin',
      desc: '',
      args: [],
    );
  }

  /// `Filter`
  String get filter {
    return Intl.message(
      'Filter',
      name: 'filter',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
