module uim.components.complex.blogs.blog;

import uim.components;

class DUIMBlog : DUIMComponent {
	mixin(H5This!("uim-blog"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj = H5Div(["uim-blog"], "<slot />");
		return super.toVUEComponent		
		.name("uim-blog");
	}
}
mixin(UIMShort!"Blog");
unittest {
	assert(Assert(UIMBlog, `<uim-blog></uim-blog>`));
}