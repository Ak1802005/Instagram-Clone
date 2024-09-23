enum ConstString {
  register('/register'),
  login('/login'),
  home('/homePage'),
  activity('/activity'),
  chatbox('/chatbox'),
  profile('/profile'),
  reel('/reel'),
  uploadPost('/uploadPost'),
  search('/search'),
  splash('/splash'),
  setting('/setting'),
  splashLottie('asset/Lottie/Animation - 1722947152297.json'),
  appLogo('asset/Image/genral/appLogo.png'),
  registerBackground('asset/Image/genral/background.png'),
  registerErrorTitle('Registration Process Failed'),
  registerErrorContent('     Please Fill all the fields\n                     and \n     Must Enter True Details.'),
  loginErrorTitle('Log In Process Failed'),
  loginErrorContent('     Something Went Roung \n     Please Enter Valid User.'),
  loginImage('asset/Image/genral/LoginLogo.png'),
  registerImage('asset/Image/genral/RegisterLogo.png'),
  logInBackground('asset/Image/genral/backGround1.png'),
  homeTitle('𝓐𝓚 𝓼𝓱𝓸𝓻𝓽𝓼');

  final String value;

  const ConstString(this.value);
}
