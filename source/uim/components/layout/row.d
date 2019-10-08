﻿module uim.components.layout.row;

import uim.components;

class DUIMRow : DUIMComponent {
	mixin(H5This!("uim-row"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4Row("<slot />");
		return super.toVUEComponent		
		.name("UimRow");
	}
}
mixin(UIMShort!"Row");

unittest {
	assert(Assert(UIMRow, `<uim-row></uim-row>`));
}