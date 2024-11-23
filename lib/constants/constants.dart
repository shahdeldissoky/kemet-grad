class ApiEndPoints {
static final String baseurl = 'https://localhost:7051';
static _AuthEndPionts authEndPoints = _AuthEndPionts();  
}

class _AuthEndPionts {
  final String login = '/Api/Accounts/login';
  final String register = '/Api/Accounts/RegisterCustomer';
}