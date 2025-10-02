# Build the GTKmm book examples using CMake

## Dependencies

- vcpkg
- c/c++ compiler

## build(VS 2022)

```[]
# Debug build(Windows)
cmake -B build/ -DCMAKE_TOOLCHAIN_FILE:PATH=C:/DevTools/vcpkg/scripts/buildsystems/vcpkg.cmake -DCMAKE_BUILD_TYPE=Debug -G "Visual Studio 17 2022" -A x64

# # Debug build(Linux)
cmake -B build/ -DCMAKE_TOOLCHAIN_FILE:PATH=${VCPKG_ROOT}/scripts/buildsystems/vcpkg.cmake -DCMAKE_BUILD_TYPE=Debug

cmake --build build/ --config Debug

# Release build
cmake -B build/ -DCMAKE_TOOLCHAIN_FILE:PATH=C:/DevTools/vcpkg/scripts/buildsystems/vcpkg.cmake -DCMAKE_BUILD_TYPE=Release -G "Visual Studio 17 2022" -A x64
cmake --build build/ --config Release
```

## built examples

- [x] aspectframe
- [x] entry
  - [x] simple
  - [x] icon
  - [x] completion
  - [x] progress
- [x] spinbutton
- [x] scrolledwindow
- [x] menus
- [x] menus_and_toolbars
- [x] toolbar
- [x] gl_area
- [x] build_app(not working)