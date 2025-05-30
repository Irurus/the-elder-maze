get_filename_component(VCPKG_IMPORT_PREFIX "${CMAKE_CURRENT_LIST_DIR}/../../" ABSOLUTE)
# Generated by CMake

if("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.8)
   message(FATAL_ERROR "CMake >= 2.8.12 required")
endif()
if(CMAKE_VERSION VERSION_LESS "2.8.12")
   message(FATAL_ERROR "CMake >= 2.8.12 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 2.8.12...3.30)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Protect against multiple inclusion, which would fail when already imported targets are added once more.
set(_cmake_targets_defined "")
set(_cmake_targets_not_defined "")
set(_cmake_expected_targets "")
foreach(_cmake_expected_target IN ITEMS libtcod::libtcod)
  list(APPEND _cmake_expected_targets "${_cmake_expected_target}")
  if(TARGET "${_cmake_expected_target}")
    list(APPEND _cmake_targets_defined "${_cmake_expected_target}")
  else()
    list(APPEND _cmake_targets_not_defined "${_cmake_expected_target}")
  endif()
endforeach()
unset(_cmake_expected_target)
if(_cmake_targets_defined STREQUAL _cmake_expected_targets)
  unset(_cmake_targets_defined)
  unset(_cmake_targets_not_defined)
  unset(_cmake_expected_targets)
  unset(CMAKE_IMPORT_FILE_VERSION)
  cmake_policy(POP)
  return()
endif()
if(NOT _cmake_targets_defined STREQUAL "")
  string(REPLACE ";" ", " _cmake_targets_defined_text "${_cmake_targets_defined}")
  string(REPLACE ";" ", " _cmake_targets_not_defined_text "${_cmake_targets_not_defined}")
  message(FATAL_ERROR "Some (but not all) targets in this export set were already defined.\nTargets Defined: ${_cmake_targets_defined_text}\nTargets not yet defined: ${_cmake_targets_not_defined_text}\n")
endif()
unset(_cmake_targets_defined)
unset(_cmake_targets_not_defined)
unset(_cmake_expected_targets)


# Compute the installation prefix relative to this file.
get_filename_component(_IMPORT_PREFIX "${CMAKE_CURRENT_LIST_FILE}" PATH)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
if(_IMPORT_PREFIX STREQUAL "/")
  set(_IMPORT_PREFIX "")
endif()

# Create imported target libtcod::libtcod
add_library(libtcod::libtcod SHARED IMPORTED)

set_target_properties(libtcod::libtcod PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "TCOD_NO_THREADS"
  INTERFACE_COMPILE_FEATURES "c_std_99;cxx_std_17"
  INTERFACE_LINK_LIBRARIES "SDL3::SDL3-shared"
)

if(NOT CMAKE_VERSION VERSION_LESS "3.23.0")
  target_sources(libtcod::libtcod
    INTERFACE
      FILE_SET "libtcod_header_set"
      TYPE "HEADERS"
      BASE_DIRS "${VCPKG_IMPORT_PREFIX}/include"
      FILES "${VCPKG_IMPORT_PREFIX}/include/libtcod.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/bresenham.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/bresenham.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/bsp.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/bsp.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/color.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/color.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/config.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/console.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/console.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/console_drawing.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/console_etc.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/console_init.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/console_printing.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/console_printing.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/console_rexpaint.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/console_rexpaint.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/console_types.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/console_types.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/context.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/context.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/context_init.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/context_viewport.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/error.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/error.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/fov.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/fov.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/fov_types.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/globals.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/heapq.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/heightmap.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/heightmap.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/image.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/image.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/lex.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/lex.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/libtcod.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/libtcod.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/libtcod_int.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/list.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/list.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/logging.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/matrix.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/mersenne.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/mersenne.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/mersenne_types.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/mouse.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/mouse.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/mouse_types.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/namegen.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/namegen.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/noise.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/noise.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/noise_defaults.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/parser.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/parser.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/path.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/path.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/pathfinder.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/pathfinder_frontier.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/portability.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/random.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/renderer_sdl2.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/renderer_xterm.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/sys.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/sys.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/tileset.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/tileset.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/tileset_bdf.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/tileset_bdf.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/tileset_fallback.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/tileset_fallback.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/tileset_render.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/tileset_truetype.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/timer.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/timer.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/tree.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/tree.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/txtfield.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/txtfield.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/utility.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/version.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/wrappers.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/zip.h" "${VCPKG_IMPORT_PREFIX}/include/libtcod/zip.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/gui/button.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/gui/container.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/gui/flatlist.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/gui/gui.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/gui/hbox.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/gui/image.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/gui/label.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/gui/radiobutton.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/gui/slider.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/gui/statusbar.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/gui/textbox.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/gui/togglebutton.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/gui/toolbar.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/gui/vbox.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/gui/widget.hpp" "${VCPKG_IMPORT_PREFIX}/include/libtcod/sdl2/event.h"
  )
else()
  set_property(TARGET libtcod::libtcod
    APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
      "${VCPKG_IMPORT_PREFIX}/include"
  )
endif()

# Load information for each installed configuration.
file(GLOB _cmake_config_files "${CMAKE_CURRENT_LIST_DIR}/libtcodTargets-*.cmake")
foreach(_cmake_config_file IN LISTS _cmake_config_files)
  include("${_cmake_config_file}")
endforeach()
unset(_cmake_config_file)
unset(_cmake_config_files)

# Cleanup temporary variables.
set(_IMPORT_PREFIX)

# Loop over all imported files and verify that they actually exist
foreach(_cmake_target IN LISTS _cmake_import_check_targets)
  if(CMAKE_VERSION VERSION_LESS "3.28"
      OR NOT DEFINED _cmake_import_check_xcframework_for_${_cmake_target}
      OR NOT IS_DIRECTORY "${_cmake_import_check_xcframework_for_${_cmake_target}}")
    foreach(_cmake_file IN LISTS "_cmake_import_check_files_for_${_cmake_target}")
      if(NOT EXISTS "${_cmake_file}")
        message(FATAL_ERROR "The imported target \"${_cmake_target}\" references the file
   \"${_cmake_file}\"
but this file does not exist.  Possible reasons include:
* The file was deleted, renamed, or moved to another location.
* An install or uninstall procedure did not complete successfully.
* The installation package was faulty and contained
   \"${CMAKE_CURRENT_LIST_FILE}\"
but not all the files it references.
")
      endif()
    endforeach()
  endif()
  unset(_cmake_file)
  unset("_cmake_import_check_files_for_${_cmake_target}")
endforeach()
unset(_cmake_target)
unset(_cmake_import_check_targets)

# This file does not depend on other imported targets which have
# been exported from the same project but in a separate export set.

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)
