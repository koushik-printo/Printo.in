eval(function(p,a,c,k,e,r){e=function(c){return c.toString(a)};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('$(8(){1 a=$("#0").2().5+3;1 b=$("#0").2().4+3;1 c=6;1 d=6;1 e=$("#0").2().5+$("#0").7()-3;1 f=$("#0").2().4+$("#0").9()-3;g(b,a,e,f,c,d)});',17,17,'workingarea|var|position|15|left|top|30|height|function|width|||||||dragResize'.split('|'),0,{}))


function getStyleProperty(obj, IEStyleProp, CSSStyleProp)
{
if (obj.currentStyle)  //IE
return parseInt(obj.currentStyle[IEStyleProp]);
else if (window.getComputedStyle) //W3C
return  parseInt(window.getComputedStyle(obj,
"").getPropertyValue(CSSStyleProp));
}

function dragResize(left_,top_,lHeight_,lWidth_,eHeight_,eWidth_)
{eval(function(p,a,c,k,e,r){e=function(c){return c.toString(a)};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('h 0=i j(\'0\',{k:l,n:o,p:8,9:b,c:d,e:f});0.g=2(a){4(a.3&&a.3.5(\'m\')>-1)6 7};0.q=2(a){4(a.3&&a.3.5(\'r\')>-1)6 7};0.s=2(){};0.t=2(a){};0.u=2(a){};0.v=2(a){};0.w=2(){};0.x(y);',35,35,'dragresize||function|className|if|indexOf|return|true|left_|minTop||top_|maxLeft|lWidth_|maxTop|lHeight_|isElement|var|new|DragResize|minWidth|eWidth_|drsElement|minHeight|eHeight_|minLeft|isHandle|drsMoveHandle|ondragfocus|ondragstart|ondragmove|ondragend|ondragblur|apply|document'.split('|'),0,{}))}
