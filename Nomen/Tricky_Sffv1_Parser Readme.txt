Tricky_Sffv1_Parser (N.O.M.E.N. External Tool)
Version 1.0
License: GPLv3

Copyright (C) 2010-2011   Nobun

http://mugenrebirth.forumfree.it
http://nomeneditor.sourceforge.net


#####################################################

Tricky Sff Parser Readme File

#####################################################


Note: from now on I will call Tricky_Sff_Parser -> "the tool"

Note: this TOOL is very frustrating to use. Use only if you really need it (and be patient)



INDEX:
----------------------------------

00. Introduction About "the tool"
01. Step 1
02. Step 2
03. Step 3
04. Step 4
05. Last Step: Loading NOMSPR inside Nomen
06. Why this tool use .NOMSPR for saving? (and not one of the standard sff?)
07. Why you Made this tool so frustrating to use?




##################################################
00. Introduction About "the tool"
##################################################

The classic Elecbyte Sff Format (SffV1) lacks of informations, so it is nearly impossible to create the "perfect sffv1 reader"

However in the 99% of situations you can open an Old Sff file Directly with NOMEN without any problem.

BUT..........

...there are some EXTREMELY RARE cases where the SffV1 is so strangely done that it is IMPOSSIBLE to open it correctly.

I think mainly about "Dracula" by "raigugiraru" (thank to serio that reported me the existance of that so-very-strangely-structured sff file)
But probably there could be other characters sff so strangely structured (lucly is a very very rare situation).

If you try to open "Dracula" by "raigugiraru" you could try any kind of tool (sffextract, Fighter Factory, MCM...) .... you will not able to open it correctly.
It is not a fault of those tools but it is a situation directly related to the sffv1 structure.

Opening "Dracula" by "raigugiraru" (and probably other extremely rare sff chars) is IMPOSSIBLE using a normal approach. S
So it requires a very-dedicated method to open it that it would be impossible to include directly in NOMEN.
So why the existance of this external tool.


This tool is very very frustrating to use!  

Before using this tool try to open an sff directly with NOMEN. NOMEN should open it correctly in 99% of cases
IF (and only if) Nomen is unable to open correctly that SFF (some or a lot of images displayed with bad colors - very rare case becouse Nomen is as most accurate as possible) ONLY IN THAT CASE you require to use this tool.

If you need to use this tool, procede reading this file



##################################################
01. STEP1
##################################################

In this step you will be invited to read this file.
Here the summary of things you must remember:

1. This Tool is VERY VERY frustrating to use. So use only if you really need it (see "introduction of this tool")
2. This Tool will work ONLY WITH sffv1 (*.sff -> older format) CHARS
3. I Repeat: Only CHARS (so.... NOT stages, addons, etc.... only Sffv1 chars can have this kind of problem that require the usage of this tool)

4. After using this tool you need to use also NOMEN itself (see next paragraphs).


PROCEDE WITH STEP2 only if you really want to start



##################################################
02. STEP2
##################################################

This step is Quick. You need to load (before loading the sff you want to parse) a MUGEN .act palette related to it.
For example if you are planning to open "KFM/kfm.sff" in this step you must select one of the .act files you will find in "KFM" directory

This palette will be used ONLY IF the parser will not find a good candidate for palette 1,1

So remember: you must load a MUGEN .ACT file RELATED TO the sff you will load in step3.

----------
Why you can load only a MUGEN. ACT and not also a palette in one of the other formats available in NOMEN?
----------

It is simple. Becouse "Tricky SffV1 Parser" has the scope to load a CHAR sff(v1) file. If the sff is a Mugen Char Sff(v1) file you will surely find at least an act related to it.
So allowing the chance to load palette config from other file format can create confusion, so why I preferred to add this limitation here



##################################################
03. STEP3
##################################################

This is the Frustrating step.
In this step you will be asked to check (group-by-group (*)) the images.
You will have to see where the images are displayed correctly (if in the left box, in the right box, or in both boxes).

