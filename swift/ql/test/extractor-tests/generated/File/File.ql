// generated by codegen/codegen.py
import codeql.swift.elements
import TestUtils

from File x, string isUnknown, string getName
where
  toBeTested(x) and
  not x.isUnknown() and
  (if x.isUnknown() then isUnknown = "yes" else isUnknown = "no") and
  getName = x.getName()
select x, "isUnknown:", isUnknown, "getName:", getName
