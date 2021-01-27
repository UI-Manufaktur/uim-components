module uim.components.demos.demos.helpers.stretchedlink;

import uim.components;

static this() {
	demoUIMComps.pages("helpers/stretchedlink", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Stretched Link - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
      return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5", "/demos/uim-bootstrap/5/helpers"], 
    ["UI Manufaktur", "Demos", "uim-components", "Helpers"], "Stretched Link")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Stretched Link"),
      H5Hr,

      demoUIMExample("card", "Cards",
        H5Div(
          BS5Card(
            BS5CardBody(
              BS5CardTitle("Card title"),
              BS5CardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
              BS5CardLink(["stretched-link"], ["href":"#"], "Stretched link")))
        ), ``, ``),

      demoUIMExample("custom", "Custom component",
        H5Div(
          H5Div(["d-flex", "position-relative"],
            H5Img(["me-3"], ["src":"../img/200x200.png", "alt":""],
            H5Div(
              H5H5("Media object",
              H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
              H5A(["stretched-link"], ["href":"#"], "Stretched link")))))
        ), ``, ``),

      demoUIMExample("row", "Row",
        H5Div(
          BS5Row(["position-relative"],
            BS5Col(["col"],
              H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
            BS5Col(
              H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
              H5A(["stretched-link"], ["href":"#"], "Stretched link")))
        ), ``, ``)

     ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}
