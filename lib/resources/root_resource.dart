part of resources;


class RootResource extends RestResource {
  static const String _RESOURCE_PATH_REGEX = r'^/?$';
  
  RootResource(): super(_RESOURCE_PATH_REGEX) {
    SetMethodHandler("GET", this._GetMethod);
  }
  
  Future _GetMethod(ContentType type, String path, Map<String, String> args) {
    return new Future.sync(() {
      return "words";
    });
  }
}