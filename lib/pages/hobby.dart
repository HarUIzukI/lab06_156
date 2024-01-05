class Hobby {
  final String Name;
  bool checked;

  Hobby({required this.Name, required this.checked});

  static List<Hobby> getHobby() {
    return [
      Hobby(Name: "เล่นเกม", checked: false),
      Hobby(Name: "ดูหนัง", checked: false),
      Hobby(Name: "ฟังเพลง", checked: false),
      Hobby(Name: "ออกกำลังกาย", checked: false),
    ];
  }
}
