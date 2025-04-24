import 'package:email_validator/email_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

class FormFieldsRefreshController extends Cubit<bool> {
  bool refresh;

  FormFieldsRefreshController(this.refresh) : super(refresh);

  trigger(bool reload) {
    refresh = reload;
    emit(refresh);
  }
}

enum NameFieldError {
  empty,
  tooLong,
}

enum CountryCodeFieldError {
  empty,
  invalid,
}

enum ContactNoFieldError {
  empty,
  notDigits,
  tooLong,
}

enum EmailFieldError {
  empty,
  invalid,
  tooLong,
}

enum Address1FieldError {
  empty,
  tooLong,
}

enum Address2FieldError {
  tooLong,
}

enum CityFieldError {
  empty,
  tooLong,
}

enum PostCodeFieldError {
  empty,
  tooLong,
  notDigits,
}

enum GeoStateFieldError {
  empty,
  invalid,
}

enum GeoCountryFieldError {
  empty,
  invalid,
}

enum CCNoFieldError {
  empty,
  invalid,
}

enum CCNameFieldError {
  empty,
  tooLong,
}

enum CCExpMonthFieldError {
  empty,
  invalid,
}

enum CCExpYearFieldError {
  empty,
  invalid,
}

enum CCCVVFieldError {
  empty,
  invalid,
}

class DemoScreenWizardForm {
  /// Customer Info
  FirstNameField firstNameField;
  LastNameField lastNameField;
  CountryCodeField countryCodeField;
  ContactNoField contactNoField;
  EmailField emailField;

  /// Shipment Info
  Address1Field address1Field;
  Address2Field address2Field;
  CityField cityField;
  PostCodeField postCodeField;
  GeoCountryField geoCountryField;
  GeoStateField geoStateField;

  /// Credit Card Info
  CCNoField ccNoField;
  CCNameField ccNameField;
  CCExpMonthField ccExpMonthField;
  CCExpYearField ccExpYearField;
  CCCVVField ccCVVField;

  DemoScreenWizardForm({
    /// Customer Info
    this.firstNameField = const FirstNameField.pure(),
    this.lastNameField = const LastNameField.pure(),
    this.countryCodeField = const CountryCodeField.dirty(value: 'AU'),
    this.contactNoField = const ContactNoField.pure(),
    this.emailField = const EmailField.pure(),

    /// Shipment Info
    this.address1Field = const Address1Field.pure(),
    this.address2Field = const Address2Field.pure(),
    this.cityField = const CityField.pure(),
    this.postCodeField = const PostCodeField.pure(),
    this.geoCountryField = const GeoCountryField.dirty(value: 'AU'),
    this.geoStateField = const GeoStateField.dirty(value: 'NSW'),

    // Credit Card Info
    this.ccNoField = const CCNoField.pure(),
    this.ccNameField = const CCNameField.pure(),
    this.ccExpMonthField = const CCExpMonthField.pure(),
    this.ccExpYearField = const CCExpYearField.pure(),
    this.ccCVVField = const CCCVVField.pure(),
  });

  bool isPage1Validated() {
    return !firstNameField.isPure &&
        firstNameField.isValid &&
        !lastNameField.isPure &&
        lastNameField.isValid &&
        !countryCodeField.isPure &&
        countryCodeField.isValid &&
        !contactNoField.isPure &&
        contactNoField.isValid &&
        !emailField.isPure &&
        emailField.isValid;
  }

  bool isPage2Validated() {
    return true;
  }

  bool isPage3Validated() {
    return !address1Field.isPure &&
        address1Field.isValid &&
        address2Field.isValid &&
        !cityField.isPure &&
        cityField.isValid &&
        !postCodeField.isPure &&
        postCodeField.isValid &&
        !geoCountryField.isPure &&
        geoCountryField.isValid &&
        !geoStateField.isPure &&
        geoStateField.isValid;
  }

