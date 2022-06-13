// generated by codegen/codegen.py
import codeql.swift.elements
import TestUtils

from ConcreteFuncDecl x, string isUnknown, Type getInterfaceType, string getName
where
  toBeTested(x) and
  (if x.isUnknown() then isUnknown = "yes" else isUnknown = "no") and
  getInterfaceType = x.getInterfaceType() and
  getName = x.getName()
select x, "isUnknown:", isUnknown, "getInterfaceType:", getInterfaceType, "getName:", getName
