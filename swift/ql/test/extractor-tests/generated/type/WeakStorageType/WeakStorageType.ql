// generated by codegen/codegen.py
import codeql.swift.elements
import TestUtils

from
  WeakStorageType x, string isUnknown, string getDiagnosticsName, Type getCanonicalType,
  Type getReferentType
where
  toBeTested(x) and
  not x.isUnknown() and
  (if x.isUnknown() then isUnknown = "yes" else isUnknown = "no") and
  getDiagnosticsName = x.getDiagnosticsName() and
  getCanonicalType = x.getCanonicalType() and
  getReferentType = x.getReferentType()
select x, "isUnknown:", isUnknown, "getDiagnosticsName:", getDiagnosticsName, "getCanonicalType:",
  getCanonicalType, "getReferentType:", getReferentType
