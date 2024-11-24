class ApiEndPoints {
static const String baseurl = 'https://localhost:7051';
static _AuthEndPionts authEndPoints = _AuthEndPionts();  
}

class _AuthEndPionts {
  final String login = '/Api/Accounts/login';
  final String register = '/Api/Accounts/RegisterCustomer';
  final String forget = '/Api/Accounts/Forgot-password';
  final String verifyOTP = '/api/accounts/VerifyOTP';
  final String resetPass = '/api/Accounts/Resetpassword';
}