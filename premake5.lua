project "assimp"
    location "assimp"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "On"

    targetdir ("bin/%{prj.name}")
    objdir ("bin-obj/%{prj.name}")

    files
    {
        "assimp/include/assimp/**.h",
        "assimp/include/assimp/**.hpp",
        "assimp/include/assimp/config.h",
        "assimp/code/**.cpp",
        "assimp/code/**.h",
        "assimp/contrib/clipper/**.cpp",
        "assimp/contrib/clipper/**.h",
        "assimp/contrib/ConvertUTF/**.cpp",
        "assimp/contrib/ConvertUTF/**.h",
        "assimp/contrib/irrXML/**.cpp",
        "assimp/contrib/irrXML/**.h",
        "assimp/contrib/openddlparser/**.cpp",
        "assimp/contrib/openddlparser/**.h",
        "assimp/contrib/poly2tri/**.cc",
        "assimp/contrib/poly2tri/**.h",
        "assimp/contrib/zip/src/**.c",
        "assimp/contrib/zip/src/**.h",
    }

    includedirs
    {
        "assimp/include",
        "assimp/code",
        "assimp/contrib",
        "assimp/contrib/irrXML",
        "assimp/contrib/openddlparser/include",
        "assimp/contrib/unzip",
        "assimp/contrib/clipper",
        "assimp/contrib/poly2tri",
        "assimp/contrib/ConvertUTF",
        "assimp/contrib/zlib",
        "assimp/contrib/zip/src",
        "assimp/contrib/rapidjson/include"
    }

    filter "system:windows"
        systemversion "latest"

        defines
        {
            "_CRT_SECURE_NO_WARNINGS"
        }

    filter "configurations:Debug"
        defines "DEBUG"
        runtime "Debug"
        symbols "On"

    filter "configurations:Release"
        defines "RELEASE"
        runtime "Release"
        optimize "On"

    filter "configurations:Dist"
        defines "DIST"
        runtime "Release"
        optimize "On"