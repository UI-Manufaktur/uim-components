module uim.components.demos.demos.forms.overview;

import uim.components;

static this() {
	demoUIMComps.pages("forms/overview", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Overview - uim-components Demo",
          ]);
		} 
			
    override string content() { 
      return `
<main>
  <div class="container-fluid mt-3 bg-light m-1">
    <nav aria-label="Breadcrumb" >
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/">UI Manufaktur</a></li>
        <li class="breadcrumb-item"><a href="/demos">Demos</a></li>
        <li class="breadcrumb-item"><a href="/demos/uim-components">uim-components</a></li>
        <li class="breadcrumb-item"><a href="/demos/uim-components">Bootstrap 5</a></li>
        <li class="breadcrumb-item"><a href="/demos/uim-components/contents">Contents</a></li>
        <li class="breadcrumb-item active" aria-current="page">Overview</li>
      </ol>
    </nav>
  </div>
  <div class="container mt-3">
    <div class="row">
      <div class="col-12 col-lg-2">
      </div>
      <div class="col-12 col-lg-8">
        <h2 class="component display-4">Overview</h2>
        <hr>

        <div class="mb-5">
          <h3 class="text-muted">Default</h3>
          <div>
            <figure class="figure">
              <img src="../img/600x400.png" class="figure-img img-fluid" alt="Figure image">
              <figcaption class="figure-caption">Caption for the figure.</figcaption>
            </figure>
          </div>
        </div>

        <div class="mb-5">
          <h3 class="text-muted">Alignment</h3>
          <div>
            <h4 class="h5 text-muted mt-3">Center</h4>
            <figure class="figure">
              <img src="../img/600x400.png" class="figure-img img-fluid" alt="Figure image">
              <figcaption class="figure-caption text-center">Caption for the figure.</figcaption>
            </figure>
            <h4 class="h5 text-muted mt-3">Right</h4>
            <figure class="figure">
              <img src="../img/600x400.png" class="figure-img img-fluid" alt="Figure image">
              <figcaption class="figure-caption text-end">Caption for the figure.</figcaption>
            </figure>
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