    Microsoft Windows XP Service Pack 2 (SP2), RTM
                    Deploy.cab
                  Readme Document
                   June 25, 2004

Information in this document, including URL and other Internet Web 
site references, is subject to change without notice and is provided 
for informational purposes only. The entire risk of the use or 
results of the use of this document remain with the user, and 
Microsoft Corporation makes no warranties, either express or implied. 
Unless otherwise noted, the example companies, organizations, 
products, people, and events depicted herein are fictitious. No 
association with any real company, organization, product, person, 
or event is intended or should be inferred. Complying with all 
applicable copyright laws is the responsibility of the user. Without 
limiting the rights under copyright, no part of this document may 
be reproduced, stored in or introduced into a retrieval system, or 
transmitted in any form or by any means (electronic, mechanical, 
photocopying, recording, or otherwise), or for any purpose, without 
the express written permission of Microsoft Corporation.

Microsoft may have patents, patent applications, trademarks, 
copyrights, or other intellectual property rights covering subject 
matter in this document. Except as expressly provided in any written 
license agreement from Microsoft, the furnishing of this document 
does not give you any license to these patents, trademarks, 
copyrights, or other intellectual property.

(c) 2004 Microsoft Corporation. All rights reserved. 

Microsoft, MS-DOS, Windows, and Windows NT are either registered 
trademarks or trademarks of Microsoft Corporation in the United States 
or other countries or regions. 

The names of actual companies and products mentioned herein may be 
the trademarks of their respective owners. 

========================
How to Use This Document
========================

To view the Readme file in Microsoft Windows Notepad, maximize 
the Notepad window. On the Format menu, click Word Wrap. 

To print the Readme file, open it in Notepad or another word 
processor, and then use the Print command on the File menu. 

========
CONTENTS
========

1. INTRODUCTION 

2. AVAILABILITY OF WINDOWS PE 

3. UPGRADING FROM PREVIOUS VERSIONS OF THE TOOLS

4. UPGRADING EXISTING CONFIGURATION SETS

5. KNOWN ISSUES

---------------

1. INTRODUCTION
---------------

This document provides current information about the tools included 
in the Deploy.cab for Microsoft Windows XP Service Pack 2 (SP2) and 
the Windows Server 2003 family.

NOTE: The Setup Manager tool (Setupmgr.exe) contained in Deploy.cab 
      is intended for use only by corporate administrators. If you are 
      a system builder, install the tools and documentation contained 
      on the OEM Preinstallation Kit (OPK) CD. An OPK CD is contained 
      in every multi-pack of Windows distributed by an OEM distributor
      to original computer manufacturers, assemblers, reassemblers, 
      and/or software preinstallers of computer hardware under the
      Microsoft OEM System Builder License Agreement.

Setup Manager no longer contains context-sensitive help. For more
information about the individual pages in Setup Manager, see the 
topic "Setup Manager Settings" in the Microsoft Windows Corporate
Deployment Tools User's Guide (Deploy.chm).

-----------------------------

2. AVAILABILITY OF WINDOWS PE
-----------------------------

Windows Preinstallation Environment (Windows PE) is licensed to 
original equipment manufacturers (OEMs) for use in preinstalling 
Windows onto new computers. Windows PE is available for enterprise 
customers. For more information, contact your account manager.

------------------------------------------------

3. UPGRADING FROM PREVIOUS VERSIONS OF THE TOOLS
------------------------------------------------

You can use the Windows XP SP2 OPK to preinstall the following 
versions of Windows:

   * Original "gold" release of Windows XP 
   * Windows XP SP1 and SP2 
   * Windows Server 2003 family 

To preinstall the Windows Server 2003 Itanium-based client, use 
the Windows Server 2003 SP1 Itanium-based tools.

Do not use the original "gold" release of Windows XP corporate
deployment tools to preinstall the Windows Server 2003 family.

If you previously installed the corporate deployment tools from
the original "gold" release of Windows XP or the Windows XP SP1
tools, you must upgrade those tools to the Windows XP SP2 corporate
deployment; corporate deployment tools from the original "gold"
release of Windows XP or the Windows XP SP1 tools cannot coexist
on the technician computer with corporate deployment tools from
the Windows XP SP2.

Do not upgrade an installation of the Windows Server 2003 corporate 
deployment tools to Windows Server 2003 SP1 Beta.

If you set up a distribution share with corporate deployment tools
from the original "gold" Windows XP release or Windows XP SP1, the
Guest account is enabled. 

Setting up a new distribution share with the Windows XP SP2 corporate 
deployment tools does not automatically enable the Guest account. 
Also, upgrading the tools from the Windows XP corporate deployment
to Windows XP SP2 does not change the properties of an existing
distribution share.

----------------------------------------

4. UPGRADING EXISTING CONFIGURATION SETS
----------------------------------------

Upgrading to the Windows XP SP2 corporate deployment tools does
not change any existing configuration sets, located in the \Cfgsets
folder. Also, upgrading to the Windows XP SP2 tools does not change
any available Windows product files, located in the \Lang folder.

