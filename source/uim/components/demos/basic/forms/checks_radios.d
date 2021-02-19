module uim.components.demos.demos.forms.checks_radios;

import uim.components;

static this() {
	demoUIMComps.pages("basic/forms/checks_radios", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Checks and Radios - uim-components Demo",
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
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-components", "/demos/uim-components/basic", "/demos/uim-components/basic/forms"], 
    ["UI Manufaktur", "Demos", "uim-components" , "Basic", "Forms"], "Checkboxes and Radios")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listCompLevels("basic"),    
      listCompAreas("basic", "forms"),    
      listCompSections("basic", "forms", "checks_radios"),    
    ),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(created, changed),
      H5H2(["display-4"], "Checkboxes and Radios"),
      H5Hr

    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}
      /* 
        <div class="mb-5">
              <h3 class="text-muted">Checks</h3>
              <div>
                <h4 class="h5 text-muted mt-3">Default</h4>
                <div class="form-check">
                  <input type="checkbox" class="form-check-input" id="checkDefault1">
                  <label class="form-check-label" for="checkDefault1">Default checkbox</label>
                </div>
                <div class="form-check">
                  <input type="checkbox" class="form-check-input" id="checkDefault2" checked>
                  <label class="form-check-label" for="checkDefault2">Checked checkbox</label>
                </div>
                <h4 class="h5 text-muted mt-3">Indeterminate</h4>
                <div class="form-check">
                  <input type="checkbox" class="form-check-input" id="checkIndeterminate">
                  <label class="form-check-label" for="checkIndeterminate">Indeterminate checkbox</label>
                  <script>var checkbox = document.getElementById('checkIndeterminate');checkbox.indeterminate = true;</script>
                </div>
                <h4 class="h5 text-muted mt-3">Disabled</h4>
                <div class="form-check">
                  <input type="checkbox" class="form-check-input" id="checkDisabled1" disabled>
                  <label class="form-check-label" for="checkDisabled1">Disabled default checkbox</label>
                </div>
                <div class="form-check">
                  <input type="checkbox" class="form-check-input" id="checkDisabled2" checked disabled>
                  <label class="form-check-label" for="checkDisabled2">Disabled checked checkbox</label>
                </div>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Radios</h3>
              <div>
                <h4 class="h5 text-muted mt-3">Default</h4>
                <div class="form-check">
                  <input type="radio" class="form-check-input" name="radioDefault" id="radioDefault1">
                  <label class="form-check-label" for="radioDefault1">Default radio</label>
                </div>
                <div class="form-check">
                  <input type="radio" class="form-check-input" name="radioDefault" id="radioDefault2" checked>
                  <label class="form-check-label" for="radioDefault2">Checked radio</label>
                </div>
                <h4 class="h5 text-muted mt-3">Disabled</h4>
                <div class="form-check">
                  <input type="radio" class="form-check-input" name="radioDisabled" id="radioDisabled1" disabled>
                  <label class="form-check-label" for="radioDisabled1">Disabled default radio</label>
                </div>
                <div class="form-check">
                  <input type="radio" class="form-check-input" name="radioDisabled" id="radioDisabled2" checked disabled>
                  <label class="form-check-label" for="radioDisabled2">Disabled checked radio</label>
                </div>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Switches</h3>
              <div>
                <h4 class="h5 text-muted mt-3">Default</h4>
                <div class="form-check form-switch">
                  <input type="checkbox" class="form-check-input" id="switchDefault1">
                  <label class="form-check-label" for="switchDefault1">Default switch</label>
                </div>
                <div class="form-check form-switch">
                  <input type="checkbox" class="form-check-input" id="switchDefault2" checked>
                  <label class="form-check-label" for="switchDefault2">Checked switch</label>
                </div>
                <h4 class="h5 text-muted mt-3">Disabled</h4>
                <div class="form-check form-switch">
                  <input type="checkbox" class="form-check-input" id="switchDisabled1" disabled>
                  <label class="form-check-label" for="switchDisabled1">Disabled default switch</label>
                </div>
                <div class="form-check form-switch">
                  <input type="checkbox" class="form-check-input" id="switchDisabled2" checked disabled>
                  <label class="form-check-label" for="switchDisabled2">Disabled checked switch</label>
                </div>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Inline</h3>
              <div>
                <h4 class="h5 text-muted mt-3">Check</h4>
                <div class="form-check form-check-inline">
                  <input type="checkbox" class="form-check-input" id="checkInline1">
                  <label class="form-check-label" for="checkInline1">1</label>
                </div>
                <div class="form-check form-check-inline">
                  <input type="checkbox" class="form-check-input" id="checkInline2" checked>
                  <label class="form-check-label" for="checkInline2">2</label>
                </div>
                <div class="form-check form-check-inline">
                  <input type="checkbox" class="form-check-input" id="checkInline3" disabled>
                  <label class="form-check-label" for="checkInline3">3</label>
                </div>
                <h4 class="h5 text-muted mt-3">Radio</h4>
                <div class="form-check form-check-inline">
                  <input type="radio" class="form-check-input" name="radioInline" id="radioInline1">
                  <label class="form-check-label" for="radioInline1">1</label>
                </div>
                <div class="form-check form-check-inline">
                  <input type="radio" class="form-check-input" name="radioInline" id="radioInline2" checked>
                  <label class="form-check-label" for="radioInline2">2</label>
                </div>
                <div class="form-check form-check-inline">
                  <input type="radio" class="form-check-input" name="radioInline" id="radioInline3" disabled>
                  <label class="form-check-label" for="radioInline3">3</label>
                </div>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">No labels</h3>
              <div>
                <input type="checkbox" class="form-check-input" id="checkNolabel" aria-label="Checkbox label">
                <input type="radio" class="form-check-input" name="radioNolabel" id="radioNoLabel1" aria-label="Radio label">
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Toggle buttons</h3>
              <div>
                <h4 class="h5 text-muted mt-3">Checkbox</h4>
                <input type="checkbox" class="btn-check" id="checkToggleButton1" autocomplete="off">
                <label class="btn btn-secondary" for="checkToggleButton1">Checkbox</label>
                <h4 class="h5 text-muted mt-3">Radio</h4>
                <div class="btn-group">
                  <input type="radio" class="btn-check" name="radioToggleButton" id="radioToggleButton1" autocomplete="off">
                  <label class="btn btn-secondary" for="radioToggleButton1">Radio 1</label>
                  <input type="radio" class="btn-check" name="radioToggleButton" id="radioToggleButton2" autocomplete="off">
                  <label class="btn btn-secondary" for="radioToggleButton2">Radio 2</label>
                  <input type="radio" class="btn-check" name="radioToggleButton" id="radioToggleButton3" autocomplete="off">
                  <label class="btn btn-secondary" for="radioToggleButton3">Radio 3</label>
                </div>
                <h4 class="h5 text-muted mt-3">Outlined</h4>
                <input type="checkbox" class="btn-check" id="checkToggleButtonOutlined1" autocomplete="off">
                <label class="btn btn-outline-secondary" for="checkToggleButtonOutlined1">Checkbox</label>
                <br><br>
                <div class="btn-group">
                  <input type="radio" class="btn-check" name="radioToggleButtonOutlined" id="radioToggleButtonOutlined1" autocomplete="off">
                  <label class="btn btn-outline-primary" for="radioToggleButtonOutlined1">Radio 1</label>
                  <input type="radio" class="btn-check" name="radioToggleButtonOutlined" id="radioToggleButtonOutlined2" autocomplete="off">
                  <label class="btn btn-outline-success" for="radioToggleButtonOutlined2">Radio 2</label>
                  <input type="radio" class="btn-check" name="radioToggleButtonOutlined" id="radioToggleButtonOutlined3" autocomplete="off">
                  <label class="btn btn-outline-info" for="radioToggleButtonOutlined3">Radio 3</label>
                </div>
              </div>
            </div>

          </div>
        </div>
      </div>
    </main>

      `;
    }
  });
} */