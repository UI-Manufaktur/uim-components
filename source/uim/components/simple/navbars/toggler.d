﻿module uim.components.navbars.toggler;

import uim.components;

/* DUIMNavbarToggler - for use with collapse plugin and other navigation toggling behaviors */
class DUIMNavbarToggler : DUIMComponent {
	mixin(H5This!("uim-navbar-toggler"));

	O position(this O)(string value) { return this.classes("navbar-toggler-"~position); }
	O target(this O)(string targetId) { return attributes(["data-target":"#"~targetId]); }

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4NavbarToggler("<slot />");
		return super.toVUEComponent		
		.name("uim-navbar-toggler")
		;
	}
}
mixin(UIMShort!"NavbarToggler");

unittest {
	assert(Assert(UIMNavbarToggler, `<uim-navbar-toggler></uim-navbar-toggler>`));
}