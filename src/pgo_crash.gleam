import gleam/pgo
import gleam/dynamic
import gleam/option
import gleam/io

pub fn main() {
  let db = pgo.connect(pgo.default_config())

  let sql = "select 1;"
  let return_type = fn(a: dynamic.Dynamic) -> Result(
    String,
    List(dynamic.DecodeError),
  ) {
    io.debug(a)
    Ok("")
  }

  assert Ok(_) = pgo.execute(sql, db, [], return_type)
}
