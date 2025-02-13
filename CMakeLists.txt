cmake_minimum_required(VERSION 3.16)
project(MyQmlProject VERSION 1.0 LANGUAGES CXX)

# Enable C++11 standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_AUTORCC ON)

# Project name and version

# Find the Qt6 package
find_package(Qt6 REQUIRED COMPONENTS Widgets Concurrent Core Quick)

# Set QRC files
set(PROJECT_QRC_FILES
    resources/qrc/qml.qrc
    resources/qrc/components/common.qrc
    # resources/qrc/components/control.qrc
    # resources/qrc/components/header.qrc
    resources/qrc/images.qrc
    # resources/qrc/styles.qrc
)

# Add the executable
add_executable(MyQmlProject 
                main.cpp 
                resources/qml/main.qml
                ${PROJECT_QRC_FILES}
)

# Link the Qt6 libraries
target_link_libraries(MyQmlProject 
                        Qt6::Widgets
                        Qt6::Concurrent
                        Qt6::Core 
                        Qt6::Quick
)