Do that until all sff images are checked [very frustrating, I know :( ].
A Progress bar will inform you about how much work you already done


VERY IMPORTANT NOTE: if there are more than one image (see the lower scrollbar that inform you how many images you are checking for every session - letting you to navigate them) 
                     DON'T answer to the question until you watched at least 2-3 images.
                     
                     It often happens that the first image is displayed correctly in both 
                        boxes, but not the following ones. You must choose the box that 
                        displays ALL images correctly (however you don't really need to check all images. It is enough checking the first 2-3 images)


----
(*) With an exception: group 9000. You will be asked to check 9000,x images one-by-one 



##################################################
04. STEP4
##################################################

When the (frustrating) step3 ended you will be asked to save a file.

Press "step4" and you will be able to save a NOMSPR file you will able to open with NOMEN

What is a .NOMSPR? Simply a sort of Sff, but written in a Nomen-specific format (not usable under Mugen).
.NOMSPR Files can be opened ONLY with NOMEN


But don't worry: When you will open this .NOMSPR file with NOMEN you will be able to convert it (save it) in a Mugen sff file (either Sffv1 or Sffv2).
See the following Paragraph.


After the creation of the .NOMSPR file, the application will be closed. If you need to use it another time, simply run it again from beginning



##################################################
05. Last Step: Loading NOMSPR inside Nomen
##################################################

Now you can load .NOMSPR file with NOMEN like any other Sff File.


-----
Convert NOMSPR to Sffv2
-----

- Open the "NOMSPR" file with NOMEN (as it would be any other Sff file)
- Select "Save as..." from "Sff" Menu and Save the file as an SFF.

Done: the created sff file with be saved in Sffv2 format


----
Convert NOMSPR to Sffv1
----

- Open the "NOMSPR" file with NOMEN (as it would be any other Sff file)

- After loading the sff file go again to the menu "Sff" and than choose 
  "Select Sff Output Format" (This menu item allows you to choose a different format for saving an sff - default is SffV2) 

    - A new dialog will appear. You will see a 
            "Sff v 2.0 - (Mugen 1.0 RC and following)". 
        Click on it and choose, instead, 
            "Sff v 1.0 - (All Mugen versions including olders)". 
        Then press ok. 

- Select "Save as..." from "Sff" Menu and Save the file as an SFF.

Done: the created sff file with be saved in Sffv1 format



##################################################
06. Why this tool use .NOMSPR for saving? (and not one of the standard sff?)
##################################################

Take mind that "this tool" is not intendet to be a general-purpose Sff Manager (like NOMEN itself would be)

THis tool is essentially directed to "solve" a specific problem around Sffv1 Reading that would be normally impossible to manage.
In order to do it with the less risks of Bugs I choosed the "most efficient" solution in terms of results and in terms of "saving as most informations as possible"

.NOMSPR file, infact, save all informations that NOMEN internally use when managing an Sff.

- It is the easier format to implement (it is a format that requires a very short code in order to manage it, unlike other files)
- It saves a lot of informations (so it can be managed at best by Nomen)
- It can be converted quickly by NOMEN in a .sff file (NOMEN itself is also a general-purpose Sff Manager!)


It is not a so great sacrifice to you, and it was for me the best solution to code (for the reasons listed and for other reasons that it would be too complex to explain...)



##################################################
07. Why you Made this tool so frustrating to use?
##################################################

I am not masochistic.
If I made this tool so unconfortable to use is only becouse I was forced to do in this way.

I thinked a lot about how to manage this problem. I thinked also about making a totally-automated tool, but I was forced to abandone the idea for those reasons:

- too things to take care of (a lot of chanches of introducing critical bugs)
- too expensive to do (in terms of: time required, risks of doing something that doesn't work at all, etc etc)
- It would mean too much (perhaps endless?) work to solve a VERY VERY VERY rare situation

So I said... <<No Thank!>>


This is the only praticable solution. I am very sorry.
However think about you have a tool (even if painful to use) that can solve situations that any other tool around cannot!


NOTE: This tool required A LOT of work!!!!!!!!
      So please don't complain about it, and try to see the goodness about its existance!