  bool isPage4Validated() {
    return !ccNoField.isPure &&
        ccNoField.isValid &&
        !ccNameField.isPure &&
        ccNameField.isValid &&
        !ccExpMonthField.isPure &&
        ccExpMonthField.isValid &&
        !ccExpYearField.isPure &&
        ccExpYearField.isValid &&
        !ccCVVField.isPure &&
        ccCVVField.isValid;
  }
}

class FirstNameField extends FormzInput<String, NameFieldError> {
  const FirstNameField.pure() : super.pure('');

  const FirstNameField.dirty({String value = ''}) : super.dirty(value);

  @override
  NameFieldError? validator(String value) {
    if (value.isEmpty) {
      return NameFieldError.empty;
    } else if (value.length > 250) {
      return NameFieldError.tooLong;
    }

    return null;
  }
}

class LastNameField extends FormzInput<String, NameFieldError> {
  const LastNameField.pure() : super.pure('');

  const LastNameField.dirty({String value = ''}) : super.dirty(value);

  @override
  NameFieldError? validator(String value) {
    if (value.isEmpty) {
      return NameFieldError.empty;
    } else if (value.length > 250) {
      return NameFieldError.tooLong;
    }

    return null;
  }
}

class CountryCodeField extends FormzInput<String, CountryCodeFieldError> {
  const CountryCodeField.pure() : super.pure('');

  const CountryCodeField.dirty({String value = ''}) : super.dirty(value);

  @override
  CountryCodeFieldError? validator(String value) {
    if (value.isEmpty) {
      return CountryCodeFieldError.empty;
    } else if (value.length != 2) {
      return CountryCodeFieldError.invalid;
    }

    return null;
  }
}

class ContactNoField extends FormzInput<String, ContactNoFieldError> {
  const ContactNoField.pure() : super.pure('');

  const ContactNoField.dirty({String value = ''}) : super.dirty(value);

  @override
  ContactNoFieldError? validator(String value) {
    var regExp = RegExp(r'^[0-9]*$');

    if (value.isEmpty) {
      return ContactNoFieldError.empty;
    } else if (value.length > 10) {
      return ContactNoFieldError.tooLong;
    } else if (!regExp.hasMatch(value)) {
      return ContactNoFieldError.notDigits;
    }

    return null;
  }
}

class EmailField extends FormzInput<String, EmailFieldError> {
  const EmailField.pure() : super.pure('');

  const EmailField.dirty({String value = ''}) : super.dirty(value);

  @override
  EmailFieldError? validator(String value) {
    if (value.isEmpty) {
      return EmailFieldError.empty;
    } else if (value.length > 100) {
      return EmailFieldError.tooLong;
    } else if (!EmailValidator.validate(value)) {
      return EmailFieldError.invalid;
    }

    return null;
  }
}

class Address1Field extends FormzInput<String, Address1FieldError> {
  const Address1Field.pure() : super.pure('');

  const Address1Field.dirty({String value = ''}) : super.dirty(value);

  @override
  Address1FieldError? validator(String value) {
    if (value.isEmpty) {
      return Address1FieldError.empty;
    } else if (value.length > 250) {
      return Address1FieldError.tooLong;
    }

    return null;
  }
}

class Address2Field extends FormzInput<String, Address2FieldError> {
  const Address2Field.pure() : super.pure('');

  const Address2Field.dirty({String value = ''}) : super.dirty(value);

  @override
  Address2FieldError? validator(String value) {
    if (value.isNotEmpty && value.length > 250) {
      return Address2FieldError.tooLong;
    }

    return null;
  }
}

class CityField extends FormzInput<String, CityFieldError> {
  const CityField.pure() : super.pure('');

  const CityField.dirty({String value = ''}) : super.dirty(value);

  @override
  CityFieldError? validator(String value) {
    if (value.isEmpty) {
      return CityFieldError.empty;
    } else if (value.isNotEmpty && value.length > 250) {
      return CityFieldError.tooLong;
    }

    return null;
  }
}

class PostCodeField extends FormzInput<String, PostCodeFieldError> {
  const PostCodeField.pure() : super.pure('');

