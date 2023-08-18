cmake_minimum_required(VERSION 3.22.1)
project(
    physics_simulator_proj VERSION 0.1.0
    )

add_executable(${PROJECT_NAME} 
    src/main.cpp
    src/program_control.cpp
    src/animations.cpp
    src/params.cpp
    )

# Set the output directory for the executable
set_target_properties(${PROJECT_NAME} PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/bin
    )

# Add the include directories
target_include_directories(${PROJECT_NAME} PRIVATE include) # target_link_directories() is used to specify the directories where the linker should search for libraries.

#target_link_directories(${PROJECT_NAME} PRIVATE lib) # target_include_directories() is used to specify the directories where the compiler should search for header files, 
# find_package(Boost REQUIRED COMPONENTS filesystem)   #  to find external libs  
# Add the include libraries:
target_link_libraries(${PROJECT_NAME} 
    SDL2
    SDL2_image
    SDL2_ttf
    )

add_compile_options(-fdiagnostics-color=auto)

#include(CTest)
#enable_testing()
#set(CPACK_PROJECT_NAME ${PROJECT_NAME})
#set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
#include(CPack)


# target_include_directories() is used to specify the directories where the compiler should search for header files, 
