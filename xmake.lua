-- project
set_project("Greeter")

-- set xmake minimum version
set_xmakever("2.3.2")

-- set project version
set_version("1.0.1", {build = "%Y%m%d%H%M"})

-- set warning all as error
set_warnings("all", "error")

-- set language: c++11
set_languages("c++11")

-- add build modes
add_rules("mode.release", "mode.debug", "mode.profile", "mode.coverage")

-- define target: greeter
target("greeter")
    set_kind("static")
    add_files("source/*.cpp")
    add_headerfiles("include/(*.h)")
    add_includedirs("include", {public = true})

-- include sub-projects 
includes("standalone", "test")
