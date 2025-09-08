# Build the GTKmm book examples using CMake

## Dependencies

- vcpkg
- c/c++ compiler

## build(VS 2022)

```[]
# Debug build
cmake -B build/ -DCMAKE_TOOLCHAIN_FILE:PATH=C:/DevTools/vcpkg/scripts/buildsystems/vcpkg.cmake -DCMAKE_BUILD_TYPE=Debug -G "Visual Studio 17 2022" -A x64
cmake --build build/ --config Debug

# Release build
cmake -B build/ -DCMAKE_TOOLCHAIN_FILE:PATH=C:/DevTools/vcpkg/scripts/buildsystems/vcpkg.cmake -DCMAKE_BUILD_TYPE=Debug -G "Visual Studio 17 2022" -A x64
cmake --build build/ --config Debug
```

## built examples

- [x] entry
- [x] spinbutton
