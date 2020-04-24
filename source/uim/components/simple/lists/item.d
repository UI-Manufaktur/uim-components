﻿module uim.components.lists.item;

import uim.components;

class DUIMListItem : DUIMComponent {
	mixin(H5This!("uim-list-item"));
	O color(this O)(string aColor) { this.classes("list-item-"~aColor); return cast(O)this; }

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4ListItem("<slot />");
		return super.toVUEComponent		
		.name("uim-list-item")
		;
	}
}
mixin(UIMShort!"ListItem");

unittest {
	assert(Assert(UIMListItem, `<uim-list-item></uim-list-item>`));
}