module uim.components.demos;

import std.string;

public import uim.core;
public import uim.oop;
public import uim.html;
public import uim.javascript;
public import uim.components;
public import uim.vue;
public import uim.web;

import uim.components; 

DH5App demoUIMComps;
static this() {
    demoUIMComps = new class DH5App {
        this() {
            super();
        }
    };
}

auto demoUIMExample(string id, string title, DH5Obj tabResult, string tabUim, string tabHTML) {
  return 
  H5Div(["mt-4 mb-4"],
    H5H3(["text-muted"], title),
    BS5Card(
      BS5CardHeader(
        BS5Nav(["nav-tabs", "card-header-tabs"], 
          BS5NavItem(["role":"presentation"], 
            BS5NavLink("tab"~id~"-1", ["active"], ["href":"#tab"~id~"-pane-1", "data-bs-toggle":"tab", "role":"tab", "aria-controls":"tab"~id~"-pane-1", "aria-selected":"true"], "Result")),
          BS5NavItem(["role":"presentation"], 
            BS5NavLink("tab"~id~"-2", ["href":"#tab"~id~"-pane-2", "data-bs-toggle":"tab", "role":"tab", "aria-controls":"tab"~id~"-pane-2", "aria-selected":"true"], "Code")),
          BS5NavItem(["role":"presentation"], 
            BS5NavLink("tab"~id~"-3", ["href":"#tab"~id~"-pane-3", "data-bs-toggle":"tab", "role":"tab", "aria-controls":"tab"~id~"-pane-3", "aria-selected":"true"], "JavaScript")))),
      BS5CardBody(
        H5Div(["tab-content"], 
          H5Div("tab"~id~"-pane-1", ["tab-pane", "active"], ["role":"tabpanel", "aria-labelledby":"tab"~id~"-1"], tabResult),
          H5Div("tab"~id~"-pane-2", ["tab-pane"], ["role":"tabpanel", "aria-labelledby":"tab"~id~"-2"], 
            `<pre><code>`~tabUim.replace(`&`, "&amp;").replace(`"`, "&quot;").replace("<", "&lt;").replace(">", "&gt;")~`</code></pre>`),
          H5Div("tab"~id~"-pane-3", ["tab-pane"], ["role":"tabpanel", "aria-labelledby":"tab"~id~"-3"], 
            `<pre><code>`~tabHTML.replace(`&`, "&amp;").replace(`"`, "&quot;").replace("<", "&lt;").replace(">", "&gt;")~`</code></pre>`)
  ))));
}