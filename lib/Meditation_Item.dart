class MeditationItem{
  var title;
  var desc;
  var tipo;
  var resourceLoc;
  var passedMeditation;
  var heartrate_before;
  var heartrate_after;
  MeditationItem({String? title, String? desc, String? resourceLoc, int? tipo, bool? passed}){
    this.title = title;
    this.desc = desc;
    this.resourceLoc =resourceLoc;
    this.tipo = tipo;
    this.passedMeditation = passed;
  }
}