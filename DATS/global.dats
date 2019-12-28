implement totype_int<> = nameof_int
implement totype_bool<> = nameof_bool
implement totype_char<> = nameof_char
implement totype_double<> = nameof_double
implement totype_string<> = nameof_string
implement totype_uint<> = nameof_uint

macdef base(x) = @{name=nameof(,(x)), args=argsof(,(x))}
macdef tags(x) = @{name=nameof_tag(,(x)), args=argsof_tag(,(x))}
