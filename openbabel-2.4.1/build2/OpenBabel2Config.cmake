# The OpenBabel2 config file. To get the targets include the exports file.
get_filename_component(OpenBabel2_INSTALL_PREFIX "${OpenBabel2_DIR}"
  ABSOLUTE)

set(OpenBabel2_VERSION_MAJOR   "2")
set(OpenBabel2_VERSION_MINOR   "4")
set(OpenBabel2_VERSION_PATCH   "1")
set(OpenBabel2_VERSION         "2.4.1")

set(OpenBabel2_INCLUDE_DIRS "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include;/export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/include")
set(OpenBabel2_EXPORTS_FILE "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/OpenBabel2_EXPORTS.cmake")
set(OpenBabel2_ENABLE_VERSIONED_FORMATS "ON")

# Include the exports file to import the exported OpenBabel targets
include("${OpenBabel2_EXPORTS_FILE}")
