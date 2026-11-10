#!/bin/bash
ROOT_DIR="$(pwd)"
SRC_DIR="$ROOT_DIR/src"
BUILD_DIR="$ROOT_DIR/build"
LIB_DIR="$ROOT_DIR/lib"

mkdir -p "$BUILD_DIR"

javac -cp ".:$LIB_DIR/junit-jupiter-5.13.2.jar:$LIB_DIR/junit-jupiter-api-5.13.2.jar:$LIB_DIR/junit-jupiter-engine-5.13.2.jar:$LIB_DIR/apiguardian-api-1.1.2.jar:$LIB_DIR/opentest4j-1.3.0.jar" -d "$BUILD_DIR" "$SRC_DIR"/*.java

java -cp "$BUILD_DIR:$LIB_DIR/junit-jupiter-5.13.2.jar:$LIB_DIR/junit-jupiter-api-5.13.2.jar:$LIB_DIR/junit-jupiter-engine-5.13.2.jar:$LIB_DIR/apiguardian-api-1.1.2.jar:$LIB_DIR/opentest4j-1.3.0.jar" Main