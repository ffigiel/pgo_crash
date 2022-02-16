There is a bug in `gleam_pgo` library. If you run `gleam run`, it will fail with the following
message. You don't need to have a database running to reproduce this error.

```
exception error: no function clause matching
                 gleam_pgo_ffi:convert_error(none_available) (build/dev/erlang/gleam_pgo/build/gleam_pgo_ffi.erl, line 66)
  in function  gleam_pgo_ffi:query/3 (build/dev/erlang/gleam_pgo/build/gleam_pgo_ffi.erl, line 63)
  in call from gleam@pgo:execute/4 (build/dev/erlang/gleam_pgo/build/gleam@pgo.erl, line 155)
  in call from pgo_crash:main/0 (build/dev/erlang/pgo_crash/build/pgo_crash.erl, line 15)
```
