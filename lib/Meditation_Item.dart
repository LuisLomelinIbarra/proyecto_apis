class MeditationItem{
  var title;
  var desc;
  var tipo;
  var resourceLoc;
  var passedMeditation;
  var heartrate_before;
  var heartrate_after;
  var img;
  MeditationItem({String? title, String? desc, String? resourceLoc, String? tipo, bool? passed, String? img}){
    this.title = title;
    this.desc = desc;
    this.resourceLoc =resourceLoc;
    this.tipo = tipo;
    this.passedMeditation = passed;
    this.img = img;
  }
}