You must use the Product page in Setup Manager to load the 
Windows product files for the newer versions of Windows, such as
Windows XP SP2 or members of the Windows Server 2003 family.

Upgrading to the Windows XP SP2 corporate deployment tools updates 
the template files that Setup Manager uses when creating a new 
configuration set. Any new configuration sets created with the
Windows XP SP2 Setup Manager will use the default values obtained
from these new template files.

* To migrate a Windows XP or Windows XP SP1 configuration set to
preinstall Windows XP SP2

1. Open the configuration set in Setup Manager.

2. On the Product page, select the new product, Windows XP SP2.

3. Save the configuration set.

---------------

5. KNOWN ISSUES
---------------

*  The InputLocale entry in the [RegionalSettings] section of 
Unattend.txt and Sysprep.inf can only be used to specify a maximum
of seven input locale and keyboard layout combinations.

Workaround:

See Knowledge Base article 325856 for how to specify regional
settings after Mini-Setup is finished.

* If Automatic Updates is turned on, either by setting
AutomaticUpdates = On in Unattend.txt or by using the "Help Protect
Your PC" page in Windows Welcome, and then Sysprep -reseal is run, 
Automatic Updates will remain on.

* If you install the corporate deployment tools on a computer running
Windows Server 2003, you may need to complete an additional step when 
creating a  distribution share. On a computer running Windows Server 
2003, sharing a folder sets default permissions to read-only for
the group Everyone. If you intend to allow Everyone to write to the 
distribution share from across the network, you must add additional 
permissions.

Workaround: Add read-write permissions for the user(s) who need to
write remotely to the distribution share.

* If you preinstall the Multilingual User Interface (MUI) Pack during
Sysprep in Factory mode (Sysprep -factory) and restart the computer
into Mini-Setup, then all pages in Mini-Setup are truncated. 

Workaround: Set the default user interface for MUI to English.

* Do not manually modify the Windows installation when Sysprep is 
running in Factory mode. 

Workaround: Use Winbom.ini to modify the Windows installation when 
you run Sysprep -factory.

-OR-

Use the command Sysprep -audit if you want to modify the Windows
installation manually.

* If the corporate deployment tools are installed into a localized 
directory, and the User Locale is changed to another language, the 
corporate deployment help files cannot be opened.

Workaround: Change the User Locale to match the language of the 
localized directory.

* You can use Sysprep to install Test Certificates to enable testing
of drivers that are test signed by Windows Hardware Quality Lab (WHQL)
on an operating system image, even if the image has had Sysprep run
against it. See KB321559 for details.

* You cannot run Update.exe within an I386 directory to update a
Windows XP installation to Windows XP SP2. You must run Update.exe
against the entire contents of a Windows CD. If the entire contents
of a Windows CD is not present in your installation share, Update.exe
fails to complete the installation process. 

* You cannot run Sysprep.exe on an installation of Windows XP SP1 that
was upgraded to Windows XP SP2 using Update.exe. Sysprep can be run
only on integrated ("slipstreamed") Windows installations.

* To update the Windows XP I386 directory properly

1. Download Windows XP Service Pack 2.

2. At the command prompt, go to the folder where you downloaded the
   XPSP2.EXE file, and then type this command:

   xpsp2.exe -x

3. When prompted, type the path from which you want the service pack
   to be expanded. For example, type:

   C:\XPSP2

4. Create a temporary directory on your system and copy the entire
   Windows XP product CD to this directory. For example, type:

   MD C:\INTSP2 XCopy CDROM Drive Letter:\*.* C:\INTSP2 /e

5. After the previous step is completed, change to the directory that
   contains the Windows XP SP2 files. For example, type:

   CD C:\xpsp2\update

6. To update the Windows XP files to include SP2, type: 

   update.exe -s c:\INTSP2

This procedure results in an I386 directory updated to Windows XP SP2.

* In the OEM Preinstallation Reference (Ref.chm), the functionality
of the AllowConnections entry of the [TerminalServices] section in the
Unattend.txt answer file has changed. If you specify the following:

[TerminalServices]
AllowConnections = 1 

Remote Desktop will be enabled during unattended Setup. However,
Remote Desktop will not be added to the Windows Firewall Exceptions
list. The following entries represent the mimimum required entries
in the Unattend.txt answer file to enable Remote Desktop during
unattended Setup and add Remote Desktop to the Windows Firewall
Exceptions list:


[WindowsFirewall]
Profiles = Standard   (specify a user-defined profile name)

[WindowsFirewall.Standard]
Services = RemoteDesktop   (specify a user-defined service name)

[WindowsFirewall.RemoteDesktop]
Type = 2

[TerminalServices]
AllowConnections = 1 

For details on Windows Firewall settings, see the [WindowsFirewall]
sections and entries in the Unattend.txt chapter of the 
OEM Preinstallation Reference (Ref.chm).