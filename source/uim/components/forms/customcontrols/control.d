﻿module uim.components.forms.customcontrols.control;

import uim.components;

class DUIMCustomControl : DUIMComponent {
	mixin(H5This!("uim-custom-control"));
}
mixin(UIMShort!"CustomControl");

unittest {
	// assert(UIMCustomControl == "<uim-custom-control></uim-custom-control>");	
}