  const PostCodeField.dirty({String value = ''}) : super.dirty(value);

  @override
  PostCodeFieldError? validator(String value) {
    var regExp = RegExp(r'^[0-9]*$');

    if (value.isEmpty) {
      return PostCodeFieldError.empty;
    } else if (value.length > 5) {
      return PostCodeFieldError.tooLong;
    } else if (!regExp.hasMatch(value)) {
      return PostCodeFieldError.notDigits;
    }

    return null;
  }
}

class GeoStateField extends FormzInput<String, GeoStateFieldError> {
  const GeoStateField.pure() : super.pure('');

  const GeoStateField.dirty({String value = ''}) : super.dirty(value);

  @override
  GeoStateFieldError? validator(String value) {
    if (value.isEmpty) {
      return GeoStateFieldError.empty;
    } else if (value.length < 2) {
      return GeoStateFieldError.invalid;
    }

    return null;
  }
}

class GeoCountryField extends FormzInput<String, GeoCountryFieldError> {
  const GeoCountryField.pure() : super.pure('');

  const GeoCountryField.dirty({String value = ''}) : super.dirty(value);

  @override
  GeoCountryFieldError? validator(String value) {
    if (value.isEmpty) {
      return GeoCountryFieldError.empty;
    } else if (value.length != 2) {
      return GeoCountryFieldError.invalid;
    }

    return null;
  }
}

class CCNoField extends FormzInput<String, CCNoFieldError> {
  const CCNoField.pure() : super.pure('');

  const CCNoField.dirty({String value = ''}) : super.dirty(value);

  @override
  CCNoFieldError? validator(String value) {
    if (value.isEmpty) {
      return CCNoFieldError.empty;
    } else if (value.length != 19) {
      return CCNoFieldError.invalid;
    }

    return null;
  }
}

class CCNameField extends FormzInput<String, CCNameFieldError> {
  const CCNameField.pure() : super.pure('');

  const CCNameField.dirty({String value = ''}) : super.dirty(value);

  @override
  CCNameFieldError? validator(String value) {
    if (value.isEmpty) {
      return CCNameFieldError.empty;
    } else if (value.length > 250) {
      return CCNameFieldError.tooLong;
    }

    return null;
  }
}

class CCExpMonthField extends FormzInput<String, CCExpMonthFieldError> {
  const CCExpMonthField.pure() : super.pure('');

  const CCExpMonthField.dirty({String value = ''}) : super.dirty(value);

  @override
  CCExpMonthFieldError? validator(String value) {
    if (value.isEmpty) {
      return CCExpMonthFieldError.empty;
    } else if (value.length != 2) {
      return CCExpMonthFieldError.invalid;
    }

    int mth = int.parse(value);

    if (mth < 1 || mth > 12) {
      return CCExpMonthFieldError.invalid;
    }

    return null;
  }
}

class CCExpYearField extends FormzInput<String, CCExpYearFieldError> {
  const CCExpYearField.pure() : super.pure('');

  const CCExpYearField.dirty({String value = ''}) : super.dirty(value);

  @override
  CCExpYearFieldError? validator(String value) {
    if (value.isEmpty) {
      return CCExpYearFieldError.empty;
    } else if (value.length != 4) {
      return CCExpYearFieldError.invalid;
    }

    int year = int.parse(value);

    if (year < DateTime.now().year) {
      return CCExpYearFieldError.invalid;
    }

    return null;
  }
}

class CCCVVField extends FormzInput<String, CCCVVFieldError> {
  const CCCVVField.pure() : super.pure('');

  const CCCVVField.dirty({String value = ''}) : super.dirty(value);

  @override
  CCCVVFieldError? validator(String value) {
    var regExp = RegExp(r'^[0-9]*$');

    if (value.isEmpty) {
      return CCCVVFieldError.empty;
    } else if (!regExp.hasMatch(value)) {
      return CCCVVFieldError.invalid;
    }

    return null;
  }
}
