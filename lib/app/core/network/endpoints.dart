enum Endpoints {
  base('https://greenenv-django.onrender.com'),
  login('/login/'),
  getTrees('/get-trees/'),
  register('/register/');

  const Endpoints(this.url);
  final String url;
}
