module uim.components.demos.demos.layouts.gutters;

import uim.components;

static this() {
	demoUIMComps.pages("basic/layouts/gutters", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Gutters - uim-components Demo",
          "script":
          `const vue = Vue.createApp({});`~
          UIMButton.toVue3("vue")~";"~
          /* UIMButtonLink.toVue3("vue")~";"~ */
          `vue.mount('#app');`]);
		} 
			
override string content() { 
      return 
H5Main("app", ["style":"margin-top:70px;"],
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/uim-components/demos", "/demos/uim-components/contents"], 
    ["UI Manufaktur", "Demos", "uim-components" , "Contents"], "Gutters")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Gutters"),
      H5Hr,

      demoUIMExample("horizontal", "Horizontal",
        H5Div(
          BS5Container(
            BS5Row(["gx-0"], 
              H5Div(["col-3"], 
                H5Div(["p-3 border bg-light"], "Column")),
              H5Div(["col-3"], 
                H5Div(["p-3 border bg-light"], "Column")),
              H5Div(["col-3"], 
                H5Div(["p-3 border bg-light"], "Column")),
              H5Div(["col-3"], 
                H5Div(["p-3 border bg-light"], "Column")))),
          H5H4(["h5", "text-muted", "mt-3", "container"], "1"),
          BS5Container(  
            BS5Row(["gx-1"],
              H5Div(["col-3"], 
                H5Div(["p-3 border bg-light"], "Column")),
              H5Div(["col-3"], 
                H5Div(["p-3 border bg-light"], "Column")),
              H5Div(["col-3"], 
                H5Div(["p-3 border bg-light"], "Column")),
              H5Div(["col-3"], 
                H5Div(["p-3 border bg-light"], "Column")))),
          H5H4(["h5", "text-muted", "mt-3", "container"], "2"),
          BS5Container(  
            BS5Row(["gx-2"], 
              H5Div(["col-3"], 
                H5Div(["p-3 border bg-light"], "Column")),
              H5Div(["col-3"], 
                H5Div(["p-3 border bg-light"], "Column")),
              H5Div(["col-3"], 
                H5Div(["p-3 border bg-light"], "Column")),
              H5Div(["col-3"], 
                H5Div(["p-3 border bg-light"], "Column")))),
          H5H4(["h5", "text-muted", "mt-3", "container"], "3"),
          BS5Container(  
            BS5Row(["gx-3"], 
              H5Div(["col-3"], 
                H5Div(["p-3 border bg-light"], "Column")),
              H5Div(["col-3"], 
                H5Div(["p-3 border bg-light"], "Column")),
              H5Div(["col-3"], 
                H5Div(["p-3 border bg-light"], "Column")),
              H5Div(["col-3"], 
                H5Div(["p-3 border bg-light"], "Column")))),
          H5H4(["h5", "text-muted", "mt-3", "container"], "4"),
          BS5Container(  
            BS5Row(["gx-4"], 
              H5Div(["col-3"], 
                H5Div(["p-3 border bg-light"], "Column")),
              H5Div(["col-3"], 
                H5Div(["p-3 border bg-light"], "Column")),
              H5Div(["col-3"], 
                H5Div(["p-3 border bg-light"], "Column")),
              H5Div(["col-3"], 
                H5Div(["p-3 border bg-light"], "Column")))),
          H5H4(["h5", "text-muted", "mt-3", "container"], "5"),
          BS5Container(  
            BS5Row(["gx-5"],
              H5Div(["col-3"], 
                H5Div(["p-3 border bg-light"], "Column")),
              H5Div(["col-3"], 
                H5Div(["p-3 border bg-light"], "Column")),
              H5Div(["col-3"], 
                H5Div(["p-3 border bg-light"], "Column")),
              H5Div(["col-3"], 
                H5Div(["p-3 border bg-light"], "Column"))))
        ), ``, ``),

      demoUIMExample("responsive", "Responsive",
        H5Div(
          BS5Container(  
            BS5Row(["gx-0", "gx-sm-1", "gx-md-2", "gx-lg-3", "gx-xl-4", "gx-xxl-5"],
              H5Div(["col-3"], 
                H5Div(["p-3 border bg-light"], "Column")),
              H5Div(["col-3"], 
                H5Div(["p-3 border bg-light"], "Column")),
              H5Div(["col-3"], 
                H5Div(["p-3 border bg-light"], "Column")),
              H5Div(["col-3"], 
                H5Div(["p-3 border bg-light"], "Column"))))
        ), ``, ``),

        demoUIMExample("vertical", "Vertical",
          H5Div(
            H5H4(["h5", "text-muted", "mt-3", "container"], "0"),
            BS5Container(
              BS5Row(["gy-0"], 
                H5Div(["col-12"], 
                  H5Div(["p-3 border bg-light"], "Column")),
                H5Div(["col-12"], 
                  H5Div(["p-3 border bg-light"], "Column")),
                H5Div(["col-12"], 
                  H5Div(["p-3 border bg-light"], "Column")),
                H5Div(["col-12"], 
                  H5Div(["p-3 border bg-light"], "Column")))),
              H5H4(["h5", "text-muted", "mt-3", "container"], "1"),
              BS5Container(
                BS5Row(["gy-1"], 
                  H5Div(["col-12"], 
                    H5Div(["p-3 border bg-light"], "Column")),
                  H5Div(["col-12"], 
                    H5Div(["p-3 border bg-light"], "Column")),
                  H5Div(["col-12"], 
                    H5Div(["p-3 border bg-light"], "Column")),
                  H5Div(["col-12"], 
                    H5Div(["p-3 border bg-light"], "Column")))),
              H5H4(["h5", "text-muted", "mt-3", "container"], "2"),
              BS5Container(
                BS5Row(["gy-2"], 
                  H5Div(["col-12"], 
                    H5Div(["p-3 border bg-light"], "Column")),
                  H5Div(["col-12"], 
                    H5Div(["p-3 border bg-light"], "Column")),
                  H5Div(["col-12"], 
                    H5Div(["p-3 border bg-light"], "Column")),
                  H5Div(["col-12"], 
                    H5Div(["p-3 border bg-light"], "Column")))),
              H5H4(["h5", "text-muted", "mt-3", "container"], "3"),
              BS5Container(
                BS5Row(["gy-3"], 
                  H5Div(["col-12"], 
                    H5Div(["p-3 border bg-light"], "Column")),
                  H5Div(["col-12"], 
                    H5Div(["p-3 border bg-light"], "Column")),
                  H5Div(["col-12"], 
                    H5Div(["p-3 border bg-light"], "Column")),
                  H5Div(["col-12"], 
                    H5Div(["p-3 border bg-light"], "Column")))),
              H5H4(["h5", "text-muted", "mt-3", "container"], "4"),
              BS5Container(
                BS5Row(["gy-4"], 
                  H5Div(["col-12"],
                    H5Div(["p-3 border bg-light"], "Column")),
                  H5Div(["col-12"],
                    H5Div(["p-3 border bg-light"], "Column")),
                  H5Div(["col-12"],
                    H5Div(["p-3 border bg-light"], "Column")),
                  H5Div(["col-12"],
                    H5Div(["p-3 border bg-light"], "Column")))),
              H5H4(["h5", "text-muted", "mt-3", "container"], "5"),
              BS5Container(
                BS5Row(["gy-5"],
                  H5Div(["col-12"],
                    H5Div(["p-3 border bg-light"], "Column")),
                  H5Div(["col-12"],
                    H5Div(["p-3 border bg-light"], "Column")),
                  H5Div(["col-12"],
                    H5Div(["p-3 border bg-light"], "Column")),
                  H5Div(["col-12"],
                    H5Div(["p-3 border bg-light"], "Column")))),
              H5H4(["h5", "text-muted", "mt-3", "container"], "Responsive"),
              BS5Container(  
                BS5Row(["gy-0", "gy-sm-1", "gy-md-2", "gy-lg-3", "gy-xl-4", "gy-xxl-5"], 
                  H5Div(["col-12"],
                    H5Div(["p-3 border bg-light"], "Column")),
                  H5Div(["col-12"],
                    H5Div(["p-3 border bg-light"], "Column")),
                  H5Div(["col-12"],
                    H5Div(["p-3 border bg-light"], "Column")),
                  H5Div(["col-12"],
                    H5Div(["p-3 border bg-light"], "Column")))),
          ), ``, ``),

        demoUIMExample("responsive", "Responsive",
          H5Div(
            H5H3(["component-variation", "text-muted container"], "Horizontal and vertical"),
            H5Div(
              H5H4(["h5", "text-muted", "mt-3", "container"], "0"),
              BS5Container(
                BS5Row(["g-0"],
                  H5Div(["col-6"],
                    H5Div(["p-3 border bg-light"], "Column")),
                  H5Div(["col-6"],
                    H5Div(["p-3 border bg-light"], "Column")),
                  H5Div(["col-6"],
                    H5Div(["p-3 border bg-light"], "Column")),
                  H5Div(["col-6"],
                    H5Div(["p-3 border bg-light"], "Column")))),
              H5H4(["h5", "text-muted", "mt-3", "container"], "1"),
              BS5Container(
                BS5Row(["g-1"],
                  H5Div(["col-6"],
                    H5Div(["p-3 border bg-light"], "Column")),
                  H5Div(["col-6"],
                    H5Div(["p-3 border bg-light"], "Column")),
                  H5Div(["col-6"],
                    H5Div(["p-3 border bg-light"], "Column")),
                  H5Div(["col-6"],
                    H5Div(["p-3 border bg-light"], "Column")))),
              H5H4(["h5", "text-muted", "mt-3", "container"], "2"),
              BS5Container(
                BS5Row(["g-2"],
                  H5Div(["col-6"],
                    H5Div(["p-3 border bg-light"], "Column")),
                  H5Div(["col-6"],
                    H5Div(["p-3 border bg-light"], "Column")),
                  H5Div(["col-6"],
                    H5Div(["p-3 border bg-light"], "Column")),
                  H5Div(["col-6"],
                    H5Div(["p-3 border bg-light"], "Column")))),
              H5H4(["h5", "text-muted", "mt-3", "container"], "3"),
              BS5Container(
                BS5Row(["g-3"],
                  H5Div(["col-6"],
                    H5Div(["p-3 border bg-light"], "Column")),
                  H5Div(["col-6"],
                    H5Div(["p-3 border bg-light"], "Column")),
                  H5Div(["col-6"],
                    H5Div(["p-3 border bg-light"], "Column")),
                  H5Div(["col-6"],
                    H5Div(["p-3 border bg-light"], "Column")))),
              H5H4(["h5", "text-muted", "mt-3", "container"], "4"),
              BS5Container(
                BS5Row(["g-4"], 
                  H5Div(["col-6"], 
                    H5Div(["p-3 border bg-light"], "Column")),
                  H5Div(["col-6"], 
                    H5Div(["p-3 border bg-light"], "Column")),
                  H5Div(["col-6"], 
                    H5Div(["p-3 border bg-light"], "Column")),
                  H5Div(["col-6"], 
                    H5Div(["p-3 border bg-light"], "Column")))),
              H5H4(["h5", "text-muted", "mt-3", "container"], "5"),
              BS5Container(
                BS5Row(["g-5"], 
                  H5Div(["col-6"], 
                    H5Div(["p-3 border bg-light"], "Column")),
                  H5Div(["col-6"], 
                    H5Div(["p-3 border bg-light"], "Column")),
                  H5Div(["col-6"], 
                    H5Div(["p-3 border bg-light"], "Column")),
                  H5Div(["col-6"], 
                    H5Div(["p-3 border bg-light"], "Column")))),
              H5H4(["h5", "text-muted", "mt-3", "container"], "Responsive"),
              BS5Container(  
                BS5Row(["g-0", "g-sm-1", "g-md-2", "g-lg-3", "g-xl-4", "g-xxl-5"], 
                  H5Div(["col-6"],
                    H5Div(["p-3 border bg-light"], "Column")),
                  H5Div(["col-6"],
                    H5Div(["p-3 border bg-light"], "Column")),
                  H5Div(["col-6"],
                    H5Div(["p-3 border bg-light"], "Column")),
                  H5Div(["col-6"],
                    H5Div(["p-3 border bg-light"], "Column"))))),
          ), ``, ``),

        demoUIMExample("rowcolumns", "Row columns",
          H5Div(
            H5H4(["h5", "text-muted", "mt-3", "container"], "2"),
            BS5Container(
              BS5Row(["row-cols-2", "g-2"], 
                H5Div(["col"], 
                  H5Div(["p-3 border bg-light"], "Column")),
                H5Div(["col"], 
                  H5Div(["p-3 border bg-light"], "Column")),
                H5Div(["col"], 
                  H5Div(["p-3 border bg-light"], "Column")),
                H5Div(["col"], 
                  H5Div(["p-3 border bg-light"], "Column")))),
            H5H4(["h5", "text-muted", "mt-3", "container"], "3"),
            BS5Container(
              BS5Row(["row-cols-3", "g-3"], 
                H5Div(["col"], 
                  H5Div(["p-3 border bg-light"], "Column")),
                H5Div(["col"], 
                  H5Div(["p-3 border bg-light"], "Column")),
                H5Div(["col"], 
                  H5Div(["p-3 border bg-light"], "Column")),
                H5Div(["col"], 
                  H5Div(["p-3 border bg-light"], "Column")))),
            H5H4(["h5", "text-muted", "mt-3", "container"], "4"),
            BS5Container(
              BS5Row(["row-cols-4", "g-4"], 
                H5Div(["col"], 
                  H5Div(["p-3 border bg-light"], "Column")),
                H5Div(["col"], 
                  H5Div(["p-3 border bg-light"], "Column")),
                H5Div(["col"], 
                  H5Div(["p-3 border bg-light"], "Column")),
                H5Div(["col"], 
                  H5Div(["p-3 border bg-light"], "Column"))))
          ), ``, ``)

    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}

