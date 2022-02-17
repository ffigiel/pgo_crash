import gleam/pgo
import gleam/dynamic
import gleam/option
import gleam/io

pub fn main() {
  let config = pgo.default_config()
  let db = pgo.connect(config)

  let sql = "select 1;"
  let return_type = fn(a: dynamic.Dynamic) -> Result(
    String,
    List(dynamic.DecodeError),
  ) {
    io.debug(a)
    Ok("")
  }

  pgo.execute(sql, db, [], return_type)
  |> io.debug
}
