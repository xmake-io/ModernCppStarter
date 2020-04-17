add_requires("doctest")
target("test")
    set_default(false)
    set_kind("binary")
    add_deps("greeter")
    add_files("source/*.cpp")
    add_packages("doctest")
    if is_mode("release", "profile") then
        set_optimize("smallest")
    end
