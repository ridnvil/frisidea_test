class ModelUser {
  String realname;
  String avatar;
  String email;
  String github;
  String linkedin;

  ModelUser(
      {this.realname, this.avatar, this.email, this.github, this.linkedin});

  ModelUser.fromJson(Map<String, dynamic> json) {
    realname = json['realname'];
    avatar = json['avatar'];
    email = json['email'];
    github = json['github'];
    linkedin = json['linkedin'];
  }

  ModelUser.toObject() {
    realname = "Ridwan";
    avatar = "https://avatars.githubusercontent.com/u/25822981?s=400&u=198fa6b556609ee6e1ec3f7b917bef1ffee38808&v=4";
    email = "rid.nvil17@gmail.com";
    github = "https://github.com/ridnvil";
    linkedin = "https://www.linkedin.com/in/rid-wan-57047b137";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['realname'] = this.realname;
    data['avatar'] = this.avatar;
    data['email'] = this.email;
    data['github'] = this.github;
    data['linkedin'] = this.linkedin;
    return data;
  }
}