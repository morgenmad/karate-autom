function fn() {

  var config = { // base config JSON

    urlServeur : 'https://reqres.in/api/users?page=1',
    login : "tuto",
    mdp : "titi"

  };


  karate.configure('connectTimeout', 5000);
  karate.configure('readTimeout', 5000);
  karate.configure('ssl', { trustAll: true });

  return config;
}