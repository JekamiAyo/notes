
class Url{

Uri retrieveUrl = Uri.parse("http://127.0.0.1:8000/notes/");

Uri deleteUrl(int id){
  return Uri.parse("http://127.0.0.1:8000/notes/$id/delete/");
}
Uri createUrl = Uri.parse("http://127.0.0.1:8000/notes/create/");

Uri updateUrl(int id) => Uri.parse("http://127.0.0.1:8000/notes/$id/update/");

}
