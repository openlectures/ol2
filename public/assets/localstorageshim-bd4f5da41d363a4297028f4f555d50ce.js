/*
Content-Type: multipart/related; boundary="_IE_LOCALSTORAGE_SHIM"

--_IE_LOCALSTORAGE_SHIM
Content-Location:storeone
Content-Transfer-Encoding:base64

R0lGODlhAQABAIABAP///wAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==

--_IE_LOCALSTORAGE_SHIM
Content-Location:storetwo
Content-Transfer-Encoding:base64

PGh0bWw+PGhlYWQ+PHRpdGxlPjwvdGl0bGU+PC9oZWFkPjxib2R5PjxiIGlkPSJsb2NhbHN0b3JhZ2UtaWVzaGltLWluamVjdCIgY2xhc3M9InVzZXJEYXRhIiBzdHlsZT0iYmVoYXZpb3I6dXJsKCcjZGVmYXVsdCN1c2VyRGF0YScpIj48L2I+PHNjcmlwdD4oZnVuY3Rpb24gZ2V0VXNlckRhdGEoKXt2YXIgaWQ9ImxvY2Fsc3RvcmFnZS1pZXNoaW0taW5qZWN0IixiPWRvY3VtZW50LmdldEVsZW1lbnRCeUlkKGlkKTt0cnl7Yi5sb2FkKGlkKX1jYXRjaChlKXtzZXRUaW1lb3V0KGdldFVzZXJEYXRhLDApfX0oKSk8L3NjcmlwdD48L2JvZHk+PC9odG1sPg==

--_IE_LOCALSTORAGE_SHIM--
*/
(function(){function o(e){return e?"ie"+e.replace(/[^-._0-9A-Za-z\xb7\xc0-\xd6\xd8-\xf6\xf8-\u037d-\u1fff\u200c-\u200d\u203f\u2040\u2070-\u218f]/g,"-"):e}function u(e){return e?e.replace(/^ie/,""):e}function a(){function l(){var t;f=[];try{t=a.XMLDocument.documentElement.attributes;for(var n=0,r=t.length;n<r;n++)f.push(t[n].nodeName)}catch(s){if(e)throw s}i.length=f.length}var t=n.contentWindow.document,r="localstorage-ieshim-inject",a=t.getElementById(r),f=[];i={getItem:function(t){var n=null;t=o(t);try{a.load(r),n=a.getAttribute(t)}catch(i){if(e)throw i}return n},setItem:function(e,t){e=o(e);try{a.setAttribute(e,t.toString()),l(),a.save(r)}catch(n){throw new s("QUOTA_EXCEEDED_ERR","userData quota exceeded.")}l()},removeItem:function(t){t=o(t);try{a.removeAttribute(t),l(),a.save(r)}catch(n){if(e)throw n}},key:function(e){return l(),u(f[e])},clear:function(){l();for(var e=f.length-1,t;e>=0;e--)t=i.key(e),t&&i.removeItem(t)},length:f.length},window.localStorage=window.localStorage||i,l()}var e=!1,t=["getItem","setItem","removeItem","key","clear","length"],n=document.createElement("iframe"),r=document.getElementById("ie-localstorage-shim"),i={},s;s=function(e,t){this.name=e,this.message=t},s.prototype=new Error,n.src=r?"mhtml:"+r.getAttribute("src",-1)+"!storetwo":"/favicon.ico",n.style.display="none",n.attachEvent("onload",a),r.parentNode.insertBefore(n,r)})();