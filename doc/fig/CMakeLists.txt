#
#
# Copyright (c) 1991-2019 by P. Wessel, W. H. F. Smith, R. Scharroo, J. Luis, and F. Wobbe
# See LICENSE.TXT file for copying and redistribution conditions.
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published by
# the Free Software Foundation; version 3 or any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.
#
# Contact info: gmt.soest.hawaii.edu
#-------------------------------------------------------------------------------

# Figure files
set (_fig_fig GMT4_mode.png GMT5_Summit_2016.jpg GMT5_mode.png GMT5_external.png
	GMT_Environment.png GMT_record.png gimp-sliders+panel.png hsv-cone.png
	formatpicture.png rendering.png)

# Copy figures without converting
FILE(MAKE_DIRECTORY ${RST_BINARY_DIR}/_images)
set (_fig_fig_out)
foreach (_fig ${_fig_fig})
	add_custom_command (OUTPUT ${RST_BINARY_DIR}/_images/${_fig}
		COMMAND ${CMAKE_COMMAND} -E copy_if_different
		${CMAKE_CURRENT_SOURCE_DIR}/${_fig} ${RST_BINARY_DIR}/_images/${_fig}
		DEPENDS ${_fig})
	list (APPEND _fig_fig_out ${RST_BINARY_DIR}/_images/${_fig})
endforeach (_fig ${_fig_fig})

# Add build target
add_custom_target (_docs_copy_fig DEPENDS ${_fig_fig_out})
add_depend_to_target (docs_html_depends _docs_copy_fig)
add_depend_to_target (docs_pdf_depends _docs_copy_fig)
add_depend_to_target (docs_man_depends _docs_copy_fig)

# vim: textwidth=78 noexpandtab tabstop=2 softtabstop=2 shiftwidth=2
