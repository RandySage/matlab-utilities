htmlTables
================
This function was obtained from the MATLAB file exchange.  See license file for details of the license.

Note: modifying the built-in function publish can cause your system-default browser to open in addition to the MATLAB browser whenever you publish to html.  The following patch shows an example that I did to my file.  This could be useful if you are copying/pasting from your published html documentation to a WYSIWYG wiki or blog, since it will open right next to the page you are editing.

Note: BEWARE editing built-in functions or placing custom functions shadowing built-in functions on your path.  Results may vary and it may break things...

*** /Applications/MATLAB_R2013a.app/toolbox/matlab/codetools/publish_orig.m	2013-08-19 10:40:18.000000000 -0700
--- /Applications/MATLAB_R2013a.app/toolbox/matlab/codetools/publish_mod.m		2013-08-19 10:07:35.000000000 -0700
***************
*** 179,184 ****
--- 179,185 ----
  
      case 'html'
          xslt(dom,options.stylesheet,outputAbsoluteFilename);
+         web(outputAbsoluteFilename,'-browser');
          
      case 'latex'
          xslt(dom,options.stylesheet,outputAbsoluteFilename);