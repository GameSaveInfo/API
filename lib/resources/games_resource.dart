part of resources;

class GamesResource extends RestResource {
  static const String _RESOURCE_PATH_REGEX = r'^/games/?$';
  
  GamesResource(): super(_RESOURCE_PATH_REGEX) {
    SetMethodHandler("GET", this._GetMethod);
  }
  
  Future _GetMethod(ContentType type, String path, Map<String, String> args) {
    return new Future.sync(() {
      return "game words";
    });
  }
}