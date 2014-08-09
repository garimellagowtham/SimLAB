# This is not for building the project. But just modifies the SETUP.in with the Directories names it finds using cmake
cmake_minimum_required(VERSION 2.8.3)
project(SimLAB)

#Find the packages required:
find_package(PkgConfig REQUIRED)

pkg_check_modules(BULLET REQUIRED bullet) #Bullet
message(" Bullet Include Directory: ${BULLER_INCLUDE_DIRS}")

set(BULLET_SRC ${CMAKE_CURRENT_SOURCE_DIR}/bullet-2.81-rev2613/src)
message(" Bullet Source Directory: ${BULLER_SRC}")

find_package( Boost 1.40 REQUIRED) # Boost Library
message(" Boost Include Directory: ${Boost_INCLUDE_DIR}")

find_package(Eigen REQUIRED)
message("Eigen Include Directory: ${EIGEN_INCLUDE_DIR}")

configure_file(SETUP.m.in SETUP.m)

#Writing to the setup file
