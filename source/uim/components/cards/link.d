﻿module uim.components.cards.link;

import uim.components;

class DUIMCardLink : DUIMComponent {
	mixin(H5This!("uim-card-link"));

	auto toVue() {
		return super.toVue
		.name("UimCardLink")
    	.computed("classes()", `return [""]`)
    	.template_(BS4CardLink([":class":"this.classes"], "<slot />"));
	}
}
mixin(UIMShort!"CardLink");

unittest {
	assert(UIMCardLink == `<uim-card-link></uim-card-link>`);
}