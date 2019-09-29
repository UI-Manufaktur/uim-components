﻿module uim.components.navs.link;

import uim.components;

class DUIMNavLink : DUIMComponent {
	mixin(H5This!("uim-nav-link"));

	O active(this O)(bool value = true) { return this.classes("active"); }
	O disabled(this O)(bool value = true) { return this.classes("disabled"); }
	O dropdownToggle(this O)(bool mode = true) { classes("dropdown-toggle"); 
		return attributes(["data-toggle":"dropdown", "role":"button", "aria-haspopup":"true", "aria-expanded":"false"]); }
}
mixin(UIMShort!"NavLink");

unittest {
	// assert(UIMNavLink == `<uim-nav-link></uim-nav-link>`);
}