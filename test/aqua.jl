using Aqua
@testset "Aqua.jl" begin
    Aqua.test_all(
      WinchControllers;
      stale_deps=(ignore=[:PyCall, :REPL, :Timers],), # CodecXz is used during precompilation only
      deps_compat=(ignore=[:PyCall],),                # PyCall is needed for CI to recompile Python
    )
end
