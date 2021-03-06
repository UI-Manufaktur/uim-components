module uim.components.demos.demos.forms.select;

import uim.components;

@safe: 
static this() {
	demoUIMComps.pages("forms/select", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Select - uim-components Demo",
          "script":
          `const vue = Vue.createApp({});`~
          formsVue3("vue")~
          `vue.mount('#app');`]);
		} 
			
    override string content(STRINGAA reqParameters = null) { 
      return 
H5Main("app", ["style":"margin-top:70px;"],
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-components", "/demos/uim-components/basic", "/demos/uim-components/basic/forms"], 
    ["UI Manufaktur", "Demos", "uim-components" , "Basic", "Forms"], "Select")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listCompLevels("basic"),    
      listCompAreas("basic", "forms"),    
      listCompSections("basic", "forms", "select"),    
    ),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(created, changed),
      H5H2(["display-4"], "Overview"),
      H5Hr,

      ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}
/*
        <div class="mb-5">
              <h3 class="text-muted">Default</h3>
              <div>
                <label for="inputSelect" class="form-label">Default select</label>
                <select class="form-select" aria-label="Default select" id="inputSelect">
                  <option selected>Select option</option>
                  <option value="1">Option one</option>
                  <option value="2">Option two</option>
                  <option value="3">Option three</option>
                  <option value="4">Option four</option>
                  <option value="5">Option five</option>
                </select>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Sizing</h3>
              <div>
                <h4 class="h5 text-muted mt-3">Small</h4>
                <label for="inputSelectSmall" class="form-label">Small select</label>
                <select class="form-select form-select-sm" aria-label="Small select" id="inputSelectSmall">
                  <option selected>Select option</option>
                  <option value="1">Option one</option>
                  <option value="2">Option two</option>
                  <option value="3">Option three</option>
                  <option value="4">Option four</option>
                  <option value="5">Option five</option>
                </select>
                <h4 class="h5 text-muted mt-3">Large</h4>
                <label for="inputSelectLarge" class="form-label">Large select</label>
                <select class="form-select form-select-lg" aria-label="Large select" id="inputSelectLarge">
                  <option selected>Select option</option>
                  <option value="1">Option one</option>
                  <option value="2">Option two</option>
                  <option value="3">Option three</option>
                  <option value="4">Option four</option>
                  <option value="5">Option five</option>
                </select>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Multiple</h3>
              <div>
                <label for="inputSelectMultiple" class="form-label">Multiple select</label>
                <select class="form-select" multiple aria-label="Multiple select" id="inputSelectMultiple">
                  <option value="1">Option one</option>
                  <option value="2">Option two</option>
                  <option value="3">Option three</option>
                  <option value="4">Option four</option>
                  <option value="5">Option five</option>
                </select>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Visible options</h3>
              <div>
                <label for="inputSelectSize" class="form-label">Select with size</label>
                <select class="form-select" size="3" aria-label="Select with size" id="inputSelectSize">
                  <option value="1">Option one</option>
                  <option value="2">Option two</option>
                  <option value="3">Option three</option>
                  <option value="4">Option four</option>
                  <option value="5">Option five</option>
                </select>
              </div>
            </div>
          </div>

      `;
    }
  });
}*/