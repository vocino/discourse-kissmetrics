# name: KISSmetrics
# about: Identity reporting for http://kissmetrics.com
# version: 1.0
# author: Travis Vocino

# register_asset "javascripts/kissmetrics.js"

register_javascript <<JS

var _kmq = _kmq || [];
var _kmk = _kmk || Discourse.SiteSettings.kissmetrics_api_key;
function _kms(u){
  setTimeout(function(){
    var d = document, f = d.getElementsByTagName('script')[0],
    s = d.createElement('script');
    s.type = 'text/javascript'; s.async = true; s.src = u;
    f.parentNode.insertBefore(s, f);
  }, 1);
}
_kms('//i.kissmetrics.com/i.js');
_kms('//doug1izaerwt3.cloudfront.net/' + _kmk + '.1.js');

JS
