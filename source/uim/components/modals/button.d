﻿module uim.components.modals.button;

import uim.components;

class DUIMModalButton : DUIMComponent {
	mixin(H5This!("BUTTON", `["btn"]`, `["data-toggle":"modal"]`));
	override public void init() {
		super.init;
	}
	O target(this O)(string targetId) { _attributes["data-target"] = "#"~targetId;  return cast(O)this; }
	O backdrop(this O)(bool modeBackdrop = true) { _attributes["data-backdrop"] = "static"; return cast(O)this; }
	O keyboard(this O)(bool mode = true) { if (mode == false) _attributes["data-keyboard"] = "false"; 
		return cast(O)this;
	}
}
mixin(UIMShort!"ModalButton");
