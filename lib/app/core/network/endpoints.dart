enum Endpoints {
  base('https://greenenv-django.onrender.com'),
  login('/login/'),
  register('/register/');

  const Endpoints(this.url);
  final String url;
}
