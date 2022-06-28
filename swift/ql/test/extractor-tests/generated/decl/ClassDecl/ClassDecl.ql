// generated by codegen/codegen.py
import codeql.swift.elements
import TestUtils

from ClassDecl x, string isUnknown, Type getInterfaceType, string getName, Type getType
where
  toBeTested(x) and
  not x.isUnknown() and
  (if x.isUnknown() then isUnknown = "yes" else isUnknown = "no") and
  getInterfaceType = x.getInterfaceType() and
  getName = x.getName() and
  getType = x.getType()
select x, "isUnknown:", isUnknown, "getInterfaceType:", getInterfaceType, "getName:", getName,
  "getType:", getType
