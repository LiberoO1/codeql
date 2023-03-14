var def_int = 42

struct Generic<T> {}

var def_instantiated_generic = Generic<Int>()

func def_function(_: Int) -> Int { return 42 }

func def_function_overloaded_on_return(_: Int, _: Double) -> Int { return 0 }
func def_function_overloaded_on_return(_: Int, _: Double) -> Double { return 0.0 }

func def_function_overloaded_on_parameter_type(_: Int) {}
func def_function_overloaded_on_parameter_type(_: Double) {}

func def_function_overloaded_on_parameter_label(one x: Int) {}
func def_function_overloaded_on_parameter_label(two x: Int) {}

func def_throwing_function(_: Int) throws {}
func def_rethrowing_function(_: () throws -> ()) rethrows {}
func def_async_function(_: Int) async {}
func def_async_throwing_function(_: Int) async throws {}
func def_async_rethrowing_function(_: () throws -> ()) async rethrows {}

func def_generic_function<A, B>(_: A, _: B) {}
