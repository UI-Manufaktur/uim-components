module uim.components.alerts.alert;

import uim.components;

///Provide contextual feedback messages for typical user actions with the handful of available and flexible alert messages.
class DUIMAlert : DUIMComponent {
	mixin(H5This!("uim-alert"));

	O color(this O)(string name) { return this.classes("alert-"~name); };
	O link(this O)(string content, string url = "#") { this.content(`<a href="`~url~`" class="alert-link">`~content~`</a>`); return cast(O)this; }
	O dismissible(this O)(bool show = true, string icon = "&times;") { 
		if (show) {
			this.content(`<button type="button" class="close" data-dismiss="alert">`~icon~`</button>`);
			this.classes("alert-dismissible"); 
		}
		return cast(O)this; }

	mixin(MyContent!("heading", "UIMAlertHeading"));
}
mixin(UIMShort!("Alert"));

class DUIMAlertLink : DH5A {
	mixin(H5This!("AlertLink", `["alert-link"]`, `["href":"#"]`));
}
mixin(UIMShort!("AlertLink"));

//class DUIMAlert(T:string) : DUIMAlertObj {
//	mixin(H5This!("Alert", `["alert alert-`~T~`"]`, `["role":"alert"]`));
//}
//auto UIMAlert(T)(string id = null) { return new DUIMAlert!(T)(id); }
//auto UIMAlert(T)(string id, string content) { return new DUIMAlert!(T)(id, content); }
//auto UIMAlert(T)(string id, DH5Obj[] content...) { return new DUIMAlert!(T)(id, content); }
//
//auto UIMAlert(T)(string id, string[] classes) { return new DUIMAlert!(T)(id, classes); }
//auto UIMAlert(T)(string id, string[] classes, string content) { return new DUIMAlert!(T)(id, classes, content); }
//auto UIMAlert(T)(string id, string[] classes, DH5Obj[] content...) { return new DUIMAlert!(T)(id, classes, content); }
//
//auto UIMAlert(T)(string id, string[string] attributes) { return new DUIMAlert!(T)(id, attributes); }
//auto UIMAlert(T)(string id, string[string] attributes, string content) { return new DUIMAlert!(T)(id, attributes, content); }
//auto UIMAlert(T)(string id, string[string] attributes, DH5Obj[] content...) { return new DUIMAlert!(T)(id, attributes, content); }
//
//auto UIMAlert(T)(string id, string[] classes, string[string] attributes) { return new DUIMAlert!(T)(id, classes, attributes); }
//auto UIMAlert(T)(string id, string[] classes, string[string] attributes, string content) { return new DUIMAlert!(T)(id, classes, attributes, content); }
//auto UIMAlert(T)(string id, string[] classes, string[string] attributes, DH5Obj[] content...) { return new DUIMAlert!(T)(id, classes, attributes, content); }
//
//auto UIMAlert(T)(string[] classes) { return new DUIMAlert!(T)(classes); }
//auto UIMAlert(T)(string[] classes, string content) { return new DUIMAlert!(T)(classes, content); }
//auto UIMAlert(T)(string[] classes, DH5Obj[] content...) { return new DUIMAlert!(T)(classes, content); }
//
//auto UIMAlert(T)(string[string] attributes) { return new DUIMAlert!(T)(attributes); }
//auto UIMAlert(T)(string[string] attributes, string content) { return new DUIMAlert!(T)(attributes, content); }
//auto UIMAlert(T)(string[string] attributes, DH5Obj[] content...) { return new DUIMAlert!(T)(attributes, content); }
//
//auto UIMAlert(T)(string[] classes, string[string] attributes) { return new DUIMAlert!(T)(classes, attributes); }
//auto UIMAlert(T)(string[] classes, string[string] attributes, string content) { return new DUIMAlert!(T)(classes, attributes, content); }
//auto UIMAlert(T)(string[] classes, string[string] attributes, DH5Obj[] content...) { return new DUIMAlert!(T)(classes, attributes, content); }

unittest {
	assert(UIMAlert == `<uim-alert></uim-alert>`);
	assert(UIMAlert("anAlert") == `<div class="alert" role="alert">anAlert</div>`);

	assert(UIMAlert.color("success") == `<div class="alert alert-success" role="alert"></div>`);
	writeln(UIMAlert.color("success").dismissible);
	assert(UIMAlert.color("success").dismissible == `<div class="alert alert-dismissible alert-success" role="alert"><button type="button" class="close" data-dismiss="alert">&times;</button></div>`);
	//	assert(UIMAlert.tyeSuccess.content("success") == `<div class="alert alert-success" role="alert">success</div>`);
//
//	assert(UIMAlertInfo == `<div class="alert alert-info" role="alert"></div>`);
//	assert(UIMAlertInfo.content("info") == `<div class="alert alert-info" role="alert">info</div>`);
//
//	assert(UIMAlertWarning == `<div class="alert alert-warning" role="alert"></div>`);
//	assert(UIMAlertWarning.content("warning") == `<div class="alert alert-warning" role="alert">warning</div>`);
//
//	assert(UIMAlertDanger == `<div class="alert alert-danger" role="alert"></div>`);
//	assert(UIMAlertDanger.content("danger") == `<div class="alert alert-danger" role="alert">danger</div>`);
}