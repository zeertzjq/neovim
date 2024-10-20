ExternalProject_Add(treesitter
  URL ${TREESITTER_URL}
  URL_HASH SHA256=${TREESITTER_SHA256}
  DOWNLOAD_DIR ${DEPS_DOWNLOAD_DIR}/treesitter
  INSTALL_DIR ${DEPS_INSTALL_DIR}
  PATCH_COMMAND ${CMAKE_COMMAND} -E copy
    ${CMAKE_CURRENT_SOURCE_DIR}/cmake/TreesitterCMakeLists.txt
    ${DEPS_BUILD_DIR}/src/treesitter/CMakeLists.txt
  CMAKE_ARGS ${DEPS_CMAKE_ARGS}
  CMAKE_CACHE_ARGS ${DEPS_CMAKE_CACHE_ARGS}
  ${EXTERNALPROJECT_OPTIONS})
