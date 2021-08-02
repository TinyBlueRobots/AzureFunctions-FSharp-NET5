#!/bin/bash
dotnet tool restore
dotnet paket install
rm -rf build
dotnet publish -o ./build
pushd build || exit
zip -r build.zip .
popd || exit