import javascript

string httpVerb() { result = ["get", "put", "post", "delete"] }

/** A RAML specification. */
class RamlSpec extends YAMLDocument, YAMLMapping {
  RamlSpec() { getLocation().getFile().getExtension() = "raml" }
}

/** A RAML resource specification. */
class RamlResource extends YAMLMapping {
  RamlResource() {
    getDocument() instanceof RamlSpec and
    exists(YAMLMapping m, string name |
      this = m.lookup(name) and
      name.matches("/%")
    )
  }

  /** Get the path of this resource relative to the API root. */
  string getPath() {
    exists(RamlSpec spec | this = spec.lookup(result))
    or
    exists(RamlResource that, string p |
      this = that.lookup(p) and
      result = that.getPath() + p
    )
  }

  /** Get the method for this resource with the given verb. */
  RamlMethod getMethod(string verb) {
    verb = httpVerb() and
    result = lookup(verb)
  }
}

class RamlMethod extends YAMLValue {
  RamlMethod() {
    getDocument() instanceof RamlSpec and
    exists(YAMLMapping obj | this = obj.lookup(httpVerb()))
  }
}

select 1
