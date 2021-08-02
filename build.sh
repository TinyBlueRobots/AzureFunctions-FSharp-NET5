#!/bin/bash
dotnet tool restore
dotnet paket install
dotnet build