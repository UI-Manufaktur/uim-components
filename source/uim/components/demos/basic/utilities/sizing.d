module uim.components.demos.demos.utilities.sizing;

import uim.components;

@safe: 
static this() {
	demoUIMComps.pages("basic/utilities/sizing", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Sizing - uim-components Demo",
          "script":
          `const vue = Vue.createApp({});`~
          UIMButton.toVue3("vue")~";"~
          /* UIMButtonLink.toVue3("vue")~";"~ */
          `vue.mount('#app');`]);
		} 
			
    override string content(STRINGAA reqParameters = null) { 
return 
H5Main("app", ["style":"margin-top:70px;"],
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-components", "/demos/uim-components/basic", "/demos/uim-components/components/utilities"], 
    ["UI Manufaktur", "Demos", "uim-components" , "Components", "Utilities"], "Sizing")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listCompLevels("basic"),    
      listCompAreas("basic", "utilities"),    
      listCompSections("basic", "utilities", "sizing"),    
    ),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(created, changed),
      H5H2(["display-4"], "Sizing"),
      H5Hr,

/* 
        <div class="mb-5">
              <h3 class="text-muted">Relative to parent</h3>
              <div>
                <h4 class="h5 text-muted mt-3">Width</h4>
                <div class="bg-secondary">
                  <div class="bg-light p-2 w-25">Width 25%</div>
                  <div class="bg-light p-2 w-50">Width 50%</div>
                  <div class="bg-light p-2 w-75">Width 75%</div>
                  <div class="bg-light p-2 w-100">Width 100%</div>
                </div>
                <h4 class="h5 text-muted mt-3">Height</h4>
                <div class="bg-secondary d-flex justify-content-between" style="height: 200px;">
                  <div class="bg-light p-2 h-25">Height 25%</div>
                  <div class="bg-light p-2 h-50">Height 50%</div>
                  <div class="bg-light p-2 h-75">Height 75%</div>
                  <div class="bg-light p-2 h-100">Height 100%</div>
                </div>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Max width and height</h3>
              <div>
                <h4 class="h5 text-muted mt-3">Max-width</h4>
                <img src="../img/600x200.png" alt="Max-width = 100%" class="mw-100">
                <h4 class="h5 text-muted mt-3">Max-height</h4>
                <div style="height: 400px;">
                  <img src="../img/200x600.png" alt="Max-height = 100%" class="mh-100">
                </div>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Relative to viewport</h3>
              <div>
                <h4 class="h5 text-muted mt-3">Width</h4>
                <img src="../img/1000x200.png" alt="Width 100vw" class="vw-100">
                <h4 class="h5 text-muted mt-3">Min-width</h4>
                <img src="../img/1000x200.png" alt="Min-width 100vw" class="min-vw-100">
                <h4 class="h5 text-muted mt-3">Height</h4>
                <img src="../img/200x2000.png" alt="Height 100vh" class="vh-100">
                <h4 class="h5 text-muted mt-3">Min-height</h4>
                <img src="../img/200x2000.png" alt="Min-height 100vh" class="min-vh-100">
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>
      `; */
        ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}