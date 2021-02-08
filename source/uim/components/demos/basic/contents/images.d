module uim.components.demos.demos.contents.images;

import uim.components;

static this() {
	demoUIMComps.pages("basic/contents/images", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Images - uim-components Demo",
          "script":
          `const vue = Vue.createApp({});`~
          UIMButton.toVue3("vue")~";"~
          /* UIMButtonLink.toVue3("vue")~";"~ */
          `vue.mount('#app');`]);
		} 
			
    override string content() { 
      return `
<main>
  <div class="container-fluid mt-3 bg-light m-1">
    <nav aria-label="Breadcrumb" >
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/">UI Manufaktur</a></li>
        <li class="breadcrumb-item"><a href="/demos">Demos</a></li>
        <li class="breadcrumb-item"><a href="/uim-components/demos">uim-components</a></li>
        <li class="breadcrumb-item"><a href="/uim-components/demos">Bootstrap 5</a></li>
        <li class="breadcrumb-item"><a href="/demos/uim-components/contents">Contents</a></li>
        <li class="breadcrumb-item active" aria-current="page">Images</li>
      </ol>
    </nav>
  </div>
  <div class="container mt-3">
    <div class="row">
      <div class="col-12 col-lg-2">
      </div>
      <div class="col-12 col-lg-8">
        <h2 class="component display-4">Images</h2>
        <hr>

         <div class="mb-5">
          <h3 class="text-muted">Default</h3>
          <div>
            <img src="../img/300x200.png" alt="Normal image">
          </div>
        </div>

        <div class="mb-5">
          <h3 class="text-muted">Responsive</h3>
          <div>
            <img src="../img/1200x600.png" alt="Responsive image" class="img-fluid">
          </div>
        </div>

        <div class="mb-5">
          <h3 class="text-muted">Rounded</h3>
          <div>
            <img src="../img/300x200.png" alt="Image with rounded corners" class="rounded">
          </div>
        </div>

        <div class="mb-5">
          <h3 class="text-muted">Thumbnail</h3>
          <div>
            <img src="../img/100x100.png" alt="Image thumbnail" class="img-thumbnail">
          </div>
        </div>

        <div class="mb-5">
          <h3 class="text-muted">Alignment</h3>
          <div>
            <h4 class="h5 text-muted mt-3">Float</h4>
            <div class="clearfix">
              <img src="../img/100x100.png" alt="Image floated left" class="float-start">
              <img src="../img/100x100.png" alt="Image floated right" class="float-end">
            </div>
            <h4 class="h5 text-muted mt-3">Spacing utilities</h4>
            <img src="../img/100x100.png" alt="Left-aligned image" class="d-block">
            <img src="../img/100x100.png" alt="Centered image" class="d-block mx-auto">
            <img src="../img/100x100.png" alt="Right-aligned image" class="d-block ms-auto">
            <h4 class="h5 text-muted mt-3">Text alignment</h4>
            <div class="text-start">
              <img src="../img/100x100.png" alt="Left-aligned image">
            </div>
            <div class="text-center">
              <img src="../img/100x100.png" alt="Centered image">
            </div>
            <div class="text-end">
              <img src="../img/100x100.png" alt="Right-aligned image">
            </div>
          </div>
        </div>

        <div class="mb-5">
          <h3 class="text-muted">Picture element</h3>
          <p>If using the <code>&lt;picture&gt;</code> element put <code>.img-*</code> classes on the <code>&lt;img&gt;</code> tag and not the <code>&lt;picture&gt;</code> tag.
          <div>
            <picture>
              <source srcset="../img/100x100.png">
              <img src="../img/100x100.png" alt="Image in picture tag" class="img-thumbnail">
            </picture>
          </div>
        </div>

      </div>
    </div>
  </div>
</main>
      `;
    }
  });
}