class Profile{
  String name;
  String description;
  String job;
  String localisation;
  String img;

  Profile({required this.name, required this.job, this.description = "Pas de description pour le moment.", required this.localisation, this.img = "default_profile.jpg"});
}