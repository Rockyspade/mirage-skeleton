open Mirage

let unikernel = foreign "Unikernel.Make" (kv_ro @-> job)
let remote = "https://github.com/mirage/mirage"

let () =
  register "docteur_kv_ro"
    [ unikernel $ docteur ~branch:"refs/heads/main" remote ]
