(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 8.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc.                                               *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       835,         17]
NotebookDataLength[    560824,       9918]
NotebookOptionsPosition[    554958,       9738]
NotebookOutlinePosition[    555598,       9761]
CellTagsIndexPosition[    555555,       9758]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"f", "[", "x_", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{"3", " ", "x", " ", "x", " ", "x"}], "-", 
    RowBox[{"2", "x"}]}]}], "\[IndentingNewLine]"}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"-", "2"}], " ", "x"}], "+", 
  RowBox[{"3", " ", 
   SuperscriptBox["x", "3"]}]}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"f", "[", "1", "]"}]], "Input"],

Cell[BoxData["1"], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"f", "[", "2", "]"}]], "Input"],

Cell[BoxData["20"], "Output"]
}, Open  ]],

Cell[BoxData[
 RowBox[{"Clear", "[", "f", "]"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"f", "[", "1", "]"}]], "Input"],

Cell[BoxData[
 RowBox[{"f", "[", "1", "]"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"f", "[", 
    RowBox[{"x_", ",", " ", "y_"}], "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{"3", " ", "x", " ", "x", " ", "x"}], " ", "+", " ", 
    RowBox[{"2", 
     RowBox[{"y", "^", "2"}], "x"}], " ", "+", " ", 
    RowBox[{"4", "y", "*", "y"}]}]}], "\[IndentingNewLine]"}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{"3", " ", 
   SuperscriptBox["x", "3"]}], "+", 
  RowBox[{"4", " ", 
   SuperscriptBox["y", "2"]}], "+", 
  RowBox[{"2", " ", "x", " ", 
   SuperscriptBox["y", "2"]}]}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Plot", "[", 
   RowBox[{
    RowBox[{"f", "[", 
     RowBox[{"x", ",", "y"}], "]"}], ",", 
    RowBox[{"{", 
     RowBox[{"x", ",", "0", ",", "10"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"y", ",", "0", ",", "10"}], "}"}]}], "]"}], 
  "\[IndentingNewLine]"}]], "Input"],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"Plot", "::", "nonopt"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Options expected (instead of \[NoBreak]\\!\\({y, 0, 10}\\)\
\[NoBreak]) beyond position \[NoBreak]\\!\\(2\\)\[NoBreak] in \
\[NoBreak]\\!\\(Plot[\\(\\(\\(\\(f[\\(\\(x, y\\)\\)]\\)\\), \\(\\({x, 0, \
10}\\)\\), \\(\\({y, 0, 10}\\)\\)\\)\\)]\\)\[NoBreak]. An option must be a \
rule or a list of rules. \\!\\(\\*ButtonBox[\\\"\[RightSkeleton]\\\", \
ButtonStyle->\\\"Link\\\", ButtonFrame->None, \
ButtonData:>\\\"paclet:ref/message/General/nonopt\\\", ButtonNote -> \
\\\"Plot::nonopt\\\"]\\)\"\>"}]], "Message", "MSG"]
}, Open  ]],

Cell[BoxData[
 RowBox[{"Plot3D", "[", 
  RowBox[{
   RowBox[{"f", "[", 
    RowBox[{"x", ",", "y"}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{"x", ",", "0", ",", "10"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"y", ",", "0", ",", "10"}], "}"}]}], "]"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"f", "[", "x_", "]"}], " ", "=", " ", 
    RowBox[{
     RowBox[{"x", " ", "x", " ", "x"}], " ", "-", " ", 
     RowBox[{"3", " ", "x", " ", "x"}], " ", "-", " ", 
     RowBox[{"9", " ", "x"}], " ", "+", "1"}]}], "\[IndentingNewLine]"}]}]], \
"Input"],

Cell[BoxData[
 RowBox[{"1", "-", 
  RowBox[{"9", " ", "x"}], "-", 
  RowBox[{"3", " ", 
   SuperscriptBox["x", "2"]}], "+", 
  SuperscriptBox["x", "3"]}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"f", "'"}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{"8", " ", "#1"}], "&"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"f", "'"}], "[", "x", "]"}]], "Input"],

Cell[BoxData[
 RowBox[{"8", " ", "x"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Plot", "[", 
  RowBox[{
   RowBox[{"f", "[", "x", "]"}], ",", 
   RowBox[{
    RowBox[{"f", "'"}], "[", "x", "]"}], ",", 
   RowBox[{"{", 
    RowBox[{"x", ",", "0", ",", "10"}], "}"}]}], "]"}]], "Input"],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"Plot", "::", "nonopt"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Options expected (instead of \[NoBreak]\\!\\({x, 0, 10}\\)\
\[NoBreak]) beyond position \[NoBreak]\\!\\(2\\)\[NoBreak] in \
\[NoBreak]\\!\\(Plot[\\(\\(\\(\\(f[x]\\)\\), \\(\\(\\(\\(\\*SuperscriptBox[\\\
\"f\\\", \\\"\[Prime]\\\", Rule[MultilineFunction, None]]\\)\\)[x]\\)\\), \\(\
\\({x, 0, 10}\\)\\)\\)\\)]\\)\[NoBreak]. An option must be a rule or a list \
of rules. \\!\\(\\*ButtonBox[\\\"\[RightSkeleton]\\\", \
ButtonStyle->\\\"Link\\\", ButtonFrame->None, \
ButtonData:>\\\"paclet:ref/message/General/nonopt\\\", ButtonNote -> \
\\\"Plot::nonopt\\\"]\\)\"\>"}]], "Message", "MSG"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Plot", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"f", "[", "x", "]"}], ",", 
     RowBox[{
      RowBox[{
       SuperscriptBox["f", "\[Prime]",
        MultilineFunction->None], "[", "x", "]"}], "*", 
      RowBox[{"(", 
       RowBox[{"x", "-", "y"}], ")"}]}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"x", ",", 
     RowBox[{"-", "10"}], ",", "10"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"y", ",", 
     RowBox[{"-", "10"}], ",", "10"}], "}"}]}], "]"}]], "Input"],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"Plot", "::", "nonopt"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Options expected (instead of \[NoBreak]\\!\\({y, \\(\\(-10\
\\)\\), 10}\\)\[NoBreak]) beyond position \[NoBreak]\\!\\(2\\)\[NoBreak] in \
\[NoBreak]\\!\\(Plot[\\(\\(\\(\\({\\(\\(f[x]\\)\\), \
\\(\\(\\(\\(\\(\\(\\*SuperscriptBox[\\\"f\\\", \\\"\[Prime]\\\", \
Rule[MultilineFunction, None]]\\)\\)[x]\\)\\)\\\\ \\(\\((x - \
y)\\)\\)\\)\\)}\\)\\), \\(\\({x, \\(\\(-10\\)\\), 10}\\)\\), \\(\\({y, \
\\(\\(-10\\)\\), 10}\\)\\)\\)\\)]\\)\[NoBreak]. An option must be a rule or a \
list of rules. \\!\\(\\*ButtonBox[\\\"\[RightSkeleton]\\\", \
ButtonStyle->\\\"Link\\\", ButtonFrame->None, \
ButtonData:>\\\"paclet:ref/message/General/nonopt\\\", ButtonNote -> \
\\\"Plot::nonopt\\\"]\\)\"\>"}]], "Message", "MSG"],

Cell[BoxData[
 RowBox[{"Plot", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"f", "[", "x", "]"}], ",", 
     RowBox[{
      RowBox[{
       SuperscriptBox["f", "\[Prime]",
        MultilineFunction->None], "[", "x", "]"}], " ", 
      RowBox[{"(", 
       RowBox[{"x", "-", "y"}], ")"}]}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"x", ",", 
     RowBox[{"-", "10"}], ",", "10"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"y", ",", 
     RowBox[{"-", "10"}], ",", "10"}], "}"}]}], "]"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Plot", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"f", "[", "x", "]"}], ",", 
     RowBox[{
      RowBox[{"f", "'"}], "[", "y", "]"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"x", ",", "0", ",", "20"}], "}"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"y", ",", "0", ",", "10"}], "}"}]}], "}"}]}], "]"}]], "Input"],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"Plot", "::", "pllim"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Range specification \[NoBreak]\\!\\({\\(\\({x, 0, \
20}\\)\\), \\(\\({y, 0, 10}\\)\\)}\\)\[NoBreak] is not of the form {x, xmin, \
xmax}. \\!\\(\\*ButtonBox[\\\"\[RightSkeleton]\\\", \
ButtonStyle->\\\"Link\\\", ButtonFrame->None, \
ButtonData:>\\\"paclet:ref/message/Plot/pllim\\\", ButtonNote -> \
\\\"Plot::pllim\\\"]\\)\"\>"}]], "Message", "MSG"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ParametricPlot", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"f", "[", "x", "]"}], ",", 
     RowBox[{
      SuperscriptBox["f", "\[Prime]",
       MultilineFunction->None], "[", "y", "]"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"x", ",", "0", ",", "20"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"y", ",", "0", ",", "10"}], "}"}]}], "}"}]}], "]"}]], "Input"],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"ParametricPlot", "::", "pllim"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Range specification \[NoBreak]\\!\\({\\(\\({x, 0, \
20}\\)\\), \\(\\({y, 0, 10}\\)\\)}\\)\[NoBreak] is not of the form {x, xmin, \
xmax}. \\!\\(\\*ButtonBox[\\\"\[RightSkeleton]\\\", \
ButtonStyle->\\\"Link\\\", ButtonFrame->None, \
ButtonData:>\\\"paclet:ref/message/ParametricPlot/pllim\\\", ButtonNote -> \\\
\"ParametricPlot::pllim\\\"]\\)\"\>"}]], "Message", "MSG"]
}, Open  ]],

Cell[BoxData[
 RowBox[{"ParametricPlot", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"f", "[", "x", "]"}], ",", 
     RowBox[{
      SuperscriptBox["f", "\[Prime]",
       MultilineFunction->None], "[", "y", "]"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"x", ",", "0", ",", "20"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"y", ",", "0", ",", "10"}], "}"}]}], "]"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{"Show", "[", 
   RowBox[{
    RowBox[{"Plot", "[", 
     RowBox[{
      RowBox[{"f", "[", "x", "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"x", ",", "0", ",", "10"}], "}"}], ",", " ", 
      RowBox[{"AspectRatio", "\[Rule]", " ", "1"}]}], "]"}], ",", " ", 
    RowBox[{"Plot", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"f", "'"}], "[", "y", "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"y", ",", "0", ",", "10"}], "}"}], ",", 
      RowBox[{"AspectRatio", "\[Rule]", "Automatic"}]}], "]"}]}], "]"}]}]], \
"Input"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
      "]]}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwtymtMk2cchvEywC2lLlY2FJH2LQ+hWkEhxsUTPDfgATmN8ogmmE2pcnAi
DkITBTwxGRID1o0oYEiDTBdiQF3qEjwwh0xEoEbxDMsMtTEwTXRdlSKKmvf/
4crvy6Uz7UjP/kShUKR86KONe0xTorYcipG9GNM1ICWvl7Zy2Xo+ea3jB0na
RbbwxivVWl+pimzn+dHm7a+19WQPH3iTV/tC20I+5J8ODuufa9vJEd50w1r4
74dP1sPbzlQN5s9/RCqRy2/VPytycFl/FDjnOmxtI1w2EErdAf0/i19wWQk1
03oNTZtcXJbBNLj2D+++V1w2DIV/HTDt0I9zWQPOfa8SM9e85bIRaCrdNhq5
XkFGotw6Yfz/mRcZBcXAY1wq8SYXIqw4Z+dagy+5CE/cx9b5XZ5CfoVE53e7
fyr8jFyM1CeWeRqNklyK0aumfddb/chlmK++Fxy/cSoZDSV3Zw25PidjsPp5
5uuQjGkk8KBzi1dmuJqMxfmDXd9KbjUZixxf82O7fToZh81FpedVDf5kPBbk
zrMnZ31BrsDN6eF+5iVfkitxsa38eLh3ALkKpV6GtL6/A8hVUA6VJBTYZpCr
4Tylq7WWzSQTUDsn0Kc9I5BcA0tDTneWNItMRGbtN3bV01lkIsZWnPRYO4LI
JDiccTs7K2eTyTgRHRXUnxVMpqC1wqzOjdCQqajM2Jzk7daQqVg01NRS2a8l
v0bd3OOt/UkSmYa9V6rrktolMg0pQRknb4TqSCNiC7o3qKt0pBHW2abQPreO
NCL06q9HUzeEkOmwRHQabneEkOnIcfnc6jEwUsB07j+p6jAjBfLLxUTiEUYK
mIXtvupnRgocdJtrLEcZKdC2xPPmWCMjBTx/Tt47dZqRApbbququbkYKNDRv
z/uxh5ECzcX2+IReRgr8HmAZ77UzUmAo0z9v4C4jBfSOwPhhByMFIm0lml+c
jBRYWjHoyX7KSIFkfePZkVFGChRtkzQvXzJSoGz5fs9vLkYKVEwdvlPsZqRA
3ZnmQ2NjjBQ4sc8n98I4IwVOG7PjyiYYKWALuRYc846RAh2uMM/kJCMF3gP9
+TFB
      "]]}}},
  AspectRatio->1,
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{0, 10}, {0., 399.9999836734695}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"j", "[", 
    RowBox[{"p_", ",", " ", "x_"}], "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{"f", "[", "p", "]"}], " ", "+", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"f", "'"}], "[", "p", "]"}], "*", 
     RowBox[{"(", 
      RowBox[{"x", "-", "p"}], ")"}]}]}]}]}]], "Input"],

Cell[BoxData[
 RowBox[{"1", "-", 
  RowBox[{"9", " ", "p"}], "-", 
  RowBox[{"3", " ", 
   SuperscriptBox["p", "2"]}], "+", 
  SuperscriptBox["p", "3"], "+", 
  RowBox[{
   RowBox[{"(", 
    RowBox[{
     RowBox[{"-", "9"}], "-", 
     RowBox[{"6", " ", "p"}], "+", 
     RowBox[{"3", " ", 
      SuperscriptBox["p", "2"]}]}], ")"}], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"-", "p"}], "+", "x"}], ")"}]}]}]], "Output"]
}, Open  ]],

Cell[BoxData[""], "Input"],

Cell[BoxData[""], "Input"],

Cell[BoxData[""], "Input"],

Cell[BoxData[""], "Input"],

Cell[BoxData[
 RowBox[{"f", "[", "x", "]"}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"p1", " ", "=", " ", 
    RowBox[{"Plot", "[", 
     RowBox[{
      RowBox[{"f", "[", "x", "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"x", ",", 
        RowBox[{"-", "20"}], ",", "20"}], "}"}]}], "]"}]}], ";"}], 
  "\[IndentingNewLine]"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData["p1"], "Input"],

Cell[BoxData[
 GraphicsBox[{{}, {}, 
   {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
     "]]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-20, 20}, {-9018.99892979596, 6620.999125714325}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData["p1"], "Input"],

Cell[BoxData[
 GraphicsBox[{{}, {}, 
   {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
z4RCjcsNq9Sz8D8cR8SF
     "]]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-10, 10}, {-1208.9998567346995`, 610.9999057142902}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output"]
}, Open  ]],

Cell[BoxData["\[IndentingNewLine]"], "Input"],

Cell[BoxData[""], "Input"],

Cell[BoxData[""], "Input"],

Cell[BoxData[""], "Input"],

Cell[CellGroupData[{

Cell[BoxData[""], "Input"],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"Show", "::", "gcomb"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Could not combine the graphics objects in \
\[NoBreak]\\!\\(Show[\\(\\(\\*GraphicsBox[List[List[List[], List[], \
List[Hue[0.67`, 0.6`, 0.6`], LineBox[List[List[Skeleton[2]], \
List[Skeleton[2]], List[Skeleton[2]], List[Skeleton[2]], List[Skeleton[2]], \
List[Skeleton[2]], List[Skeleton[2]], List[Skeleton[2]], List[Skeleton[2]], \
List[Skeleton[2]], List[Skeleton[2]], List[Skeleton[2]], List[Skeleton[2]], \
List[Skeleton[2]], List[Skeleton[2]], List[Skeleton[2]], List[Skeleton[2]], \
List[Skeleton[2]], List[Skeleton[2]], List[Skeleton[2]], List[Skeleton[2]], \
List[Skeleton[2]], List[Skeleton[2]], List[Skeleton[2]], List[Skeleton[2]], \
List[Skeleton[2]], List[Skeleton[2]], List[Skeleton[2]], List[Skeleton[2]], \
List[Skeleton[2]], List[Skeleton[2]], List[Skeleton[2]], List[Skeleton[2]], \
List[Skeleton[2]], List[Skeleton[2]], List[Skeleton[2]], List[Skeleton[2]], \
List[Skeleton[2]], List[Skeleton[2]], List[Skeleton[2]], List[Skeleton[2]], \
List[Skeleton[2]], List[Skeleton[2]], List[Skeleton[2]], List[Skeleton[2]], \
List[Skeleton[2]], List[Skeleton[2]], List[Skeleton[2]], List[Skeleton[2]], \
List[Skeleton[2]], Skeleton[224]]]]]], List[Rule[AspectRatio, \
NCache[Power[GoldenRatio, -1], 0.6180339887498948`]], Rule[Axes, True], \
Rule[AxesOrigin, List[0, 0]], Rule[PlotRange, List[List[-10, 10], List[0.`, \
399.99996734693946`]]], Rule[PlotRangeClipping, True], Rule[PlotRangePadding, \
List[Scaled[0.02`], Scaled[0.02`]]]]], \
\\*Graphics3DBox[GraphicsComplex3DBox[List[List[-9.999998571428572`, \
-9.999998571428572`, -399.9998857142939`], List[-8.571427346938776`, \
-9.999998571428572`, -195.91831137026645`], List[-7.142856122448981`, \
-9.999998571428572`, -40.81631486880559`], List[-5.714284897959185`, \
-9.999998571428572`, 65.30610379008871`], List[-4.28571367346939`, \
-9.999998571428572`, 122.44894460641645`], List[-2.857142448979594`, \
-9.999998571428572`, 130.6122075801776`], List[-1.4285712244897981`, \
-9.999998571428572`, 89.79589271137219`], List[-2.220446049250313`*^-15, \
-9.999998571428572`, 1.7763565856349872`*^-13], List[1.4285712244897937`, \
-9.999998571428572`, -138.77547055393845`], List[2.8571424489795896`, \
-9.999998571428572`, -326.53051895044365`], List[4.2857136734693855`, \
-9.999998571428572`, -563.2651451895155`], List[5.714284897959182`, \
-9.999998571428572`, -848.979349271154`], List[7.142856122448977`, \
-9.999998571428572`, -1183.6731311953588`], List[8.571427346938773`, \
-9.999998571428572`, -1567.3464909621305`], List[9.999998571428572`, \
-9.999998571428572`, -1999.9994285714695`], List[-9.999998571428572`, \
-8.571427346938776`, -514.2855673469493`], List[-8.571427346938776`, \
-8.571427346938776`, -293.8774670553996`], List[-7.142856122448981`, \
-8.571427346938776`, -122.44894460641657`], List[-5.714284897959185`, \
-8.571427346938776`, -8.526512829121202`*^-14], List[-4.28571367346939`, \
-8.571427346938776`, 73.46936676384983`], List[-2.857142448979594`, \
-8.571427346938776`, 97.9591556851332`], List[-1.4285712244897981`, \
-8.571427346938776`, 73.46936676384999`], List[-2.220446049250313`*^-15, \
-8.571427346938776`, 1.5225913591157034`*^-13], List[1.4285712244897937`, \
-8.571427346938776`, -122.44894460641628`], List[2.8571424489795896`, \
-8.571427346938776`, -293.8774670553993`], List[4.2857136734693855`, \
-8.571427346938776`, -514.2855673469488`], List[5.714284897959182`, \
-8.571427346938776`, -783.6732454810652`], List[7.142856122448977`, \
-8.571427346938776`, -1102.040501457748`], List[8.571427346938773`, \
-8.571427346938776`, -1469.3873352769972`], List[9.999998571428572`, \
-8.571427346938776`, -1885.713746938814`], List[-9.999998571428572`, \
-7.142856122448981`, -628.5712489796047`], List[-8.571427346938776`, \
-7.142856122448981`, -391.8366227405328`], List[-7.142856122448981`, \
-7.142856122448981`, -204.08157434402756`], List[-5.714284897959185`, \
-7.142856122448981`, -65.30610379008888`], List[-4.28571367346939`, \
-7.142856122448981`, 24.489788921283235`], List[-2.857142448979594`, \
-7.142856122448981`, 65.3061037900888`], List[-1.4285712244897981`, \
-7.142856122448981`, 57.14284081632776`], List[-2.220446049250313`*^-15, \
-7.142856122448981`, 1.2688261325964193`*^-13], List[1.4285712244897937`, \
-7.142856122448981`, -106.1224186588941`], List[2.8571424489795896`, \
-7.142856122448981`, -261.2244151603549`], List[4.2857136734693855`, \
-7.142856122448981`, -465.3059895043824`], List[5.714284897959182`, \
-7.142856122448981`, -718.3671416909764`], List[7.142856122448977`, \
-7.142856122448981`, -1020.407871720137`], List[8.571427346938773`, \
-7.142856122448981`, -1371.4281795918641`], List[9.999998571428572`, \
-7.142856122448981`, -1771.4280653061587`], List[-9.999998571428572`, \
-5.714284897959185`, -742.8569306122599`], List[-8.571427346938776`, \
-5.714284897959185`, -489.79577842566596`], List[-7.142856122448981`, \
-5.714284897959185`, -285.7142040816385`], List[-5.714284897959185`, \
-5.714284897959185`, -130.61220758017768`], List[-4.28571367346939`, \
-5.714284897959185`, -24.48978892128337`], Skeleton[1996]], \
List[List[List[EdgeForm[], GraphicsGroup3DBox[List[Skeleton[4]]]], List[], \
List[], List[], List[]], List[List[GrayLevel[0], \
Line3DBox[List[Skeleton[135]]]], List[Line3DBox[List[Skeleton[58]]], \
Line3DBox[List[Skeleton[53]]], Line3DBox[List[Skeleton[51]]], \
Line3DBox[List[Skeleton[56]]], Line3DBox[List[Skeleton[57]]], \
Line3DBox[List[Skeleton[55]]], Line3DBox[List[Skeleton[56]]], \
Line3DBox[List[Skeleton[55]]], Line3DBox[List[Skeleton[54]]], \
Line3DBox[List[Skeleton[54]]], Line3DBox[List[Skeleton[55]]], \
Line3DBox[List[Skeleton[54]]], Line3DBox[List[Skeleton[53]]], \
Line3DBox[List[Skeleton[52]]], Line3DBox[List[Skeleton[60]]]], \
List[Line3DBox[List[Skeleton[44]]], Line3DBox[List[Skeleton[43]]], \
Line3DBox[List[Skeleton[44]]], Line3DBox[List[Skeleton[71]]], \
Line3DBox[List[Skeleton[80]]], Line3DBox[List[Skeleton[78]]], \
Line3DBox[List[Skeleton[76]]], Line3DBox[List[Skeleton[53]]], \
Line3DBox[List[Skeleton[48]]], Line3DBox[List[Skeleton[47]]], \
Line3DBox[List[Skeleton[43]]], Line3DBox[List[Skeleton[44]]], \
Line3DBox[List[Skeleton[49]]], Line3DBox[List[Skeleton[54]]], \
Line3DBox[List[Skeleton[84]]]], List[], List[]]], Rule[VertexNormals, \
List[List[-0.8944132137658789`, 0.4472066122140593`, 0.005590083453428209`], \
List[-0.8778741655531833`, 0.4788404597501107`, 0.006983091049415855`], \
List[-0.8479618281230767`, 0.5299761505373635`, 0.009274583967365708`], \
List[-0.7807959056814487`, 0.6246367349699123`, 0.01366393051847024`], \
List[-0.5545369160063031`, 0.8318053936759818`, 0.024260994162714915`], \
List[0.4468716051370041`, 0.8937431729841273`, 0.039101269372511294`], \
List[0.9699241133288129`, 0.2424810288380586`, 0.02121709303728353`], \
List[0.9999218841321145`, 2.2202729089684884`*^-16, 0.012499025309288984`], \
List[0.9949994782012015`, -0.09949994798617849`, 0.008706246612889167`], \
List[0.9883498281128741`, -0.1520538175624114`, 0.006652355518854674`], \
List[0.9828579894645619`, -0.18428586994900206`, 0.005375005378469537`], \
List[0.9785398486210269`, -0.2060083899071923`, 0.004506434131768056`], \
List[0.9751255224274843`, -0.22161943503237572`, 0.0038783406834148534`], \
List[0.9723816704828416`, -0.23337160112360508`, 0.003403336304773988`], \
List[0.970138042071484`, -0.24253450936137602`, 0.003031681801290983`], \
List[-0.9061704786554989`, 0.4228795595289259`, 0.005285995259706741`], \
List[-0.8944081677533302`, 0.4472040882303884`, 0.006521727237311953`], \
List[-0.874125705491864`, 0.48562539824361933`, 0.008498445685949263`], \
List[-0.8319890448877826`, 0.5546593686583683`, 0.01213317543826852`], \
List[-0.7069564415565691`, 0.7069564507332677`, 0.020619566151932334`], \
List[1.4589186453497788`*^-8, 0.9990443401596896`, 0.043708195969293706`], \
List[0.9483203403884233`, 0.3161067739746054`, 0.027659346574937464`], \
List[0.9998936801228956`, 2.590245329760384`*^-16, 0.014581784880212726`], \
List[0.9938373389136197`, -0.11042637170710067`, 0.00966230887005584`], \
List[0.9863684115552857`, -0.1643947320583079`, 0.007192270669269152`], \
List[0.9805646348496742`, -0.19611292391514545`, 0.005719961151734496`], \
List[0.9761760692897793`, -0.21692801539772863`, 0.00474530099771064`], \
List[0.9727982237787913`, -0.2316186226476072`, 0.004053326492414794`], \
List[0.9701364329674071`, -0.242534103519505`, 0.0035369562148351193`], \
List[0.9679921361051533`, -0.25096092045242036`, 0.003137011994906255`], \
List[-0.9161458357229703`, 0.4008138044666602`, 0.005010173292628688`], \
List[-0.9079424287896555`, 0.41905035476172503`, 0.00611115190564703`], \
List[-0.8943997983273603`, 0.44719990438809915`, 0.007825999441111267`], \
List[-0.8681920097065335`, 0.49610972542112053`, 0.010852401776148154`], \
List[-0.7998775250090906`, 0.599908150181217`, 0.017497323551968737`], \
List[-0.4468715609734688`, 0.8937431950351076`, 0.039101270076212606`], \
List[0.8937431835753656`, 0.44687158395680826`, 0.039101269346448336`], \
List[0.9998469101191529`, 3.108148962194753`*^-16, 0.01749732337194942`], \
List[0.9922194424612556`, -0.1240274299454187`, 0.010852401716176928`], \
List[0.9838397809280975`, -0.17887995750904065`, 0.007825999291910971`], \
List[0.9777841556504399`, -0.2095251745789546`, 0.006111151823924704`], \
List[0.9734049516096417`, -0.22903645636915157`, 0.005010173219870616`], \
List[0.9701337613117501`, -0.24253344259465756`, 0.004244335790242772`], \
List[0.9676107170110527`, -0.2524201846530495`, 0.003681128234203213`], \
List[0.9656106604781499`, -0.25997209876196153`, 0.0032496517124178796`], \
List[-0.924667623285696`, 0.38074549941690744`, 0.004759319379072457`], \
List[-0.9191298620170489`, 0.39391280348574914`, 0.005744562517554515`], \
List[-0.9103426054083924`, 0.4137921017173151`, 0.007241362760369578`], \
List[-0.8943843930141719`, 0.4471921997722916`, 0.009782330780036628`], \
List[-0.8573963932295867`, 0.5144378404451975`, 0.015004439175713426`], \
Skeleton[1996]]]], List[Rule[Axes, True], Rule[BoxRatios, List[1, 1, 0.4`]], \
Rule[Method, List[Rule[\\\"RotationControl\\\", \\\"Globe\\\"]]], \
Rule[PlotRange, List[List[-10, 10], List[-10, 10], List[-1999.9994285714695`, \
133.16322725947794`]]], Rule[PlotRangePadding, List[Scaled[0.02`], \
Scaled[0.02`], Scaled[0.02`]]]]]\\)\\)]\\)\[NoBreak]. \\!\\(\\*ButtonBox[\\\"\
\[RightSkeleton]\\\", ButtonStyle->\\\"Link\\\", ButtonFrame->None, \
ButtonData:>\\\"paclet:ref/message/Show/gcomb\\\", ButtonNote -> \
\\\"Show::gcomb\\\"]\\)\"\>"}]], "Message", "MSG"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[""], "Input"],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"Show", "::", "gcomb"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Could not combine the graphics objects in \
\[NoBreak]\\!\\(Show[\\(\\(\\*GraphicsBox[List[List[], List[], \
List[Hue[0.67`, 0.6`, 0.6`], LineBox[List[List[-9.999999591836735`, \
399.99996734693946`], List[-9.993865641588808`, 399.50940184851714`], \
List[-9.98773169134088`, 399.0191373528598`], List[-9.975463790845026`, \
398.0395113698409`], List[-9.950927989853316`, 396.0838714369846`], \
List[-9.901856387869898`, 392.18703970399963`], List[-9.803713183903064`, \
384.451168768939`], List[-9.607426775969392`, 369.2105970224545`], \
List[-9.181832858290827`, 337.2242185503564`], List[-8.784442328596958`, \
308.6657080977838`], List[-8.394847023622479`, 281.89382620009275`], \
List[-7.972230616836778`, 254.22584403211883`], List[-7.577817598035772`, \
229.69327819640253`], List[-7.150383477423544`, 204.51193549684646`], \
List[-6.730744581530707`, 181.21169048721987`], List[-6.339309073622564`, \
160.7473581236535`], List[-5.9148524639032`, 139.94191867896703`], \
List[-5.518599242168532`, 121.8197503826524`], List[-5.130141245153254`, \
105.27339678089032`], List[-4.708662146326754`, 88.68599683300188`], \
List[-4.31538643548495`, 74.49024035027`], List[-3.8890896228319227`, \
60.500072377675785`], List[-3.470588034898286`, 48.17992523191658`], \
List[-3.080289834949345`, 37.952741869169046`], List[-2.6569705331891815`, \
28.237969656942415`], List[-2.65079684703644`, 28.106895697033323`], \
List[-2.6446231608836985`, 27.97612665232994`], List[-2.632275788578215`, \
27.715503308540256`], List[-2.607581043967248`, 27.197915603429298`], \
List[-2.5581915547453145`, 26.177376123080997`], List[-2.459412576301448`, \
24.1948408818789`], List[-2.261854619413714`, 20.46394527745263`], \
List[-2.2551649785451717`, 20.34307632182658`], List[-2.2484753376766298`, \
20.222565376560137`], List[-2.235096055939546`, 19.982617517106053`], \
List[-2.208337492465378`, 19.507017922513093`], List[-2.1548203655170415`, \
18.573003230587986`], List[-2.0477861116203693`, 16.773711835781086`], \
List[-2.0410964707518273`, 16.66429921166226`], List[-2.0344068298832854`, \
16.555244597903034`], List[-2.0210275481462014`, 16.338209401463388`], \
List[-1.9942689846720332`, 15.908435132899289`], List[-1.9407518577236968`, \
15.066071093031923`], List[-1.8337176038270244`, 13.450081002340497`], \
List[-1.827149763344723`, 13.353905030762707`], List[-1.8205819228624214`, \
13.258074151413727`], List[-1.8074462418978183`, 13.067447669402187`], \
List[-1.781174879968612`, 12.690335812124797`], List[-1.7286321561101996`, \
11.95267652455279`], List[-1.6235467083933746`, 10.543615657339846`], \
Skeleton[224]]]]], Rule[AspectRatio, NCache[Power[GoldenRatio, -1], \
0.6180339887498948`]], Rule[Axes, True], Rule[AxesOrigin, List[0, 0]], \
Rule[PlotRange, List[List[-10, 10], List[0.`, 399.99996734693946`]]], \
Rule[PlotRangeClipping, True], Rule[PlotRangePadding, List[Scaled[0.02`], \
Scaled[0.02`]]]], \
\\*Graphics3DBox[GraphicsComplex3DBox[List[List[-9.999998571428572`, \
-9.999998571428572`, -399.9998857142939`], List[-8.571427346938776`, \
-9.999998571428572`, -195.91831137026645`], List[-7.142856122448981`, \
-9.999998571428572`, -40.81631486880559`], List[-5.714284897959185`, \
-9.999998571428572`, 65.30610379008871`], List[-4.28571367346939`, \
-9.999998571428572`, 122.44894460641645`], List[-2.857142448979594`, \
-9.999998571428572`, 130.6122075801776`], List[-1.4285712244897981`, \
-9.999998571428572`, 89.79589271137219`], List[-2.220446049250313`*^-15, \
-9.999998571428572`, 1.7763565856349872`*^-13], List[1.4285712244897937`, \
-9.999998571428572`, -138.77547055393845`], List[2.8571424489795896`, \
-9.999998571428572`, -326.53051895044365`], List[4.2857136734693855`, \
-9.999998571428572`, -563.2651451895155`], List[5.714284897959182`, \
-9.999998571428572`, -848.979349271154`], List[7.142856122448977`, \
-9.999998571428572`, -1183.6731311953588`], List[8.571427346938773`, \
-9.999998571428572`, -1567.3464909621305`], List[9.999998571428572`, \
-9.999998571428572`, -1999.9994285714695`], List[-9.999998571428572`, \
-8.571427346938776`, -514.2855673469493`], List[-8.571427346938776`, \
-8.571427346938776`, -293.8774670553996`], List[-7.142856122448981`, \
-8.571427346938776`, -122.44894460641657`], List[-5.714284897959185`, \
-8.571427346938776`, -8.526512829121202`*^-14], List[-4.28571367346939`, \
-8.571427346938776`, 73.46936676384983`], List[-2.857142448979594`, \
-8.571427346938776`, 97.9591556851332`], List[-1.4285712244897981`, \
-8.571427346938776`, 73.46936676384999`], List[-2.220446049250313`*^-15, \
-8.571427346938776`, 1.5225913591157034`*^-13], List[1.4285712244897937`, \
-8.571427346938776`, -122.44894460641628`], List[2.8571424489795896`, \
-8.571427346938776`, -293.8774670553993`], List[4.2857136734693855`, \
-8.571427346938776`, -514.2855673469488`], List[5.714284897959182`, \
-8.571427346938776`, -783.6732454810652`], List[7.142856122448977`, \
-8.571427346938776`, -1102.040501457748`], List[8.571427346938773`, \
-8.571427346938776`, -1469.3873352769972`], List[9.999998571428572`, \
-8.571427346938776`, -1885.713746938814`], List[-9.999998571428572`, \
-7.142856122448981`, -628.5712489796047`], List[-8.571427346938776`, \
-7.142856122448981`, -391.8366227405328`], List[-7.142856122448981`, \
-7.142856122448981`, -204.08157434402756`], List[-5.714284897959185`, \
-7.142856122448981`, -65.30610379008888`], List[-4.28571367346939`, \
-7.142856122448981`, 24.489788921283235`], List[-2.857142448979594`, \
-7.142856122448981`, 65.3061037900888`], List[-1.4285712244897981`, \
-7.142856122448981`, 57.14284081632776`], List[-2.220446049250313`*^-15, \
-7.142856122448981`, 1.2688261325964193`*^-13], List[1.4285712244897937`, \
-7.142856122448981`, -106.1224186588941`], List[2.8571424489795896`, \
-7.142856122448981`, -261.2244151603549`], List[4.2857136734693855`, \
-7.142856122448981`, -465.3059895043824`], List[5.714284897959182`, \
-7.142856122448981`, -718.3671416909764`], List[7.142856122448977`, \
-7.142856122448981`, -1020.407871720137`], List[8.571427346938773`, \
-7.142856122448981`, -1371.4281795918641`], List[9.999998571428572`, \
-7.142856122448981`, -1771.4280653061587`], List[-9.999998571428572`, \
-5.714284897959185`, -742.8569306122599`], List[-8.571427346938776`, \
-5.714284897959185`, -489.79577842566596`], List[-7.142856122448981`, \
-5.714284897959185`, -285.7142040816385`], List[-5.714284897959185`, \
-5.714284897959185`, -130.61220758017768`], List[-4.28571367346939`, \
-5.714284897959185`, -24.48978892128337`], Skeleton[1996]], \
List[List[List[EdgeForm[None], GraphicsGroup3DBox[List[Skeleton[4]]]], \
List[], List[], List[], List[]], List[List[GrayLevel[0], \
Line3DBox[List[Skeleton[135]]]], List[Line3DBox[List[Skeleton[58]]], \
Line3DBox[List[Skeleton[53]]], Line3DBox[List[Skeleton[51]]], \
Line3DBox[List[Skeleton[56]]], Line3DBox[List[Skeleton[57]]], \
Line3DBox[List[Skeleton[55]]], Line3DBox[List[Skeleton[56]]], \
Line3DBox[List[Skeleton[55]]], Line3DBox[List[Skeleton[54]]], \
Line3DBox[List[Skeleton[54]]], Line3DBox[List[Skeleton[55]]], \
Line3DBox[List[Skeleton[54]]], Line3DBox[List[Skeleton[53]]], \
Line3DBox[List[Skeleton[52]]], Line3DBox[List[Skeleton[60]]]], \
List[Line3DBox[List[Skeleton[44]]], Line3DBox[List[Skeleton[43]]], \
Line3DBox[List[Skeleton[44]]], Line3DBox[List[Skeleton[71]]], \
Line3DBox[List[Skeleton[80]]], Line3DBox[List[Skeleton[78]]], \
Line3DBox[List[Skeleton[76]]], Line3DBox[List[Skeleton[53]]], \
Line3DBox[List[Skeleton[48]]], Line3DBox[List[Skeleton[47]]], \
Line3DBox[List[Skeleton[43]]], Line3DBox[List[Skeleton[44]]], \
Line3DBox[List[Skeleton[49]]], Line3DBox[List[Skeleton[54]]], \
Line3DBox[List[Skeleton[84]]]], List[], List[]]], Rule[VertexNormals, \
List[List[-0.8944132137658789`, 0.4472066122140593`, 0.005590083453428209`], \
List[-0.8778741655531833`, 0.4788404597501107`, 0.006983091049415855`], \
List[-0.8479618281230767`, 0.5299761505373635`, 0.009274583967365708`], \
List[-0.7807959056814487`, 0.6246367349699123`, 0.01366393051847024`], \
List[-0.5545369160063031`, 0.8318053936759818`, 0.024260994162714915`], \
List[0.4468716051370041`, 0.8937431729841273`, 0.039101269372511294`], \
List[0.9699241133288129`, 0.2424810288380586`, 0.02121709303728353`], \
List[0.9999218841321145`, 2.2202729089684884`*^-16, 0.012499025309288984`], \
List[0.9949994782012015`, -0.09949994798617849`, 0.008706246612889167`], \
List[0.9883498281128741`, -0.1520538175624114`, 0.006652355518854674`], \
List[0.9828579894645619`, -0.18428586994900206`, 0.005375005378469537`], \
List[0.9785398486210269`, -0.2060083899071923`, 0.004506434131768056`], \
List[0.9751255224274843`, -0.22161943503237572`, 0.0038783406834148534`], \
List[0.9723816704828416`, -0.23337160112360508`, 0.003403336304773988`], \
List[0.970138042071484`, -0.24253450936137602`, 0.003031681801290983`], \
List[-0.9061704786554989`, 0.4228795595289259`, 0.005285995259706741`], \
List[-0.8944081677533302`, 0.4472040882303884`, 0.006521727237311953`], \
List[-0.874125705491864`, 0.48562539824361933`, 0.008498445685949263`], \
List[-0.8319890448877826`, 0.5546593686583683`, 0.01213317543826852`], \
List[-0.7069564415565691`, 0.7069564507332677`, 0.020619566151932334`], \
List[1.4589186453497788`*^-8, 0.9990443401596896`, 0.043708195969293706`], \
List[0.9483203403884233`, 0.3161067739746054`, 0.027659346574937464`], \
List[0.9998936801228956`, 2.590245329760384`*^-16, 0.014581784880212726`], \
List[0.9938373389136197`, -0.11042637170710067`, 0.00966230887005584`], \
List[0.9863684115552857`, -0.1643947320583079`, 0.007192270669269152`], \
List[0.9805646348496742`, -0.19611292391514545`, 0.005719961151734496`], \
List[0.9761760692897793`, -0.21692801539772863`, 0.00474530099771064`], \
List[0.9727982237787913`, -0.2316186226476072`, 0.004053326492414794`], \
List[0.9701364329674071`, -0.242534103519505`, 0.0035369562148351193`], \
List[0.9679921361051533`, -0.25096092045242036`, 0.003137011994906255`], \
List[-0.9161458357229703`, 0.4008138044666602`, 0.005010173292628688`], \
List[-0.9079424287896555`, 0.41905035476172503`, 0.00611115190564703`], \
List[-0.8943997983273603`, 0.44719990438809915`, 0.007825999441111267`], \
List[-0.8681920097065335`, 0.49610972542112053`, 0.010852401776148154`], \
List[-0.7998775250090906`, 0.599908150181217`, 0.017497323551968737`], \
List[-0.4468715609734688`, 0.8937431950351076`, 0.039101270076212606`], \
List[0.8937431835753656`, 0.44687158395680826`, 0.039101269346448336`], \
List[0.9998469101191529`, 3.108148962194753`*^-16, 0.01749732337194942`], \
List[0.9922194424612556`, -0.1240274299454187`, 0.010852401716176928`], \
List[0.9838397809280975`, -0.17887995750904065`, 0.007825999291910971`], \
List[0.9777841556504399`, -0.2095251745789546`, 0.006111151823924704`], \
List[0.9734049516096417`, -0.22903645636915157`, 0.005010173219870616`], \
List[0.9701337613117501`, -0.24253344259465756`, 0.004244335790242772`], \
List[0.9676107170110527`, -0.2524201846530495`, 0.003681128234203213`], \
List[0.9656106604781499`, -0.25997209876196153`, 0.0032496517124178796`], \
List[-0.924667623285696`, 0.38074549941690744`, 0.004759319379072457`], \
List[-0.9191298620170489`, 0.39391280348574914`, 0.005744562517554515`], \
List[-0.9103426054083924`, 0.4137921017173151`, 0.007241362760369578`], \
List[-0.8943843930141719`, 0.4471921997722916`, 0.009782330780036628`], \
List[-0.8573963932295867`, 0.5144378404451975`, 0.015004439175713426`], \
Skeleton[1996]]]], Rule[Axes, True], Rule[BoxRatios, List[1, 1, 0.4`]], \
Rule[Method, List[Rule[\\\"RotationControl\\\", \\\"Globe\\\"]]], \
Rule[PlotRange, List[List[-10, 10], List[-10, 10], List[-1999.9994285714695`, \
133.16322725947794`]]], Rule[PlotRangePadding, List[Scaled[0.02`], \
Scaled[0.02`], Scaled[0.02`]]]]\\)\\)]\\)\[NoBreak]. \\!\\(\\*ButtonBox[\\\"\
\[RightSkeleton]\\\", ButtonStyle->\\\"Link\\\", ButtonFrame->None, \
ButtonData:>\\\"paclet:ref/message/Show/gcomb\\\", ButtonNote -> \
\\\"Show::gcomb\\\"]\\)\"\>"}]], "Message", "MSG",
 GeneratedCell->False,
 CellAutoOverwrite->False]
}, Open  ]],

Cell[BoxData[""], "Input"],

Cell[BoxData[""], "Input"],

Cell[BoxData[""], "Input"],

Cell[BoxData[""], "Input"],

Cell[BoxData[""], "Input"],

Cell[BoxData[""], "Input"],

Cell[BoxData[""], "Input"],

Cell[BoxData[""], "Input"],

Cell[BoxData[""], "Input"],

Cell[CellGroupData[{

Cell[BoxData[""], "Input"],

Cell[CellGroupData[{

Cell[BoxData[""], "Print",
 GeneratedCell->False,
 CellAutoOverwrite->False],

Cell[BoxData[""], "Print",
 GeneratedCell->False,
 CellAutoOverwrite->False],

Cell[BoxData[""], "Print",
 GeneratedCell->False,
 CellAutoOverwrite->False],

Cell[BoxData[""], "Print",
 GeneratedCell->False,
 CellAutoOverwrite->False],

Cell[BoxData[""], "Print",
 GeneratedCell->False,
 CellAutoOverwrite->False],

Cell[BoxData[""], "Print",
 GeneratedCell->False,
 CellAutoOverwrite->False],

Cell[BoxData[""], "Print",
 GeneratedCell->False,
 CellAutoOverwrite->False],

Cell[BoxData[""], "Print",
 GeneratedCell->False,
 CellAutoOverwrite->False],

Cell[BoxData[""], "Print",
 GeneratedCell->False,
 CellAutoOverwrite->False],

Cell[BoxData["\[IndentingNewLine]"], "Print",
 GeneratedCell->False,
 CellAutoOverwrite->False]
}, Open  ]]
}, Open  ]],

Cell[BoxData["\[IndentingNewLine]"], "Input"],

Cell[BoxData[""], "Input"],

Cell[BoxData[""], "Input"],

Cell[BoxData[""], "Input"],

Cell[BoxData[""], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"For", "[", 
  RowBox[{
   RowBox[{"c", "=", 
    RowBox[{"-", "20"}]}], ",", " ", 
   RowBox[{"c", "\[LessEqual]", "20"}], ",", " ", 
   RowBox[{
    RowBox[{"c", "++"}], ";", " ", 
    RowBox[{"Print", "[", " ", 
     RowBox[{"Show", "[", 
      RowBox[{"p1", ",", "  ", 
       RowBox[{"Plot", "[", 
        RowBox[{
         RowBox[{"j", "[", 
          RowBox[{"c", ",", "x"}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"x", ",", 
           RowBox[{"-", "20"}], ",", "20"}], "}"}]}], "]"}]}], "]"}], 
     "]"}]}]}], " ", "]"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwtmXk01c/7wO2ufb3WhGvJLq7tSt1HlvYSSpaQLSTJln1LUrYUopKkkKS0
CKn3o6TCp4Qoyp5sSfasX79zfn/NeZ15zsxzXs/MmZkzsi6nLN2ZGBgYmhgZ
GP6vjfy1b2ptjYpWYRPfo3NrcShcZLZrmYo3wl/4BGfW4n7+nvnn/6g4r5nq
dSqlFmVofiunpqkYvdhc7BlZi68vXib1DlHxmeBtasjRWiRpdGzE/6hYpElR
5tpYixmBzntirlNxVVycY/UW4n3GgDsM+lQ8tuNJOpsDgazuO7TFj2pjVINr
qmDUCxT6+tbndroWpjqrkRvUK9HyzTVX5YbNGPXUf1uE9jMM/7PV59KAJnr5
Kvy6T3+MlWeueT88oIHBq6nbimIf4v7Lh2RWc9QwkUt9D3N+Ce7Ifbl/57gK
bp9pq6u0LcTCd6HtAfbK6JRi/My54TY6xmeQPxVvQh7ln38OEjcxypm5jEtI
EU96zbmUK+Ygg7o0YXJOHl89+EoJsMvAzqSc8/e/UJBaJCL+80Uatr6VKXX+
RMHR1bfxErlp2LRW1Ez+QMGOdCNwjUrDVwEV4jE1FDz5Vy5NwzgNb9u33rcu
oGCshf3I/Xep6K3K07ziR8Ezh7wDjL6m4FJDjJgFNwULns6vJLEn4wZOz3sz
22Vx31Xj8dzcRHR81ZRMMZJFWa9etZ2xiZjvr+VnoSuL4uJ3PdjdE1Gxa1Gv
dJMs/vbuLapTS0TN0pQ6V25ZzDHsu0R7eR6373/S0/JFBm882BjO1p+AXpdX
yeWeMnhsVTZ/wfAcntBVYe3aII3OakKVuUpx6M9aVRTMJ43cDa8eVgrEYdiX
HbsFmaQxyctDaGgxFi8Guaft+rURP+rEM4X8F4slz26JV5ZvRM7S6eozAbE4
oiuqkWm+Ef2unfLpfR2Dx/VYbA74SWEJkSqzpzsKXfW7i9+8kURS0f3ckflQ
9CjWP2z+XBJnlv5ouX0JRW/xdOYPJZLYd2Pzm6XHoei3ZOL4MV0S+91XymJ9
QzGCuCf0zUkSP16U8/k1FIIZO4KiJpYkUK0lM5r/xxmst+G2FteRwEc/H1Iu
dAfhh/fujDc2SaB9XaBBChGETTSibKOkBJ4kjf0ovRWELZL+HPJMEjjjur1k
m2sQ9vR0vNJoFseW7kXS/ZFAXDheoGzqI45xmQl9N5YCUCXEcM33jhheyiwU
yaT6I/7YrzKQJYYLz0b688j+eNjE9ZDNhfX+Kk+fD/OnMY43+T7dVwxt2L9G
hNScxm93ftjwG4jhftL9JdMdpzHxc8yj8kZRjFy48fiiix8Oqbw7NjMlgtdL
2eTqHU9ixKWuZM+fIkhr071mqXISBef+PP/eIYLHLlf8EpvzwW21Yrxva0TQ
jlsp3TLVBzNtvKszE0SQN0V5Irj2BJrG8wjpS4jgE//rVt7a3pj/w6ou1JiM
gza9A5rbjqP2oPZimw4ZKYuLgnVCx7FuVGDzZiUy6kNz2PkRDxya/3R9iJeM
uxLGMq9neqCK4N4Aq+/CKJNX4jL3xx0fm5tS1M8I4zHVkBvHHrhh3UOdmN5S
Iewar3rtudsFD1UIVWy5JYTJbCnyFQouOFQzNZZ1RQhD9GU/aDK6IKnhkc2+
MCEMfvBfeFHlMdw3qKZZvUMIV1OX/9xVPobtYgrdV/oFkcmix7ZByBl/xZKN
dogJIreAaYMIvwNyRj78c4VTEGP8lVfUmuxRI2RXQe+yABYq8W+6k2iPwb6R
nGF9Atj/q9H3KZM9stn//FpaIoBfWdz1Di/ZorzOsyDBrQII+51HvFZt0GXI
+uGPY/yY1pi2oLrbGhP6JlxUrPmxd1jGbFzAGku+J4qcMefHOCY2BrZOK5xq
qYnkV+XHsuiKT6YnrJApeld2wjAf7p0Ro4+kWyJda+TzQR4+3OmgmJ/9xwKr
M5XMhg/z4OmiP2IdX/Ygyf6XK6MRDypxXb3nF7EHD8sUxknI8mCwWuHGYrk9
OFUih3vHuBEyS39PBOxGZdy4pTyaG/MiN9/9JLkLs0eFtcKKufBVzvvi0ERz
HHrYeuBKChd+vFfEVmNgjjpBl31L/blQU/3xpswRM/y0xlfabcSFFuGLoxz7
zJCNzLXJ5DMnijzRWJ6UMMUgOqMU9yIHLsd8O3OwxRhfs+AWhR4OZM9RTWtI
Mkb+hii7bXUcKNfps7PVzBhLrZev+qVy4FDdya/pLwAHveYFv1A40Dsoevik
PR0tM36Tbu4hoYzmoythR7bg5pFvM5q5bNiuOVOnv1EHAyfVlUXj2TCmdWIl
vJqKlfOxR1e92TB9S1Zgvg0VjdlU6psM2LDr6rRuSoY2WsqFXfVqY0V5GqW+
VUwLg45KGBZwsWIp0rjnMtSw2s3X9+IUCyZYVlxYGFbF1ROvb5/+xoLg9tGu
cJsqJoR5c0ERC1qe61NfnVDG7KvV379vZ0FDDXbBYNdNWP3ZLlokjBntbo7d
3X6Ngqtfy56sODOj4zjvk70kCm7vZRoe3MGMPuV846NnZLFxosTiCZkZAzdW
i3bby+B3riVZi3ImXBjec+u3zwZcM7ted2GYEdWURrXsvYXRdN+fBb9PjMgv
8zIg54wQJlqbqB+pYESjmY8vP58XRH7XsUzFeEacVGtuly/nR0rMluNvpBlR
Js6JQtrPiabVXRwrhxmQYdTLMDRwkSgruUt7t4UBZS4v8HXJzBNi1095pcsw
4COpF6LHOqeJ9nm2y3va1oheRbrf1pFRQiH8MH/u4irBUL5qomX6lFiwHz2l
VbfO/AmN3pHV9CajqE9vU1YJjPkiySHVQg9cvZs6IbNK9CZMi2fAIP117Cw3
7FghLqlZslfVzNCzXC74tPGvEEqyWdWrpvN0LxOpJs/OZSLR6aold+0/Oj+r
WVL6yWUCWVL1qjNW6U6JGRwDV5YIGQba0uoXZtD2UvI6c3SJGFQaWOIbZQG2
3TXvuTYtEW3GxTP0BVYo4xo8r1O9SFR6HTsowUyC5VQqW0LvP8In5/ae861c
0HzqnbtEyT/i+279fMcqbiiwsH9bFvCPQP2CmbQcHtgteDa+g209fqRbdOMu
Ptg4LTJ4onmBiOlNbTPl5oep1hIThmsLRPty4lG90/yQk9nCpKy+QIzbLp/u
0hYAn2APl5dz617l1R2z0gQAbBZrD+I8kV2+qen6iAAMi1Fiw6zmiTDlkYmM
TEHQu3F6rTF0jgjjL8op+k8IOCNZnZxN5giVUM1uKbIw/Dia82qGe47obHDa
tGwrDPHStZFSt2aJ1S2bLqx1CcMRhkM/yr1mie7BICY1cTKo9Q0bmVNnieQL
XcafrMjQept/2bd+hpD/ZteWWEuGwrN37JkvzRBhPGqJhTNkCHMzeHHVdobw
sTj7ZpeCCOw3a5JQk5shnnrU6AVbiQBF0TkMx6cJFjL1sma0CMyxzXyzrpgm
BGVMEkKLReDDr/O0kehp4vLenW9sPomA372HCwJC00TVhvxvPWRR2Mzre3Z7
7xTRN8BTdIEqCn/91XgDHkwRMn23+uQOiMLjjtHsgrApot5//kK5pyj4G92T
a9sxRajMl93SjREFav7xMhbyFJHX5Kb4JFMUZlgVabr9f4nQgxWS6vdE4an3
4Bv3h38J7kGILawWhaBPt/dnRfwlHvbn21AaREFP59i3+l3rfD84r6BDFOay
pd3mRf4SbrkOtuoDolCx8mNi0+AkQRH5e+71uCiccbkReqR8kjAK/KzgMSMK
Bu/sWC5ETRLsItdpkouisKAqnla1Z5Jotx2rHVwRhapLHeKjYpPESq4T8XZN
FKZHVXfpNv0hWiBTu3adA58WO2Z5/CHu3FLe0LkePxepEDjP8IdolKyOEFof
78yO2xeOXJ8gbvAPWvutz7fAL51XpTtBeP4wvTu9nk9o5/WnEs2/ibjeUN9b
6/kuFog1hHv/JoxDZMpDv4pC+MnMnu8sv4k5pvaTcY2isKwnOLs1b5xY6Na/
+7JGFCIZ0jjzaONEtveAjUapKKx+4JJhaBsjNFiCEzpyRCHmSqLuMd8xgoMz
RavmnCgwHmXd85o0RkR1vrXtOSUKcYpxznIFo8RQ68s1kyOiwDK5GhS/dZRI
tRaU/71NFNjOLtwy9x8hFt3MR8XYReH83qCKIu4RwqXcOSV/WARIIlONpKJh
wnF1b3nYexHgvDc219D1i3AQEohSOSsCSf6e3GrBvwhStpwSu6MIcBv9lE3h
/0VkZUUeAn0R4PvUvfeA2RBRHBZp1DZIhkvZ9i6Pen4SbRsc53WqyCDo8vWM
QNhPQvvxkv5qEhmEZz/fbi0bJNo0B/a2q5FBTPLtgo3YANH1Lqd90l4YcgaN
ease9xN11tnNI3LCIFH2Sk5iXz8R/W7bIddRIZAyrtz/PbaPqO5YYBj0FwKT
j4d31bb3EJ4zNtOn/AXhsIdcfkvEN4JSHPifpQY/XDwdkHj52Vdi58ZC4azX
fPAy4s0py4kOwjeItZxRkQ/kr7hua3FqJ6IdPKedf/LAFFHQ9Xl7K/HU7hdn
tzkXbKTuVLst0EAwxHAPvc1hhXO7hhdlz74nLA5wR/F1ssC4U+KH/Jl6YnZD
PqEhxgLVye898jveEKkW5n0sqUzwoCl9u/GWF4RQ036yQ+0qfTI7x+1vThzh
6c5T9nHfX3oEU8ZbcwMvOq/tm78fNvyha1xzfSesl0Y/9uzCrudZY3Qr6tea
BOM79IB9LvUaQYP00x4nRuoyKujKry5dVYl4R2dgeLbm+uodXeZ2Y1TNuWHi
XdO3i1Srr/SblPtJFW5s6BnS+c5e9Rt9zqrrWeBFdiTJd7HEM3fSjeXMRaLL
Sbg7/HtU25Muul1KUoY9Mxc2Kff4Bwn30AVUydu9nvGhp4n/g67RfrqpzqXc
7YXC6HPrTKZU6Qi9+meUoejFjWioXvvY4uo0/Xfja1nNo8qo29ae9erDNF3s
oH5oS5Eybg4fD1NbnqY32l6+ajuljIofRE1Ix2boSidEdvOcV0Ehd99WQmWW
bvuGz7evTBXHb0jOaLyaoyfOXfozPaeOedzBujw//9E/HU8Z2KqphdeeJImH
iy7SuS3EmJwPamGWXf7K8K5FevKBmESHAC1MLm56W1e2SGf+FPijr0ILQ0zl
DkeELNHzvJskOYzW7xsRzcFjXCt00pjEBYVtVGQKJn93E2cAxzp7qYANumjn
XNJSqcMAbQfjzjYZ6uLj3fQP3BYMIOF5Taz7iC66SHtVPE1ggKniKUHFDF18
/b7mEssMA2BzkrQmux6elXQzu/OREUKcCyytu/XwO+u/LQsj6/y6JAnn9VBn
MkV7L+v6usj4y9DOr4+Ddc+lZ7YwQTZz+sCCsT6a+nItmtxjAkdnJ2eWW/rI
Uvu4bOAsMxx8GTHlvNsAHe7vuKufxww7vU1aJ48a4NPM79eTqpnhm+/VFYnT
BujmzXaB+pcZni4Y+htmGeBbITvXs44soOZW+TipywA3rk7YdoSun8ty2s9b
xwwwePishWomC2ip9yaVLRmg4ssHW1sbWcA6V21ETIKGCR6MYnI0Vnhv/Gl3
4UEadltk8Z6xZgXKI2qxtyMN9baosjaeYoXoowEO1d40HOI7NOVfyAryfzq4
F2JpuG1xZLi+lhVsLhWqDCbTMGswqkfiByt4jRb021yloXlVcdNrITZgMoly
aymh4c2CrW9ENNngzCqLRccTGs6ltFR572aDO+M84s41NNwfcvzRK3c2WBs7
2XyijoaFLsuFgrHr3Pkv4V8jDVf3pud63GADyeyEfaRWGh7WV8yofs4GDYwj
Ole/0bBM9sVF3lY2iJ2b3Xe3h4bs3BaxLhNs8Nw67p7WTxoe2WSHehzsYBdp
sig/SsOS7W5rnPLscOLgvuCcCRouH/Xd1rONHWZFD25JnVrPJzQk8oktOyyK
MhxnmqPhrYy4mvOB7BCfzSU6u0DDqYfJS/Zp7JDVK+/lvkRD08Ysw80l7GCo
vxJmubLuY+hWKMtbdggaMPN+sUrDYcb7lV972GGv2iPrvDUaGko9my9dZIf3
R37brKxzsgGhF0smweTDsvS2de62+hB0aDMJ3ofclZZf582nWp8q7yGB7WKc
9Nj6+HEXf0yvuJOgKHyhTGmZhm13f2m3xJDghcnzsa5/NFSs/Xu68DoJbuT4
TTPP0zDk+9KjsAoS7K/7MpA3TcOGedbJ/Z9J0MmZ3Vn2h4YbhPg15cZJYPbU
c1ZzjIa+GhK+82wckMX+7yBliIa4S/5BoywHtO1Z5DnXS0NBd43xPCMOYHkv
tcOmk4ZuMQaqgTYcsPmNsGT2en0qrm/33unPAQ7xl4rMm2hIer733oYUDkix
3M7psl5fu5bDw5NFHPApsMt55MV6fUknPHJ+cEDG50Rng3s0tJAPuntygQPk
r62Zrt6k4W169KCxECd8b6FkqGXQ0Cz4isvoTk7of0QdeRWx7js9N/+VKyds
GTyrIuu37ru0qPdyFCd8KTDbN+yy7nfgheOWp5wwOdD/IN983e/q21y+T5wQ
MiWz6bL+ul+J5u8DI5zgfC9zYWDTuk+LQbtkaS5wVBuWKGZb9+kzkeNsyAWx
CUpFYrMGGHJ+4avOIS6QvuvG9KvfADe84rb5cZEL2vdk3sipWd+vqrpWGnNc
sMxslLfV0wArzOmXmQS4Id38Vf/ZgwZIctn1uV2VG1rP1ffLGBpgafbRA9HH
uCFYRCPNnsMAZ1gT9jQ3ccOo6cuv1Xn6aC576eKdX9yQrdVKv3lWH7ONrn0I
YeIBJat/Fp899NEooGyHrAEPMBzcMkxR1cezve0m/gU84LD8T9n+vh52V+05
GVLDA6jgmvc7SQ8Nr2BW1Bce8Gbtv9x7Qg8nzUpGLrLzgufHLPJPZT10vB+Z
VnCCF4bbyYHWN3WxOn6q8l48LzgyedS1h+oi2fF4/8NcXqgrf/7libUuNvEf
1K35xAumZ784hJN00TBYvquNygeDoPNL1VMHsw7ksHTt5YOPXR+U/bbp4F8l
Xo0+dz5wfL/Xj0NYB4u75mN+X+UDjchLKgYvqShi3KjItswHGXd3bvNnp+I/
VlqVpAs/mPqZ61SGaWGh//R/N335wVE7Ln/OTAutex70y4bzg39fXHYUvxY+
qqRwK2Xwg/PvnWaeBZvR4wS3k049PwSKbSdJxWpiW3MPyz4VAfD8cPUz10NV
jNt6TbxZTwAM2A/U8Gio4uYSaw0rEwF4dIhen3RfBZPOfrCxdRCAI1MVYXP5
yrhd70mJe6oAMDQEGjpGbMJH1xMsoqYEoHmSqNQdomCjUMIvPgZBiG/MVt9C
p+BQ0rmofB5BYAn2P3w0SxY3RMSX1ikJQtO5VP/JbTKY6BBH4nISBBKc0N46
JYHOUlF4tVEQYiZjJJiBF8MzI22UvwmCTAFXWccmLsziiZyoHhKEyd2r8/fY
Sdi0Er6hm1EIbhU99VR5yIgG3aEh8gZCgHtttusH9BP8eUGby+8IQYyYdel7
IXZQFQ16t/3xevyrw1MJDznBPC3QsY0QAouq5Os1VrwQER2QPN8pBPy4XPal
UxCGnU4PbxUQhmGO1ndafhKAMidvNUSus4322RFdBTh1241/8DAZsqTM2sh+
VEgNzbmR6koGksvjQokVKpRZfFSi+ZHBWYmbWSFJByZW9Y1TL5DhvXay1b4S
XfCx5/I3qCGDH+sfZcZZffAWftyaLCsC23+8PXqjxgg8EtaydMdFwIk8qzeW
bAIJR3XkehdEwKS3oClq0AQKdbweXmRdfxc0uvHlG5nCz/6Wdz0bRWFnjIz4
lQlTcKMXLlw4KAr45mqxvq05uCzsteuuEAXtzzv523ftAkfva1LnY8XAcvK/
90zXD8DSN46Pf1PE4Hmk/uo5RgvI3hUa5XBtvX+Js7tN1wI+Kx3p0XoiBnqZ
VDnLPAsw/UXO/z4oBkvGX+9/CjoIym7p8to7xaHvVMfCymYrmDmaqPqDVwIa
88czjvUdhkv/zXftkJSAv9kZP1ilbUB96/Hkx5skoMGIlbToYAMeG8x/nwcJ
UDGuetbyzQa+dTI/1PaXgErDKofdHUfglU20duIXCUjri5EM67ODCweDadQb
ktAa53uKrOMEl5tUfErvScKR0y9LNsc5wY0dPTcVnkvCcnnKlUfNTvBo604W
sRZJEMuJvndK3xm+Kkt8WmbfAFLPZI6vdTiDEtMrt/qADVC+N/XPC4oL1D9m
vWS7Rwo6w6O+nu5xg2b16tctR6SgXmmgnZHHHTqLfWf3eEgBf75R7TtDd5i4
2WG3LVYKOEICm2az3EEk6Z6C3HMpKDx6rufHQQ9wd933YpyyER7PZ3PPfz4O
LMKZQ9GLG2F6eEJBZNkbBCeieAXZpYGDsbtOWP0EyL731LsjJA0NCqqnzRxP
wLYIo4T3atLQuXN1/9baExA6OKAg4CQNMz8c71+44AMTT7Xdb7+Rhn0X0eye
nC+MqwyfdjGXARk+53Arwg86Gs9NxvPJwscBXLL1DoSMbblmh0RkYfEUnys5
ORAsy59eU5CShdb6pby/DwLhY9aAab2KLBjnr37hngqE+mPGOezmsvDgdv/n
T+FBUDG/bHwxQhby7jQzZWYGQ5Zc4JW0EVnYyXVfJL4/BA6Fu+hde0MBj6vJ
p6k/IyErV5ht/gMF9CKfSnzgjoJ2ov6LVTMF6hzu5kXpRMFhFtUgnh8UuGOh
fnJXfBQcSZl+EjNHgaS1QU8nhWiwy4vXOq4sByIpz6oa9WLA+U2hmk6aHDgU
7FAzT4oFH64xykc7ebD5Lw2zPOJhLLSaheuYPNjnTWoKR8WD9/CFoR3H5eHl
NnmX25nxcPytUkltgDxEkN8q/K2LB5doD61nyfJwyF/3wxH5c2A73Ue/8Uoe
Vl2Fwg8NnQPzrq8O3hQFqFjqcFA7cx6k79dnsY0qgOJtyr3U/y5CeKWJFd/1
TeD0ufjqvvh08Cv0qdDTVAaZDkG1bKYs4GbSd9H4qQJVX2/S9O5eB7OT1pkq
V9QgSYtE42HMB7EqqVNm8hoQvh2sSY534LJ/YvrmDk04+uDjr96QYrBMOKCe
W7EZvsw0tx1/XQoq9vGH7kRqwbk9rCeeP30E7UMct68c0gar5/JZyVFP4KPL
T2NBaSpUuR5Kt7CvgD6WooVMChU8eGtsHnpWwEyh50NxRSr4nZBzFAquAPGx
sQ2y6lT4j8ymOXapAtwCpuY1t1Dh4obslW/1FbB4du3BPhsqTJxp13pGfQ6K
d8UlLqRRYSZzgewlUAm0HV3N3Feo0FUv8eW0dCXsHblx/lIWFSQDm2ai1Svh
tLrM7NVcKvRtmLQt3VUJNc8UmwvvU+FI9rMOs7hKsKynJtS9o8KXGplzETOV
4O45a7SzkQqvlSzfdTFVQQjn8+nGj1QgBduFgUAV5O43PNb6hQptKYz6EhpV
6+c2GPUPUGF/geImPs8qWAxhmnb/RYUnnMnc14KrgEey7t7IKBVmWce9Vc5V
gbbTDtG/f6lAS3+QZX+7CswYOT4Gzq7nxyPmsfyoCo4UNMQvLFDh1nzq49tE
FXibJW+JWKZCbZ1I5P6PVfD//5Vwc+xJ/dr3KvgfdnvOdA==
      "]]}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwtlGs0FGgchye5h5QdjeQuMo1L3k3rsvW3Qzpnl2Riw26XQS7ZTDiqVarT
oLArhhLmtHKJdNHWhJB3Iiwa1mQ0jVtvDJW2yVDWVrPtOfvhd56Pz/PpZ8VO
CIpSo1Ao/p/3H49P+c+qVAhbtn01rkoTYnmq8bzsA8LH1t/YffewEAcYjr2v
/xvhQZ7NSDxHiC3dOR8TlAjnRBo8le4T4gdZ+drjcoTfaUyIb/sIsbbTkDl+
hLBoW25ntK4QFyTv/fZkCcInRZM3+goxrl2SVEHZhPD922v/2RzaijWi/FxN
fnTFPYGs19r7m7DRk4fxl/M24AbzDjwoqMdBbcURDt0uOMbVY+U62h2c+ubr
+HPPnfE1gb2pBqMONxwujru53Qnni+/odmvU4ID8YMtPFxl4drV+wCXjMuzH
bwnYNkPHzbK+1aqifFzVeVSSFO6AFUaxPzOYHLybW0Dtq7bHCrsDqlR2JqTt
XXpjmZEd5lQrijyji4HiaNHKTLfFDJYRPy+2Ap5mX8ysHbTGlKSmTwle12CN
bkzN3DdWOKdoJqCi/RYc2EjXkK2xwJraalPpjQKI2DRa3dZmips3GC8hJY1A
P+KhOlhBw0X0SXdPzxYoG2G1H/Wm4reh/BFuAYapU1QvP9pKbJtRef1l7AO4
V7jOdzpEHxcsKqyy97eDywvpnDNfE5v3eg5Nh3aAzz2ZzscQCvbQmDB9uL4L
ODU3F1YYKVt/zehTH7bthpD9NmUDx6StiQm044c+9EBnrzQLsZ5sSRbsdWvv
fgQejsLfAy8ot9QxZ3g7cB+opVCHI00o0FIah526+0FLL/AU+y9NaG2i6Ax0
/gmnxyXMxHJ92H7WeFaMB6CuJCMwbXYFVOvKrKk1Yki4HGk4EUIFMxdhpbLi
MeyOKzbLPEWDMJ0Qzopzg3B2R4o7KjUFu7w42S8pElD/olB+YtEcDFp+K7rC
GYKhnnQFd7kVtJam8ylhTyA4le1W3GYNWZY5c+9CpBC/7JW1KMwWLHd58xjM
p2BR23Fe8+Va8NmcMoDpMkhtYLKWl9gDt6s3YnbtMHCq4u+6OTtAjuaAV4Th
COipbWI7TdKhbnoh+pDBKPj+tLOQzmMA++glNKo1BrRGswRfWycYbZnbmqUY
g/zEM3kuQ87gId4oiU0Zh6CM7Y78uy5woKyL4TQzDvRwbnDF8Q1AtpaIy/Y8
A4lc5zIv2BWi76fZTAw/AxF70nulBYL+XPdVHTsIPFO/slBojWAnaf7UxyIw
VxVz08QOgfRLkEuDCZi8erXGyhHBmHSr4HUogcik2ffOnggUNjtZVDaBxdOq
6/7fI1jecDA3MpGAXaXJ6rO5CPzHy7WW8gi4+8n69Xiffa72b/QKCXz3ojTz
3HkEwelXJcYXCBxytJy/wEcQTr9VSS8h0Cyw66+qRRCffJ8ZVE4gqANltHci
yNaWnii7TSAqZt5rWw8Cg/AfomsFBI7o1it7RAh418cCBPUE+AEe+8SDCC4G
yc3+aCIwLQEv8hzB1VJlk6Ltc+8RNWXUFALHNynliw8J6Ju217x4iaDOezFL
vYuA6x6/VW/fImiUU8JovQR8l+iIkucReLlzva1FBHaVd3MXFhAIs7UcGP0E
4nxzPI99QOAzmmXoNkDg//+CTheDhS2PCfwLjUBdBA==
      "]]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-20, 20}, {-9018.99892979596, 6620.999125714325}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Print"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
      "]]}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwtlH0803kcwJfkKF4luWxTHpu4bda+rzjy8EGLq/NwRNJVbh5aUh4SOiEZ
oq6icIYrLKVVqlP06LuIixIr09riV4l5OJ2ns/PidvV63R/v1/vf919vM26M
f4QGiUTy/swXpw56T6jVCN+b3v4h3UqMB1K+npbPIUw/TqeOmYqxz7K+mfp/
EC6lqP1/pIixqUPsfMwkwmmuwsff6onx47wCbWIAYbfcsYrxCYy1mT2r8XOE
24wzQ8MeYXwuIXTL0VKEFR5X324KxFi04KCQZI/wrMV8LVWrES+K8GSTd7Lx
hdrgvUcS72OD10+iK/PXYdWtpVmbLBqwf5MgzLqNhS2T6qyaiDqc8sk5+swH
Wxx/ap+Av+0mbkgSRNX6MrHcca53l+FV7FMQaPpvCR2vUHOsXcaE2LP8oY/X
qA1W5Uo1FnWV4urWw9KDO6wxaWjV4cgDv+Bd/HOGLy5b4aNxhpIiH8BpoQuv
LzGgYUhVn/DKyAUSw6TRI8sSJ6+R0SZxCbw5UZIj6jbHo+frwlaOVYHxYl7N
lLsZrnvIiXl/7ArsW2+zSG5sgi9Qtv+ZL7kBYfa9l5uaqLig0MyYFFAHNsmO
6gNCIyz59ZRSs7geKt4GNB92M8RTXkP9zWb3YTDD0MnTaDnmZijTqLGP4F7h
Wo4ySA+H/B4lLNIQA2tINmVbroWLOcOclubHsPGeXGc+iITnqE52Yl4zxNbU
qvQNJhslf/AfkVktEBRpUSE5ImvsuHu+0FnWCq3PZHko4LVraJuHtfbPT8GR
Ib7lVzzpyr3Zu5Xl0g4aiYaKcDIJ8hRbXlj0P4OvdP0yuGNaQOutfZdwrQMy
CalHfJUeXEn3Cbaz74Qbpdl+aRP6EMhmDhZrd0FMZfiy/iBDcPDTcb880gW7
ogSrcjKMgHXGe+NvjRLI/SHRAZVRYXy3VLjn9EvQXFE4kD67GkYFIV19sa+g
pz3rL/5SM5id8bzo7NENgSlcO0GTObhiFmezlRSil4yYd4RYQsmVYyed5qRg
Imop0hpeAw8tyWyN5z2Q0uARsLTUCiiLRVWJta8htjr6jp2tNeTpVz/oPCYD
XQ17LvOjDbD5ZRWyPW+As39roc1ZOgize/pve8nB6O6qGI4lE+iilBdJFAUU
xB/PZ/XYwrAjNVs5rwD/bF9G+R0WPBi16HeRvAWbHfxAYeo6CGHGXeBV9oJ0
QKfybCAbmPK7a934fdDB/ei23ATBku71V9O/IeCd5iVVoTmCa9t4jCAGAVPV
vFoyDYHvG8F1ui0B5JERYzMGgvw+9Q0Zm4DwgxMzthsQGA0/vY0cCZjNVF/z
3obAUr2zcdCLANpFMiX3NAJn62yJbyQBDp7yTt2zCHpFDQE0HgHfD5XlnClC
kMEceTW3l4A4hul0cTmCJuTXU7OfgAe3aZ3VIgSbXSiKhYcI8G9B2c2tCIIC
rn+szyQggjft5NWOYKabiDyVRUDy4vrJ9g4EgmADZXgOAeU+jj+97Eag2Jk8
rH+CAKUUnN5/QBDGc/+0r+Bzb7LGZMQgAs2RhFj3cwToUZtrhoYRXNx/adyo
iAD2bs+V4+MIlPG6U09KCOAs0OlImEaQO+1yqKyUgOCqNr5KhYCeHPd3fDkB
UZyTG47MIXg+W5X03XkC/v8XHEiVqkwqCPgPexde1A==
      "]]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-20, 20}, {-9018.99892979596, 6620.999125714325}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Print"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
      "]]}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwtlH04E3gcwJe8RBzRMszLWGTNtvySKHzLubmulnScKwmlPKMoToqKGkr1
XIYc2T3nJXF7Sil56/ixFccZGRu2VVdeonIYhdO57nnuj8/z+evz74cSHuMf
oUEgEHZ95j+fHd01vbSEsJ6x/8hSIcYjSWtmFYsI716XGUXOw5hj9OJjzTzC
fM+Wyc1ZGNu4xX6KUSNMjnL++0Qaxi2Z/BUvRxCmi42Nho5hvIIht8Kdn/sE
qVubJ8Y58aHfpNxEeH11hTmluQkLl8WVElwR3vZVZeR230asFcF2NjvgjKX1
V5KtTBuwSf+T6OKsDZg9PmxKIddif1HBIcd2Fo4P5rlYsKpx0l8e0ddfM7E2
Zab9rmYVrj1VwK3czcDTIOp6ZnUXc/gBNv/k03HpEMwnVt/GbMFvHN93NNxu
wHYw5BbhstbTsrj9jjj4+6y2IWIeDuHlELvKHXBK8wNv24c8fC50+d2VJvaY
8IR7PJ0fBAQn6ybvNComHKB36oRlwuCV/Axhny0mHyVknO7LB7JeZMXMdgom
DdbxxruLIcqFpqUgW+NehV/gsEsFHHJ9Xi4SWWBq0EG7qeRKoCW6Lx0vJeEg
Zt2kXFgFRaq94tPbiNg9dEou6K+G0VTiVjbJGG+SCV09umqhPnedz5tAA9wz
n2PtrfUYWGMDM0yBNq4adEvbQ2+CL+sVup8CCTgo5d79wi+aIbaicm6Vibpp
LVcxJCprgcAjdkU9yQNNqQnsXrmdGFr/GMhEe/u9UsKyNGLzn4C7U3OVX57a
i1MyHd/AaAWNBKLysBkBynVyS9TlbaCj75caPqENPS2cNS+2t8PFlzLvkyUG
8HPwSCunrwPu3Uz3Oze9ChZITS7CnZ0QU3zYaCiQCFR65Wj9awmEcAssM1JJ
MMGa/FXB7IbLexLcUKEFkBtOLSOPd4Pm6tyR8wtWcH9Sb8Hl4TOQd6RN8gwp
cK2m0e9pbA8EJIVvKhDZQpfjua9ZHlKIXvnWVrKPCvudQn4xWpSCtfDpDe3x
teBqc2cNqumFpFrvvYY3HeBMow6TeaEPYsuiH21iOoLmxIVbRV4y0NdwDWcM
0+BDm27je305+Bz7NpeWTYfN2UuzSTI5kOosY3yoDBBNEK+m8PuBf/JSFkvO
hIezruKQkAHwT9/tJHjEgvfXzux7QB4E2n5eQOnZDZBIpBvtkA+CbES3ODvA
GSJ9x47WFylAEj68zdgaQbF+q2VRiBL+1Lw9l2uLgJ9Dzn8XpoSZsshKM3sE
PPLJ1ZsjlGD29i2Z4oTgCN1yZVeUEg7HTX9kbkHA2Bk3t5iohIWLS3d2fYeg
/oq1NChbCfa3zMwv/4igVy/xklGbEtzYim79bARifufy4A4l7BwrzLh+A0Gt
ud352xIlnHCymc0TIPiJJvnBs08Jj6vtu8uECEJ3UA9Fv1KC/1OULm5F8O5y
t0fbohIiIme3+nYgeL7Kvs6EoIJEvRp1hwRBd37SxoPLVSDguIdJ+xBUVdiv
/6Crgjcy2PrqNYIzvyeTqKYqWEjUUEeMIuDu6cmOMVeBgYW4YmwcQfCAg2GD
pQqcD7JNp6YQeI71aPlTVeCzTFcSP4uAdWJdqsBBBUEl7by5OQS282cX39BU
wPW5uiV5EcHqVOmpjQwV/P8v0NR1VJ/foIJ/AbK6Tf4=
      "]]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-20, 20}, {-9018.99892979596, 6620.999125714325}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Print"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
      "]]}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwt1Pk/1HkAx/FJFOGhlCJyZqpZx+Sz5eEo75IdtWGW0NamwkQi56O0jpSj
okcrjDbMoyU5VqXTtaP5MJZ21CjWmO/qsFokPTocm0h29/HYH16P53/wMguM
9BaosFgsj3/7z6Qhj9HZWULNuZs7Z2USOpiwdKL3E6EPl527dJJKqOfC5x9q
PxIaN8uEq9VIqKlD1EzkGKEyefR8zWIJbc7MUe8bJPRwRLHz0qMSqm7TY0wf
Eir+mVVuZSGheXH7vk4pJHSXpSTh24R7tGpObCnLntCc5c6Wt79opGoCnp3B
HjsaHPOa/dangS5W/hpecn4trWhxPya4Wku9pQVBa2Rc6t9f6cTVvUsT3m4I
z35hS8Mimq6mutyidUcLwqq9bKhyQOOpuWM19czxNf180YqWtM80eqVVUp6o
0dP9NYe6u08nWw5fpmVtxxSxu9fQ/Nji5uffiWhAWp5eR8UqaqXF3nxBLYcm
75t7XXMxm5o6hi3qEydRlrWJxDV9JYXmG1nVuRD8kXXxVFW3Oa2ojY9POXgW
RgtCK8c3m9F4rUPippofcWgdR63XyITK5vaBr12CIPtnFVKpIU15lSLNLy0H
J95x9nCpPt3x5LfS0N6rKH7q03Jskx6989E7L2/TTQyd0HPm6evS+wuE6Y4D
t9EgXO320k+bJl83ve/fVAPuMDNuK5pHWzPKC0yz67GloVdjxo9Fi4JPGlXb
iBFVWT25aPGYRLe77O0dNQn8DlgUdyYykswrOg5QULQ9YDKJj9JF8f3W5mnz
ZjhaN93iXxhziTZYPT6aJYXKEb0nwQYsdDbcmHnwpAXztfgnAt/MQ6rls+r+
ra1I7VO4xlzWRiJHg+N5ow03CjP4yaOLALtnCUWf7yOyJHjhX3564M/deYR9
UIaAsIIVp07oY3VPgnvuL+04880RB1JkiG1uon7f+Q+hukQ4eHzKGOLEIMsd
kXL0tKe/S9Mxw3hNl8s6SQd8EwLXF0jNsWFP3JxK4SOEa46Yy3ethKCvS17h
8hgmVa35815Z4ibXLsVn8DES6lx9dApX4cpAv5pRYSeiysJr1tuuwafC0A/d
rl3QUrEPtBngYLoGjdemuuAWsUPIybWC8aVlIdzrv0O/fkWk20oblJ2WJpb6
diMn5vR5bo8tuhVNB9ZrKuCd4WUtquEihC0U199RgLM7zbc0aS2MXUP+HtrV
A8WgRkmurx2SWrJUv9RRQh44sEnXhAC89OToWiX+VC2fFJoTeMftqdvXoMR4
WWi1AZvgQPG6Ua9GJQxGRozMrAmypgcENlIlgmNHP9g6ETDVX3mMyJWYSp29
5uFPEKOvbiQYVIJ9xWD5mR8ISocz63fqMXDg9T7SyiWoXRo0xtNnsH246FR2
PkG7q5O1vSGDaGvTiQsigneikZ/0zBiI77IflVURbPTefrrTioF3K8loaSPo
adD2376FgSB0wtm9nWB4aCDbiccgfkHtWLuc4POSezLONgYiT8f9Xd0EFpGH
N2rwGbxUwLn/BUGURYdl624GU/EqY4IhglR++d67AQy0DVsqh18RCJOOXyzd
z8BuL2/Z+/cE4h5b7dQQBm5zNORxEwQdquq8mDAGOy/L0iYnCV6s7UvZH8Eg
zO2sU+IngomAugZ+FIP//wX1s9njLrEM/gEjjlY5
      "]]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-20, 20}, {-9018.99892979596, 6620.999125714325}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Print"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
      "]]}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwtlGs01GkcgIckRBeabWbJrUyZNQavFdL6uR3OqYZY05aTRPbMEbFGGpdS
S6aLXWXIvTWFXCrlaJDbi5jKpdH0HyTWNrlU2yS3sDLbnrMfnvN8fT49JsGR
vqGqJBJp31f+8+mJfdNKJcKF63/vV+o04/GEb+aGlhGWh3am16s1Y9aGPz/X
LiJMa1zx5P7ThI0dor5EziBczYmsG59swm2XMjRGxxHuaPXJ7WlvwhqW/Ya4
B+Eprl5AflwTzowJ2nM2H2GPgZwRu7FGXKnCLSbtRPhD0c2xiMYGvDrU04Z6
2Ab7yeI5Cvt6rDfQEX7jqjWmuNqX642KsG97Xoj5Uyvcq2HmqCqowQkfd4df
kTNxAVfqvGpTNa47lRdW5W2JL5tL1H2TqjArw994JdcCr6tJPNUWXYE9C5tY
Xn/Tcews/0LH6RJcKo6TcQPM8TXhEbLuSBEOTMkkPyvbjrsZJzeveZCNzwSt
urtWj4Ylcv7nxXtpmMQwanE7vw0b8yE56HYMfnk5l19JmGISL6Zg7Q4uGGhx
ymddTXCOhlxBNk+D49/TVw8ZGGE41GL7hJYDITtHytrb9bHd61uUT2pCoPMc
lSeKKTijYqu+rbAEhMN+j+JcyLiNbmDrK6yAiXNkJ0+KLrb6wauPtrcKHmbt
8Jhk6+DGFJ7rcUY1WL0dnGUWquPw9C3di2U14P5wSPMLm4SbQ15lyxdFEFVe
tbBRb6ZlSTCoeJhYD+yftwqfJw62yH6b4n940QDi7sFLyG/Auc1iQMI2aQZH
Rmu1T/aMc49e0nOZNwbVWPKrY1QSaMxfH66Ka4U12j7nghXqYK8eeDepsQ2S
R2Vu0Td1YIqzuj9ssR3u5af6nJneCLx79UWrTDog8saxDW/YZJg307ESHO2E
wLC8LfxzFHA/GxEkSRPDxf2xDqhAHygM0eSO6segtilrPGnJEN6suW7Hm3oC
/V3np1LWm8AZcYbZSWoX+CcE2+W1m8K6B7SXnIBuCF/73rT30DY4wRcztS70
gFFl5zX1d2bAvu0z3Hm3FxLq3PzW528HWyXPJ17xDKJKw0V2THOI0j9QHZEm
AW3VncGWY3RwYbn8QbXsA4+IH7PoAgtgVxjZS7v7gFK/JdJjmyVIeSlCedBz
yIi+cNWqnwl7RuoiIlWk4JvqzSgUWcF3Iq6Wb7YU6AEp/sWnrYFVa+rnSn8B
snHNGwJ/Gwj3Fq7cefICeoPHXHSNEEwfLI2PCiTgL7VbC1mmCHJZgjqNowTM
lnKqqDQErm5n54tCCKC+f29gwkBw1eJQdB+HgGPc6c/MXQislTphNlwClpKV
d/YdQBBVfPLgLJ8AWgn124vpCD4o3O159wlw8BySaAsQZMqtYzfUELD3bQH/
yjUEuwcMa8pEBPzCMJ7LLkSQ1rrAHGwgoPEBTVJaicAi8/Z2x04CfDtR6iMx
guMOmzYvvyQglDPn5NWFQNdSxT9zmACeVu1MVy+CBlNFhsUoAYUsx6NSAoGm
9uN1h8cImJSB02s5gvKRBPXmj197eaozoRMI9ks57uxpAnT0H5W/fYdgQez/
q2KWAJsjnps/fULgdZ+5YrhEgIeKZm/MHIKPJQZOtcsE/HTzacrCAoKcPM14
byUBYR5puxKXETinz9dOqMjg/3/BRLJ8LklNBv8CskFbDQ==
      "]]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-20, 20}, {-9018.99892979596, 6620.999125714325}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Print"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
      "]]}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwtlHk4FGgcgKdZpmSUI4wQI0cmYybfkzLV+qFZnt1II9pqyU54rCytDrWi
ayJlOxzlmi3XIJVSJEM+d5LBtzlmJ5stxlFbMYQu2z7P/vE+77/vXy9TGCkI
plIoFM8v/OfYYc+JuTmERfUJT+cWVWNljMGU4iPCA7yawn5aNfbSfjZ9bxZh
3p2JKOlnKTZ32vspUoXwRJ6/RvRrKa4/k7xgQInwD6eQ4+t2KV5g37sMtyPs
6PHs/NMkKU7dH/jdsSyEX7U7ut1fKMUl8/blU9YgLJAPFUfRqrB6sLuDkb8D
vqp0dDEh97BeX1N47sVVOEN4t3BlQzkWNGTutn3ExfKOKe7FB3dwzJsN4Rde
cHA2YonY527jyujMsNLN9ngR3cBzF60UeyX7mn/OsMMj4hqrrvRr2F1c4+Xx
ioV9dP9xe+MswZKWwz37dtrixUEHKPJVuThAlKrfUWSDr/BbcgLTs3Bc4Fc3
NfWscXus71GJMAVT2Ga1bqcssd07ZUfi9Xj859mMhJJuC2yeMlav6g7CJgtD
iyddmfh0hMlYvd1B2LOapa4wMcPeu5zPJuIk2L3mr6KGBmN8Ia6IT6FfBtYh
3lxEPgM/Tp47bWlxBXL6fRoPu+hjUQifVKjyYPi4/np3hi72sC6rO69ZBFVp
K/gjflpYe3at6YdfrwN3VD7JEdNw3mSWUX/YLdhYpdD45EfBep8junuiymBv
cemMjp6qlqqzuSVDchf8QpbnkCPyWo9y6ti7uxXQ8lh+Bvn0OX8TOjH6qbIS
eOy6Mu/LKud6yzdmspEqoB7UfxpkRIHUqNr4tapqmE/3Pi58TQNla/bycNta
ODnQ4xaVpwXThgpZ/jUMt7LiveMmdKAwZUv+wI06iMwN0h700weDVNmSeS31
EBCWaZpwnAFc/3JxRHsDJG456ISyjaGAzdO/LWsEtSVpyqPvl4HiRJNN31AT
9LadeitazATp1SrBprFm8I0ROmY2WMAOtwpGgdpDCNd8aSHbYQkFN42nv6W3
gllJ8yXamBVsYpo1Ni16BDGVbj6Ls2ygjGFrZ2XTBnsl4RWOHFto7Mu+3mX3
GOjUNUL7IRakmho+FHq0A//nrWmsFDt48BOHPAyQAeO+aSTf0h7S425Pxgg7
IDnq9EVuLwcM6aZyja87QRC/mS2u4MLaDQYbj9R1AmunyDc/dhXQogKst7t2
QY9SIzfF1wFWj9r6rZB1gUw45KJrhuD+Rpbu794E/lYrnEmzQBC6/EHGoIDA
pCS01MgaAYMqYK70JWD08qUJk40guvYwt3I7gaB9E9OcdQgcea1eREjg/cm5
G57bENzhhJ6lHSBgXWC0NPE8ghtLJWqRGQSc3BWd9BQE/rNOSeVZBDaNZidc
uIRAq69d76OYwC9s86nLYgR70qYsEnMJVJdbd0pKELC0+S55JQQEzSi+sQVB
kfpgbG8NgeDQqfUebQi2DUarL8MEDi28p2qTIZjfoPlbUD0BsRfvxz+6EYQc
Q9njzQRGemD98xcIrD6cqNLs/NJ7iKoKHkbwRG7gKiAEtIwbi0fHEJysvNaa
/oSAwy53w/FxBC8OkD4rOQH+PA3Z/ikEyVtDAsMVBL7PeySamUHgit4Pl/UT
COMnrTvyEcG4zrnI2WcE/v8X5LxlTjs/J/AvHNFaYA==
      "]]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-20, 20}, {-9018.99892979596, 6620.999125714325}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Print"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
      "]]}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwtlGs01Hkch4dqJKTS1Mj90sjIJb+ipHyjaSpRaGxtJSaWY4VwXKLSIVLa
hHGfdo1LLkcoMUOzfpNxWeI/q41ERWWmKEtDpFprz9kXz/m8eN58Xj0G7BB3
P0USieSyyH97QebyaWEB4YH9liMLAwIsjV03M/gN4basMNlErwC7rno12/AF
4Zq3Dz6+6BJg/R2h30PkCF+Nt59vEgrwo2vpy4elCG/lH9CILhTg5Rb9urgb
4XQTX8ZkgABnRng7x+cj7ELOLR+e5eNKhfBiki3CohbFMBGFj5f5Ma01T1lj
5yL92mizeqzxrDWId2sLNqMJI6p86rB7S94Z004rHG2rrf/it3s49u9dQWlv
LHFgVWuMYmMN5kflBVYftsBeNwarD8qqsGs6S/+f3M3YKgV3xK6swEyu0HX/
BzoeLqTX8piluLQ9pi/8hCm2UUjniUU87JWYSSHKTPAdD+2RoldcfNF7yV0V
DRq2tVa/WSfMwiRzvWanK8aYxKHyfS7dxM+v5yZXPjXEZWN+YiWPeKy9IqB8
2tEAD/c7lhBH3fDP2+jLBrX1MOgl/nno5Hk4Y/uyrKVFC4vJ1KvqDqlAj7Zb
CC6mYt65h3vINA4UvvAQx+yh4KMuTuS74gKQXabYM6lr8FC3/1D1ZCE0cjYx
3nmq4Q4zzeM6XSVg9X5g2pJLxn8FMcicjHLY2zio/N2ThO38IypWa1VBaHn1
3GoNefPmQ0oxblE14PmTUWFv3ECzv4iVUwD3oP3xwDXk8cwBlY0QH0h1YGcu
unckW+5wkm50nCl7AIqRlCFfTRJYKUtPGVc1gJLqkcvsCTKwE7zqVHIFkDDc
5xRWpAbGIWuN5mKboCY/6cjFT6shs8FZzX+3EEJ4vqveelLAO3/7gWFaM3gF
5ukkX6bC+FkPUnAUhhS3yB2oQAsm9pkGTHiKYOlajvTSvC4UfhyYCz/wCPq7
rkwmqhtAhaNze6NZC7Bi2TZ5LYZw2i/7d7KBGIJUxg17fjSGszbFcg1yK+hV
tmWRxzaCIybqiqStEMt38lDPN4G29X23tz9vg9DSoHobS1P4VYfb9ouwHVQV
bdkWo3Qwmdq9fux+BzDOHuXQMzZD5IUFeXvJH0AV6IQwjC1Alx+/0j+5E9LD
rt6y6reEMDzkphLXBe5Jh8259VagHfWlN9T7MdBPJLKKL2yBNOnW4WPQDX1S
ZV4GyxpqjJzX7UM90MMe3bNGD8EmdcNr0xQCRpbemeMYIogbbWp4p0nAdGlA
tSYNQW8Ta3RIhwDN8XFtA/NFH5ACrRsJ8A3/NGu5E4FENPmZs42A+YSFKpcf
EJyPaD5jyyKAVqK5IeUmgs6Bk7vOZxKwgzkoUc1AoF/zOTA4h4BD7wuS07IQ
RCal5bALCDhnrj+TzUWgi8Tyg8UEPHxAk5RWIohINavQqiPAvQ0lidsRaDvM
rxM+IcAvYMZ+fxeCUErm3tp+AqJXNMi7ehB0jJuHlQwSwHW183nydNHn+HTf
eEPAuz6wf/0GgXiqI8FLvvg3WlHuJ0OwoYNd6z5LgJqWuPz9GILg299e7vtK
gPVp5vqpKQSpG6ncbAUJMBSUeyJmENSvGr1/a4kEjhV1Js7NIXj9tbbz+jIJ
BDJSd8Z9Q6AquzhyRUkC//cLbHqd5y4pS+BfdVJX3g==
      "]]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-20, 20}, {-9018.99892979596, 6620.999125714325}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Print"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
      "]]}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwtlH8403kcwEcspPyoXRvLr/yoXVg+zxXiepf2rOdk+RHdyXUsSlq4aHGU
9vg1qmeLJEMXIsLtFLaofJjZ9dU5jw6hH0qGuDqWciLXPc/98Xpe/77+ellz
Y/wjtEkkks9n/vPpMZ+ZpSWEJaVpo0s/ybA66YvZoQWEcxLVnL/iZZhj/PyD
7B+EM313ywejZdjKLXYxRoPwyU8rzjVwZbgtO0dvWI2wT3Au89g3Mqzn1G+B
f0dY27Q0qY8mw5fiQ73PFiIcJWgxqZU34mqtuOukrQi7h857Br9vwLoRbBfa
9y54n6GrfJlfPV79WMkrvbgZPzzvb1yguoX9FZJDGwkmrtl+ZbmaVYeT3nry
xCPO2KjNe4cOW4rlpyRR0r1O+HStlfMa9xrMyQm0+lSwCY+eTA9tm6zE7OJ7
nN1TDEwvg+7nNeW4QpXYF3dgIzZIbPj4Z3kpPph2ifJHpQN+tT++t7vpKj4T
uuyXFavtsYPRNONGwRVMcrRs8Uq3xWSx2eKB/Bw8eK4gs7rXBt/MU9VIbIWY
bhBZ9W6nNQ4NERTJNafwsa8YukN0S4yDeFbiw15waOuzSoXCHF/znqh76ZcM
jAT3pejrVLxn5CM288iGkqcB7Yk7KJjfF3Yh4mYujAkoHmyqKe452rNzlaoA
mvI2sMaDVuJrJRddPdE1YE4MvHMuJmNh1SGTtLgy2NU0pL8YRMKNeslOmqQK
iK2Szpms1rRMZevotSurIOjw+pKe5IGWyPBHdvf6a0D1cCAbBTzeTh3w1mUP
SsHdsfWWb75m+xFXiS9NVAfafMqTcBoJRqV1sJ5yG5Yb+gq4b8gw7qpl9Ky5
HlKH+7xOlK2ENJHd1y+CG+HXwgzfMzMm0GZyXDT3VAYxpeHGr4IokFE+dR8L
7sDBKMm6TAEVpsJFxsX6zZDlx3dDRebwepqsaM26Czpr8tQp8xbAEzcG5DPu
Q39n+t9pRtZwKTiLLJC2QGASd4tEYQMW5kTnhZsYeCsmbbqCbUFpEWYXEdMK
ltUdl8mv7cAtiysNZbZBktwrwKjQAaIXUirrtRQQW8Fr3OK8EU7qSm+ZKhVg
qL2V6zTKAM+1818+uNIOrOP78hi5m6BHJO0ti1QC9c66GJatE7hd5YuFjA7I
OSG8yOx3Bm7Dd03KhQ7wz9jrWNzIhBAuZ9awVQWMA2mB109vhvX82tAEwW/Q
p9YvzQ10gZqcDds8/B9AF3d0h6klAjKrwd6AQsALnRtzeTYIXBNHF2OoBLyr
iJTS7BEcraX09poTQJucpFs7Iuik8FNLbAgIj5v54LwNgUi9ZdiVScB86lKt
z34EVKG84Ig3AfblNLMsEQJGZ7OhUkCAG3uo2zAXQcjS5AgjnYA9E0WZ4ssI
LiB6s1hIwI+OVrP5xQjeFiYfDRERcLfBvruiGsFtnmeHpogA/w6U0a5C4LGq
JcVGTkBE5KzH7k4E0TvfBgmbCUgwkGk6uxD8zLd0enOfgGKOe9ijXgRaz1Oe
3FESMN4HHi9HECil4Ob36HNvgrYmYgzB+5FYY1kfASvN26smXiNwoJaM0QcJ
cPmBvXZ6GkHWWa3L48MEsLT0u+JnETTVbz7OeUXAt2VE2twcgqnxsF31YwRE
sc5vS15AQF+XY242ScD//wIfv7aZlDcE/AuqhFWi
      "]]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-20, 20}, {-9018.99892979596, 6620.999125714325}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Print"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
      "]]}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwt1Ps31GkcwPEhd2aj0KhclylTZuQ5TavIJwzOWrIjYitZTFkpikKim0u1
tUJDLtMxmaaRRWXclcdlvioal8pltbFZJC1pRg2b7O45+8P7vP6Dt3lIFJuj
TCKRvP7tP5MmvD4sLSH8uCt9cmlRjMcTDeeGPiPsNkp5NaAQY2/d4U818wjj
jyW992RibGYfvRglQ7jWuLMhdFKMWy5laYyMIyw8pPtL+3Mx1qD3m+CnCKeq
59lllIrxtdhgzzMFCLs43Uk0CRTjUqUYAWkLwo3lnWRHcSVW5bjbGe2zw43m
Sf4PvO/jlQOSyJuZm/DpnNiT06R7mN2aH2r9xBaPdT+T7o6pwIkzjpFXRxl4
vJA7G1D2K66Ny4+o2EnHEZFjTxoM72DvLD+zL3kbsUaYzl8Cj9vYnffA2+Md
DWsYMvjCdAEWtif0xeyxxpc7hrW1PvJxUMo1gy7ROryL3ZU8EXgDJwcvK9de
ScU8/b/ZydQ8TLIxbXJJtcQiTxNPN/I1/NvPeemlLyxw+63hks1aV/BarfAS
ubM5Dmipz+XUnMOHNtNUh9aaYrPFx8X1q4/g0C2vRK2ta7BZL3OGUbYHaPFb
l44IKDjSU5c7EZ4I/N992xJ2GOBH3Z0x63suwMRZAwd3ygr8ujrSfMP1TKjn
rme98SdjepVrXBUzF2wnB+UMnhqu3m5V8lVDIbjWD2ku+pNw/oicyX5fBNEl
FQq9lbImPH+6O6e+GPwPfM3vPTXYFLw8qTLBTwjtnYOXkO+AU1FEsorrqAi2
2jTf98mVORE8kc4FUSkonzB4GWZEggNPXYMitpeDuo7P2ZBpNYh/m4JGU+/C
+ZE+l2PFZNDOnJxWGb8HdwvSfJI/6MHQZvWu4/RKiLoZpvunvwEUudVdKs4S
Q1BEvnH6WQrw/SwPmQ1XwcXvT9ijwjVwND1TWc+qBlT0ueOnF0yAaZV9/GFa
LfR3pL5PWW4O3zR7kRu668AvMYSZ32oBtMeFZ2KZDRCpPWUh/cESgroElKSU
RjAtJXLU3lpBsKL84HzHA0isdfFdXrAO/K94ZdkxmiBaGFnNZFiD69Xe6H2O
GHSUt4TQx2jQn+GhRprFwDq8i0vL3gg9RU5xe/nNQKkzjmJZ0mHKNvvkCKsF
so5dyLTtZ8CXj3ennBUtwE7bacOrtgWGw4aZzhutQNuT4idI2gSPsqhSXec2
6BvXvJntZwd7Td+tRrI2kIaM7VhhioC84auFU9cl8IfKbQXXAoGS8rzq/gIJ
yIXhFUZUBPKBUb0dNyRgNDW11twGwVBanbWqQAJhMR8+MbYhEL0OC7xSIYGF
80tlXrsRuOQ31PIICVBvGa2+mIEgQfOnuIdyCdi7D3XrZCM4POJ7vuiTBL6b
LEy/moMguGZ7xrkFCRy1MZvL5SFw5+jfdiMR0FhF7RaWItBvbuqTahPAJlBa
WzuCinhD5rAFAZzwOQePDgTFO5Wcm60IiNeqkXVIEeRQ33kVryeA5731x2cv
ECQ9b+YcpBPwpg8cXo8i+Nb2MHfGnoCFeGUZZwKBo3oAv8eBAPKatpLJtwg2
vXIuq3QiwG6/+6rZWQSrLlMkcSwCWEqa0tg5BNqhy3oCPQgIKH6SolAg+GI/
/XKbJwERrMvbTn1GMKs7+MbYm4D//wVjE63yJR8C/gFds1io
      "]]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-20, 20}, {-9018.99892979596, 6620.999125714325}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Print"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
      "]]}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwtlGs0FHgYxocoitOohCSMlkzGaP6laKwXWWkjGbSbFbkdzQpLWeWWJRKb
yv0ym9xq1iCzkYr1zhDFJuXkkrTKMsSuuzRdrD1nPzzn+fh7zvmd8+h6Bzv7
yVIoFIfl/NfREoeZpSWCvp17/l4KEuJI5Mb5/o8EB7sUM6u5QnSk/vnuznuC
7j0v2D7+QtQxC/kUPEuQ8yoqtcVDiOKLVxUGRwjCBG7/+aAQFYx7tuBjgloK
9txNdCFmnPL6+lw+wR7LbyU7h6uxXCashLKb4IGqM69PuFejvJ8dS8ODhT8N
TaaUmtzC9b0PAouu7MCExK/83UklOjfl+Ri2mWC+Dy3WgyrAyEmLwMtDTDw6
HiC3opGPdT/mcasOGaN+m2G8VeYNdLzqqvM51whzOa5BehalaMdrcNw/QccS
6bzeu8kiLGs90x3mboj1i9Qun7ZCPJaQofrkpgFKrRkDkokCjPFaUblmvT7m
WTNWmWfkIIWh3Whzfiv6R6u1BB/OwBcpuUnlz2lI0ay83+uThptXB/DnrHUx
NHvj011Nifj9Lrp8/2ZtXIjimFg9O4s+u1/dbGrSxAvBtlsPjHshPcJ8KahE
Haf44eeOuRyH6wOc5jNWqnhOaR9zlB0JkjhVtp36Onwob8EPtE+Ee5nbbEfd
lPH2UUZyT0UamIz1zTF5K7GkoOSaRVgG7LvXr/jJjYIdAw1JHpgDIfyqRZX1
s42CRzLZplweuPnrXX8W1ddYE3+zL+hNIbT+0XeRcHotP8u58zrlisGcIRI6
Zc9aFvYXzV1yLQXZcNWXvhoUYLmHON+OuQGrlJzivP9ZCTomXTam3XyIH+y2
CS1WhnAJcltoAriVn+gUM6MC9XY7cxrsKiG4yJf6l5sqVMb8IrjgcAuOcfO0
kuLUYaHCj+rvUw3Jh8PNSIEmhDrOXGoLE4LchsyRWOkWKMi1P+KR/xv0tJ+f
SlirC5Z3h4r0qm6Da6S3aV4TDVLj9+9Rf1EDgWvGaR1Ht4IrbcoJpmtBu7wl
a+XbL8CJ5ZEwKVsHkXU2nLX5BvB+IkPm8fa7EFIWWGvKNIRNUWtlX8E9UJLd
7W08TIfRGpeDWifvg+1Jl0x6uhGMenlWD6XXg/pdrWVTxuA7KMgdKGuAq6EX
rpj0MCF19YN2+ae/g3PiIQav1gToijpxxyWNQHdPcC2J3gGx7MJttCiE7hHF
onRXFuCjzBo6VQQd3sNW67QJsEVGcg55Ingtd2Mxk0agN3bhSU2BCObKAqo0
9Amc+hLzt1wTgcb4+GZdBgHBfQ6ZKhaBb9jMO+ZeApq1Z73TK0QgjV+qcDhC
QPrrQ+xDEeiXamxKTiNQl+Eb7S8RgZldf6dSOgEXjrH9kzERHBwrSLqcRWBK
ZXHDngkR/MDQmc/mETBISxEoTougvka/s6ycQFaysF8gFYFzC0lsbiVwOoZi
PqssBr+Aefb+dgIqFm3y31HFELH6zmx7B4GKD+lPm9eJgedofrzrOYHhCIMT
WWpiGO0G9puhZX6YY46ZrhikEbKzfhICkzvUfYv0xKCs2cwfe0sgZeo1c42+
GFiedmrT0wSaTp5ufUkXg62MYsepeQKeRpbptgwxfFPclrC4SODDWwXPSqYY
uLape6M+Lu/lP6OrscTw/38BK6BgIXanGP4F8vJSNg==
      "]]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-20, 20}, {-9018.99892979596, 6620.999125714325}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Print"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
      "]]}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwtlGs01Hkcxidbswmp5DKZ3C+ZGjP5FZmUb0q0Io3IbiUN4lihYTWSVkuU
Lq6TW5RrMWnQxcR/dn6i0WFJNzVRq4tRdBmGwsnO2nP2xXOeF5/PeV4+ppwo
dogaiUTynM1/nTjkOaZSISxzZ7xW3RBieYLeRN93hKUXuEOfrwmx16K/vzVO
IVz37tanl5VCbOIYPROlRPhUktN0c54Q303Pnj8gR3iNaJsOL0GI59s+M8Jd
CGdbB7sqXIQ4NzbQI6kIYU9yQfXAw+tYMCemguSAcEurGrflSy2eF+JmR9ln
hz3KTep5865hnef3IsqyVuOVVuLY2vU1mN1aGGTTwcQ8B6rJy6NXccKXDRGZ
bxk4vPZevFpuFRYdKQwX7rDFQumn3ZVdFdgr29fkn4JVOH9L4LsNr8uwW7HY
y/0jDSu8+f4PZy7jqvb43pg9Nth+TnZZ228lOCAlV/fBVWv8xOa84mF5IT4e
+MN1DR0rTC1Ic3uxJA+T6MaSzSctMFiSI5/n5OAXZwrSBE/NsO+E3ZvkrAxM
XRBWPe5iio/Td01vTzyFf11Lm9dHNcarJ0s6P/Yk4SCHV1dbWw3xxqmhI4pM
LqbxWKrICgOs4FLHurTZuPSlT1v8Jl3sv1aLIuKGwNAJXSc3gyU42uHSYckY
D5r4K1zf+2nh87vtGli2KcD8IBtnFJNxjSxdkyY5A1ua+tRn/EiYFRpbszg0
C6KrhZOLdZQS//yFY2UsPvgdNC99dEwm6f5DwHTsyof2v2TpyOe580Hv1ksy
z4vAorc0eOcpnffSzH9207oManG6/cEUEjDV5fssHpfCj5reJzifycBJDrip
ISmH5IHezdxyLbCMWmo+WVoJdUWp3sfHFkNOo4dWaPAViCoLXvTOTxcCi9Zt
G9heDQHhhcvTThjAk74qUv9SAZzeGeeILhpC/zl2T//jazB3KV/++7QRuPTd
GB0SXYdnnScVKdqmUOPi0d60sQ58Ezj2ha1msD8k70/ymnqI0Bgx6/7FAg7Z
Vyh1KA1gLJBeIA9bggt+cLN8qgESRJt9tIusQarfW7Lu0w2Iroq4bc+wgUvL
i6Xne26CppoDx3aQBtajG/WHpbfA9dAuPi1nFcQlqpTtottgcGd5lKuFLRiJ
khaGFjZCNvdUFvMZA7i4f6dGhgjYqTvoxbeZQD0y9Sg65g7Q9qT4ViSuhgz5
mgF/nybolauX5fjaQb25h97Wrc3QzRnctMQYwQpts/TxFQS8nntlkm+GIHGw
ufH9KgLGq8KEFCsEj5p9B/uZBFBGRqimdATHwk7DvXUEBMeMfWOsR9DTovjK
dydgOllV67kbQXysJMghjACrSsqy0xkIOmR7Nxy9QoCjW1+PZg4Ck7qv4ZEC
ArZ/uJiWeQFBXGpmPkdIwGG6yURe8SxHbcqfGgkgbln1VAkQxJ5dWWPYTgBb
ilLb2hFQnaf1xHICQsImnNw7EXB1c7fUDxPAW9Co7OxGcH+Ezq38TECxF+vA
46cIovMPdJ37SsD7XnB68xZB2+j95ACyGKZ5asqQIQTL7nPq2QvEoGXYVv1h
GEFkyfdXWxeKwW6/m/7oKAIDDyaLoScG1znq3bETs9y0I9R8mRj8yztSJidn
974F8fWNxBDuenb9se+zfvfMXQ0zMfz/XxBRkadQWYrhX78sWVg=
      "]]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-20, 20}, {-9018.99892979596, 6620.999125714325}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Print"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
      "]]}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwtlH8403kcwDchP5KyXJPfbonVDB9R6a53fjzjMPKre+qixqLdzAq1HhK1
oi5P8vNptefMjzVzSakvofMpzp5UrqOGU1c4luku2VzqSa57nvvj9bz+ff31
cuakR3MNSCRSxGf+8zFNxOziIsLdlSGaxXIlnsz+Ym7kI8IXS9n62GIlZq94
8a7lPcJp52PJyrNK7LRZuJCuQ5hasNc29rgS3ztbYvJyEmHeYVGkIlWJTTwG
HfAjhK3iFC1R/kpclrk3LO8SwklWJoWyl/W4gZxRS/JDeEmRyi1wfT024rK8
bfZ448ihDtGS6iuYMvQLv/qCF541j3Aa8Jbj6C5JknuvJ84Nv3td3VuLs998
xS8eZ2LqeMOOnUE1uPWIhHct0gMv5XiFagZlmF0S5/Tp4gZs6MeI1IdXYZb0
DjvkNR2rvdbk8kqkWK46qs7Y7Y7ZPZYW5p0SnCAus/5VsQ6PGc+21jVW4ty9
SxrNKa6YRjVbldhfhkkMx87AUzTsG6gNyDMswb//cLGg4akLVvkI7P10RdjO
LLVeH+CMj4kzKA3Bhfj7jXSjETtHnLIhOpDicAIn+f2h6OqyxVrLExsrXEWY
LtqyKKilYiFFEEDuOoBlz2O6j263xpCrpgjN1mJNvvVWFtUKB/0c1HMnjwtt
5W7Br+ItcO9dzwE3+yPgOTWsZ0qNcUWCZZt7VT4EtY2YLsST8Ou2NT/lhxaA
sP7a/EqKrnN5Z3jyBL8I4vd/KevPGe6cLjZ9YVR2AVQPh8+imKFtOQraJq+k
MtjCuHsjqlK3TU+JyeSkV4LBYetnyTYk6GgMI2exJLB0WVQ+529jEEh3Hiz6
TgonX6oDD9VYgOvtR8Y/elVB06XTUbmzK+Hr9tgFjUQG6dXJK/6Mt4ZvUrgT
zS41kMCT2BfkU2GBPpIlLK6FMzsOb0aXbeH+KN/u/T91YLiqfPL4BwcoDCi8
aZhzBQYfnJoRWzrDTJvJHEmjgLhsjq+kywVCn1utyxMqgW8+7dK3iwbs1SfI
My8awLGhp8JYuxZ4QRaz60OuQnZrYIzlpXUgsnV5ou1rBKGcT/gy3YFqxGY+
sm+CZQZ+HI8JOvB/i0zbP94EwWmx5fTSDRBemUhw664D9bZ9ejDNAwymZDF7
dt2AkkOFFzwHmXDdsv5AhUMzRJ+OZEgJT/C5NzagetoM9N3iuNpjXhAooIcm
nrkJ6knT6tI4bwh74+u3KfwW9HEmtls5InD7mHXU1ICAUcMr8+UuCFJuJcRs
NCJAL0+9ZuOKQC5gMfaZEGAzPW3nzEBAG6WOti4nIDlj9h3TH4FjT3tIqi0B
H04uXo3YiWB1MZmq8iHAtc5mzZnzCIxoRYQ4hYDNrJHHy0oRBD3PKm7iERA+
dbmguAKBuCKB9yyNgIMMp7lKKQKyqaeDTyYBHbdcH8sbECz81X9qPI+A6B50
uluFQN9CjQuQEMBNndsa8gABOkhmCqQEiMxadA/6EByia00kVQRI2Vv2DTxF
MHO5veOtnIBXatg6No5gOj+BJmv+3Csy0HE1COj+rE8PCQIsbLvrp7QIDuiZ
Q/O3CfBOZK1++xbB5H7yuShMQDDZtC9zDsFaJy03p4uAb2t6xfPzCJKH+7cp
egjgBZ/zz/mIoKak3ebJfQL+/xeMhdXqFh8S8C95P0CU
      "]]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-20, 20}, {-9018.99892979596, 6620.999125714325}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Print"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
      "]]}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwt1Ps/1XccwPHTKbcSSuqYu6R14pBPI+nyLhnTnIQjczg1nKiEMDsntJSc
UpaOjttx5HZEOM53KY2Z9yJ6qORRkku1WiExyS1rbWfb47EfXo/nf/CyCIn2
4dNpNJrXv/1n8rDXpEpF8HRG05hKKsehxOUzAx8JuhRe9pbkyJGt9+v7+j8I
jisu1DGz5GjuHPNX9BRBThc/iZMux5vpYs3nQwQt9HW0qwRy1GQ9NsV7BBtz
eWv9OXK8GL9v53EpwYlS1YFqHTlWzYsrozkRDGjYNhyQUoZqfHcHw2AH1N1f
FzXKLkX93luRJRfWYb/TbMRd+xL0ackPXdNhj9UlS9Z7Moox8e3myMyXdniL
4cSY33UJb3ybf7B2Fwu5G0ZqdHJlyBZzzP/Os8GfOYLgDHspusua2B5jTLSR
NyjcunOxvF3YE8ddgzdBOphflI281IsG9ytWo1V/gGPo5ot4bN98xSJ9a6Sa
6yJv08VIszVrdj1lhZkK0ZnO8vPYfzZPVPXIEjl9ew9Pvk5H44URldPbLTC6
IN7YOykND33GVBswNkNTrqsqS5mCoU7PKlpajLDtzwnP7FkhMgUbVVFlDJw9
0m0rYB3B4qe+rcJtBuiXXPs8r4iHwykGm9wZS3Efc0PM0UYCDZJP3V77L8ZX
/clN4kY+2I/0TdvJ1HFZZs35aZ942NEwoPWXPw316CuZ1auSIaaydm6J/lRz
1BaxYif3JPjvX1n8IKmv+URoT5LogQja7/alE9/erces6jS8yTnYaPvLD945
U1unpg/Z5QkzgZ5g8CTMkAZJZ/d+87tSDBra3ikh4+rgYpVQ3LlCAief97jG
li6G8fS+tQlxOaCUpnkfm1wCAnlh1/HyPIguCdN75W8AjjfTuAytAuAdzDcR
pTCgQ9xF03cthDO7E5xJgRFcySX0NxuKYMEyydB3H0xB64Dee72IYnh859RE
qq4F+OqbCkdOlAAnMcQxv8US6rdsjjp9rRQiF41adgZageaOjIneh2VgVtWW
rf5mFfgo55ecG5ND4g1XX13paqiXnW1TN7kMMeWR1x3t1oAGf4fAwbkCtOlO
IaxBJsTU6MisDleC22E/CTPLBrqDVBNC6RVg/GgS7WbFglVD5g+OX6sCcezp
C/aP7eD7CV9r9nA1+KTtspVdt4dX3fUa9xYogMlN5ZQlr4P15tsZtca10DOk
VZLFcQD27Pi9tdZK6AwZ3LbUjIDwC05P71UlvFhweU5iSSAq+lHs7utKmC6P
qDW0JhAm4eh23FCC4eiosYUtAfYLjkdjkxLC4ibf27kQsBT6N8jalfDhpKrG
aw+BuxV7CkMGlGAtN/zkzHkCZpqB+8foFDi7D3RpZxFYxuqn89Uo+HKkQJSZ
TUDLL/DSUw0Kjtiaz+TICExdCuzt1Kbgp2vWXeVVBG47cT2p5RT4tJG01nYC
seFBrAQmBfyImU0edwiEZzzpGLehQLCwfupOJ4Ggq0Hh4XYUyNgbv374iMDn
qqCigPUUvO6BTb+9JGCUE7zUZQsFHwT0Kf4wAb2mp4qrQMFio9bKkTcE1F4G
77RxpcBhr/uKd+8IvGXxUk08KHCbp9UZP0Ng0O+ZebYnBQGlHalzcwT6j/Ka
dLwoOOh2ziXpI4H7Rc++Eu2i4P9/QWsbb1a1m4J/ABMySZs=
      "]]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-20, 20}, {-9018.99892979596, 6620.999125714325}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Print"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
      "]]}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwt1Pk/1HkcwPExhVypkGPk2ijzcM5HyrHbe3JMhSkseWxbNNF6aHIn5WYc
Se24cszMNrma71La3cj2aNd7SXZT1qqI2U6LQsm1qVWzx2N/eD1e/8HTnBcT
EEGn0Wh+//Tv08b9ZhUKglbMMzOKh1IcS1m7IF8i2NSattQ8LEXuqsdvrr4l
yPI4oho2KEUzl9j3MXME4XPfddgnxY7CkhVPxgiGnFHfkdkpxRV2gyZ4h2DR
bJ6URkmxLDHMJ1NEcP5axi6lRCk2KiXU0TYT7PCJu0hXl6JyBIdluI+F+lUr
rQ5s/wp1HnTxa4od8efAOAlLJMaAzuqD1rccUCnRiBvzZzWmTH/MF47YY1mA
dQDdrgrbjlVHNe+yQ8+JaLqGoAK5JUFmH6pskAtGKlGt5ciR/MDdPsXEp39p
eDjNlGJD9/GBhL3WWBzrZJO4swT3C8r0fpVtQFFtR6R6phDTw5Zd0tCxwkJT
7Vob2Wmk2Zq2e+Sux6kOy3GjA4U4fKoqv/G+BdJGVPtb+vPQWD2Smt9mjoFH
9+i5Z+Xg4U1MZbmxKV5aMfrhYV8GHtz8SNbZycD7153aXmMyMpNdFdF1Bpgc
FGoxzIzH8w8Dbxxn66Gil33FRfMQjmfpuXMM1uDK5AX1Ib4/Xivf6PU8WAsv
C49vaZv1BocXQ/P2EhU0CREMRk8dBM9rcrX3wTQsYlebsstiIZZqXlytM9fe
sE+eO4PHIPjQR+f7U4fat5Wz3XoS0qH79lAhCXywNZTRrZyanQ2utj99u7ti
bit/2rw7Yk0e0JP0fg83pIGrv7ZDeMRJUNXcncV7pQIhzo6zLYoiyHky4BFf
qwVk44i00lMIl0V5u9NnV4PRUpL4yUQxxNSEr/ojWA+o1fWe/VdKYX9U9br8
LAMwiBYDN6wcTvonuRAxAxThfstCl1XAct3ysYx3JnBGUhlveKsSBntyXwu0
zeG98cVN++OrISiF51zdaQG6j/bW+34iBr7GpEXvZ+tBc+xuZNekBEwbb55V
mbCE1ALluX7hOUhp8wjUFm2AHa3PdbuapBDbwG91treGLh8yPJp1HjTpm3l2
o0zQpfcclUfWgNeRT8uZpTZwLrc9UeRTCwbfr4vxWm8H4qZKiZlpHZTEFxQ7
DNrD4fkfxSeW10NA3i5bSasDfP34l66q4Xpg7hUE1aU5glWlY0BOUwMMjKnV
lAaxIClu7ApbeAF6eaPsNaYENr3KYHeFy+Dp8guL5RYELDeAzYlIGcw3RDYb
WhHQC6Pp2/NlYDg5aWxuS2D+t8ypygQZhCfMvrF3I/BdS1YFP1sG73IUF/32
EGCl5bzUkcrAqt7Q6OSXBOw086t4chm4cOR9mqUETLw4Av3HMvB9Ic4XniWw
Ml015vYzGcTZmi1USAi8nM73dJ6QwfUWq76GRgJNdwum1d7KIOAmybvRTYAp
KvT6Zi0FEZEL7tt7CDDu7XQ4ZERBsvrVuZ5eAhpaGgyGCQUSruuBu/cJTKSf
ei2wpOD5ALg/GyFA8YpEIU4UvEumz0WME6gU+eZpbaFAi3GDejFBoOCeZlyH
GwWsUI7+zAyBL7xPe9t4UOClpNabuEBgT4af41NvCkJqbwkWFwlw2rSMz+6k
IMqryC11iYDzzB0VHy4F//sF//nlT8HfOVxALQ==
      "]]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-20, 20}, {-9018.99892979596, 6620.999125714325}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Print"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
      "]]}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwt1Ps31HkYwPHJqlWxKc2ilEtSbDMun5YlrQdrKUYuUWdtKkbNMhZhSi4N
DUPacjcN2vm6TDlKbVfNSZ4acdCqlFvKKiGxUeOednb3nH54n9d/8DYMivAJ
UaHRaKz/+t/EIdYHpZKgfU/MiHJIhIPxX0/2zBPsvkWNbesXoafmX9M3ZwnG
iloVub0iNLCN/BShIHjZb+P8hnYR3juRo9Y3SHDdox51r3siVGN2rsU/Carf
d2JKikWYF7PPnV9EsLdaMwq8RVi1ILqcZkOQn3Jhii8rxIUhrla6e6wwXTus
pSK6ALW67nNLsy1Rr35jWbRTPvrIxcGmzRb40ZhD/147D+PHtnKz+s2xOJrp
faEtB2sOi0Mv7WBic7fitLwsGz1z/Az+ObMJZQwQJQVkoWtJrafbqBm+DdPj
ca1OobQxriM6wBTjqm7cZXRnYqAgj/7w/Ab8rSFQYs3KwKR9X1Qv1TLBWs2F
qdmjaUhj6Nc5pxojX159dqBQgM8yzwir2o2w0fuAe7JmCuot4VROOBnizrXf
zb/gHMOwb80W9ujpo4FXndDN/SgG2/Sel8tX40pfVmKFSyyaHbFT/lqugw7X
OpOkBZFIvfCtj3OkY7/oo0e46kEcSqbbu+qswNClyZyq5QEoy9/o8sZfA2tU
h7b2r7BDi+HuCfOSRdiX/tqpz8sdfpD1LP7kT0MxxzpKsHUfRFZemlmupagb
hYTUK1Gh4H9gHdWW0F3HqX4NHvNR0Pig+wTx7XKwClNtf3COB3aMu1e8ChUO
E5Fqzndq4kGFR3/O1qWBo3p6W6otH75U90oOercIjqsmjbObUuB4X4fzoTIN
sMqL7N7OSoXLRWleSR+WQ/0E+3ZvhRAiStmar/3p8DTOXf0byxMQGCpeI0zW
gYaHxH999knI8ObZkuLVYFKrE2YycApUV+YPHptbCylDh6fGrmdBZ0vquGCZ
Ibzczb5W1p8NfvFB1mK5EfCfN52/apYL3KUjRq0/GUO2m4V41c95oF/VULDo
7XrYRaO/FwjzIb7G2XdZ0QbY03woyf1BAURKuTeszU3hacJjtV8+FoK6ik0Q
c8AMMhwrm145nwGX8J35ZrmbQOGtHNubJgadW2siXIyZ0LbdX2vz1SLIOZSe
bdFpDu/8TMLZs8Xgk7aDUXLDAhK2TctHTM+CWYDArzzREjD9Rz5v5+/QMbi4
NNfPCgzChbeYHhJoDRpwXKFPYNUS7h+sfgm8VD03k29EoNI58ej4gAQmpJxL
uiYEbBJPOee+kYDuyIieIYOA7/jl9q6/JcCO/jBtvoVAZsfkbPCMBOaOKy+y
dhGYLz3mdFSDApMK3VUZpwk835L7RGpDga1rzyP1XAJhseXF2+wo8BguFmYV
EJitvh4yak9BFMNgsrCEAN2oa9rSiYLb100eSasIsNTW6NV6UODTQNLqGwnc
eSplP9lPQQhn0t6thYDHVzUMHpuCI0tuKlpaCTxzbZrSOUhBiafd/iftBKZk
I+mBXAredID9q34CTMri4jCPgrkjKoqQIQK3nznyTsZRoLG6vnL4LYHtK30d
zBMosNrrqv3+PYEDwtjHMckUuCxY3BozSWAC08TaAgp2lzULZmYIpMwVBsvS
KAh1ObklYZ6A5ubKTXsyKPj8LzgbLptUZlLwL3EQVfw=
      "]]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-20, 20}, {-9018.99892979596, 6620.999125714325}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Print"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
      "]]}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwt1Ps/1XccwPFDSMUqnHLLbVLMrfNZDIe9wxlR2BFdPIrhNEkxmugclzPH
QdS+Ducrp06NpDzUNKuYrXnPOWWPxJQi1LrNvccWJzmTdnZ57IfX4/UfPG3j
U7k8bQaDsfWf/n3O2NYZjYbg4ybRjGaKwlH+qtnhBYKvbf0Lx8cpDFvxeK7l
T4KGlZrVd0YotPFKe5uqIsjOOuJb+5jCjqMS/SejBKsgrTiwj0J91wEr7CYY
cSfGqqSNwspDcaH5Jwl2zLBCjEoobNTKqGN4Eqzb+LTG3oFCXV4Qy2w3C58d
X5BtPnMcjR/cSKkt34A84dqbLe8cQ65CluB4yx1LLpsKtMSlyP/DN4V67obX
58qctB+WYOthWXJTuCsOGr68mBZWjGGSKJu/qp1Rl31vHX1GjEHy62HBL5zw
bv0XLlVqEdZ3ZvdnxDhi0RPrxXoHC3CPqJL5y4V1uIXlN/hehxBz4xZ9vczY
ARe4oXntrHxkuFi3BxTa44k4Ttzu6BwcKq0uarxvh1Ghr5sbdI6g5dKkhlf+
tjjWJ7p0ZyoT92900h22tEa6jFn9KZWBCZ6/XlAoLFD8o7fsSmAaOmV5aw7W
mWKFJV/clpCMNY8ildmbmBhlWdg21pqAY0ImO8jUCHObKgUnNLuwTbqeMx5t
iGXd4RRLLxTdJwZfucn1MP8GFMh2T7cHtg0veRvNwMq7rg18x2BIa2hSrzRW
tXswSbh39k6I3vtuzV3BYPu4vTPT/m08dN4ePEoiH3zYfFs6wLbaB94uPzVH
VKk+9Dd505KtTAXtTObDRDMGMCluXd5COiw2iBDG/64HL3jn+Nt2ZkLBk/6A
9LOGIOxI8E2vz4bLJ8URuTMrwV8YuP1KmwBSaxNX/BbNBFXRSlDq58OeZNma
IqEp7GJI8rFKCCUfZ3qRUxZgyw72eGpVADom0tG8eSsYis1RhXSKYKCr8KVo
uS1cuKJ4+FGkGKL48R4yhR0kTRd3lzKKIWXZlF3PLnvwi42djC8vAevGm7Te
5FrIoPYL9piXAr81IHL5yXVQ3fCaeVZZBmn1Kdc83ByhXyUZzuYeBwNtz3jX
ESfQNt5+7zaDAs6BbVKnCmfoPJY3e/AeBabfrUnl2LuCec1l56HqcpCkF5e7
D7hB4vqasYlUCXDF4S7ya+7gFSxr7fCsAKcYUVRdzga4vtlVeelNBfSPLqmt
iGKBT7sw0re3EnriRzYZWRMI6H6kltJSeKpzXi21I9CdpPxqmUwKr+qTmswc
COzQaQwWyqVgNjVlaetC4IBP1omUOikkZszMufkQoBuMPgholsJ8gebS1u0E
JguDDr/sloLDOTPzki8JlPt9MxuiS4NX0HCvQQUBy6EqOerTsGXiVBFFEzj/
eS7Hw4CGz1xsZqvkBL6/GCq1Nabhh6sOvfWNBEbMR99X29DAvUnEyk4CXnPm
h86xaeAlzbKDuwgoJFqWFkBD1tIWVVcPgTDXcQUVQIM8zPuTvvsEEnhXjQUh
NIz3A/vZcwJlfeHfcnfQMJ+lreKNEViV6hHzcwwNhhbKholJAjVL1yzyi6WB
FRu0enqawNVNk1zHvTRwtJb0HJolAI9650/vo2HH2VsitZpAV1ZLrckBGpI5
ZT6CBQLbTE6HHE2j4X+/4D+/Mmj4G0V0SnU=
      "]]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-20, 20}, {-9018.99892979596, 6620.999125714325}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Print"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
      "]]}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwtlHs01HkYhyeVTUgRxv3WjtgY+e5mE+stMcomRi5n22QGZa0Yl1xiROPy
G6mUhty2kpRsSZ1S4nhrMC2S7aJENV1coq1hqNEh23b2j+d8/n3O+ZzzmHGj
2WFKNBpt0xf+W/7QpvHZWYK7Kotks+8FOJiiM9k3TTDE83pc4lsBei1+/rF+
imDg+JMP74YFaLqaNxMtJ7gejGeevhDgrdwjC6SDBPX7K1Ua7wtwge0jY7xD
8C+tS+ZJ9QI8Gh/smV5KkCHo3CJLE2DNnLhKmgNBKWfOdam6AOeHsez1ttlj
lU9+YCN9H2o9bo2sOLwStQuCGnpIBrLFJSFW7XbYaLAoP8o3HVPeO0fmv2Ji
xPnWZCVMw2uJJRG1m22xtu2fgNNTqeh1xM/0c/EKPLY++LWzegqyypu8PN5a
o8xbFPi3VTJWSZJ74rZaYSltg8/LHYkYlHlU++5ZSxxZylIM83djWvDcC6pa
DDzYKbbYdSUOaTYmza5Zy/CE5lyHt5Mx+GR/cU7NQ3P0a8pTBC/moeHC8OqJ
dWbYrGPNryqMxN9/sJ7fZ2iC9NS7YQkYjiEOz86KxQa4+fOUkdN0KFonOc5G
VdKRKTF7Pp3EwZNPfVuS12rjuUuNUz6+W3EoQ9uJRddEj1A71olVW7BBtNxt
2F8dX3qXlubO3YB2b3onmOXKGFj84E6A+MsPDX0qM/40LItzP6M/Zgq86lrF
Ei15M5fjeHt/riv477A4eS+1t7lsfgAndsQbJJ29ucT3sUvniWyXy6MB4Ghz
85J3kdyFV50XapS1HZQStPtD9WjA0ey84eEVAt+oeWdw3ylDi3JTuC5jJwik
Pa6xp9Rh47Pl7rLRCLhYmu2dNr4EGNFF+l28KIiuCF382l8btpf+uEFqGgNB
ESVGORl0eNhXResfjgWhT8JqUmYA/QfY3f1n4mHeUtHg3k/GsK7v8thQXgI8
6siSZWqYATur8OBunyTwS+GuKhGbA7bb8tWd9kCk6qh51y/L4Emkx5ClciqY
1LQVKo98C4L047+xJHxIuebqq1FqCbnMP51jLuwFXlXk1VVMKzhuVN52sCEd
1JQcuLYD1mA59pPuyMUMcNu1RWRdsAIS+LNyScU+oF83inZbZgvG19IX7cwU
wJFY6rDdIybEYr+PanImsLM325RftQPDxKl7vG1ZYL0106+SvxIODX4vDXTO
hp5BlYoCP3uos/DUcbfLgS7uwFpNEwLLNcxzJzQpeDHvjEJkToA/cKN+WIeC
iarwWj0GgXs3/Ab69SnQGx01NLMhkBouhFZzCkLjxj8y1xDovin7ILKn4JNg
9vymAALJ8c0hDmwKGKf19IWHCHT0/uq85zAFq1l93WoFBEwvfoiIElHw85uy
nPxCAgnZ+ce4xRTE2JhOFpUTMCEt8o0nKWi8wuiuqiEQn/fdOYM6CthtJLtF
QsDQ5ZNOUzcFYeGTTh4dBGK1j66ve0BB0sJ6eUcXAcmoTezpxxSUezly7j8k
EHOMc+eAlILhHnB6+YpA69htQZDsi2+SkjxsiIDebW4de4ICdYOW6jcjBKL/
mH7mrqDAfjtLd2yMAN3TzpFJE4LbHJWu+EkCUWbtOy3mCSHwVHumQkFA/DFE
pLtACBFueWtSpwnods3cUlUTwv/9gq/90hDCv+rLTs8=
      "]]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-20, 20}, {-9018.99892979596, 6620.999125714325}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Print"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwtmXk01c/7wO2ufb3WhGvJLq7tSt1HlvYSSpaQLSTJln1LUrYUopKkkKS0
CKn3o6TCp4Qoyp5sSfasX79zfn/NeZ15zsxzXs/MmZkzsi6nLN2ZGBgYmhgZ
GP6vjfy1b2ptjYpWYRPfo3NrcShcZLZrmYo3wl/4BGfW4n7+nvnn/6g4r5nq
dSqlFmVofiunpqkYvdhc7BlZi68vXib1DlHxmeBtasjRWiRpdGzE/6hYpElR
5tpYixmBzntirlNxVVycY/UW4n3GgDsM+lQ8tuNJOpsDgazuO7TFj2pjVINr
qmDUCxT6+tbndroWpjqrkRvUK9HyzTVX5YbNGPXUf1uE9jMM/7PV59KAJnr5
Kvy6T3+MlWeueT88oIHBq6nbimIf4v7Lh2RWc9QwkUt9D3N+Ce7Ifbl/57gK
bp9pq6u0LcTCd6HtAfbK6JRi/My54TY6xmeQPxVvQh7ln38OEjcxypm5jEtI
EU96zbmUK+Ygg7o0YXJOHl89+EoJsMvAzqSc8/e/UJBaJCL+80Uatr6VKXX+
RMHR1bfxErlp2LRW1Ez+QMGOdCNwjUrDVwEV4jE1FDz5Vy5NwzgNb9u33rcu
oGCshf3I/Xep6K3K07ziR8Ezh7wDjL6m4FJDjJgFNwULns6vJLEn4wZOz3sz
22Vx31Xj8dzcRHR81ZRMMZJFWa9etZ2xiZjvr+VnoSuL4uJ3PdjdE1Gxa1Gv
dJMs/vbuLapTS0TN0pQ6V25ZzDHsu0R7eR6373/S0/JFBm882BjO1p+AXpdX
yeWeMnhsVTZ/wfAcntBVYe3aII3OakKVuUpx6M9aVRTMJ43cDa8eVgrEYdiX
HbsFmaQxyctDaGgxFi8Guaft+rURP+rEM4X8F4slz26JV5ZvRM7S6eozAbE4
oiuqkWm+Ef2unfLpfR2Dx/VYbA74SWEJkSqzpzsKXfW7i9+8kURS0f3ckflQ
9CjWP2z+XBJnlv5ouX0JRW/xdOYPJZLYd2Pzm6XHoei3ZOL4MV0S+91XymJ9
QzGCuCf0zUkSP16U8/k1FIIZO4KiJpYkUK0lM5r/xxmst+G2FteRwEc/H1Iu
dAfhh/fujDc2SaB9XaBBChGETTSibKOkBJ4kjf0ovRWELZL+HPJMEjjjur1k
m2sQ9vR0vNJoFseW7kXS/ZFAXDheoGzqI45xmQl9N5YCUCXEcM33jhheyiwU
yaT6I/7YrzKQJYYLz0b688j+eNjE9ZDNhfX+Kk+fD/OnMY43+T7dVwxt2L9G
hNScxm93ftjwG4jhftL9JdMdpzHxc8yj8kZRjFy48fiiix8Oqbw7NjMlgtdL
2eTqHU9ixKWuZM+fIkhr071mqXISBef+PP/eIYLHLlf8EpvzwW21Yrxva0TQ
jlsp3TLVBzNtvKszE0SQN0V5Irj2BJrG8wjpS4jgE//rVt7a3pj/w6ou1JiM
gza9A5rbjqP2oPZimw4ZKYuLgnVCx7FuVGDzZiUy6kNz2PkRDxya/3R9iJeM
uxLGMq9neqCK4N4Aq+/CKJNX4jL3xx0fm5tS1M8I4zHVkBvHHrhh3UOdmN5S
Iewar3rtudsFD1UIVWy5JYTJbCnyFQouOFQzNZZ1RQhD9GU/aDK6IKnhkc2+
MCEMfvBfeFHlMdw3qKZZvUMIV1OX/9xVPobtYgrdV/oFkcmix7ZByBl/xZKN
dogJIreAaYMIvwNyRj78c4VTEGP8lVfUmuxRI2RXQe+yABYq8W+6k2iPwb6R
nGF9Atj/q9H3KZM9stn//FpaIoBfWdz1Di/ZorzOsyDBrQII+51HvFZt0GXI
+uGPY/yY1pi2oLrbGhP6JlxUrPmxd1jGbFzAGku+J4qcMefHOCY2BrZOK5xq
qYnkV+XHsuiKT6YnrJApeld2wjAf7p0Ro4+kWyJda+TzQR4+3OmgmJ/9xwKr
M5XMhg/z4OmiP2IdX/Ygyf6XK6MRDypxXb3nF7EHD8sUxknI8mCwWuHGYrk9
OFUih3vHuBEyS39PBOxGZdy4pTyaG/MiN9/9JLkLs0eFtcKKufBVzvvi0ERz
HHrYeuBKChd+vFfEVmNgjjpBl31L/blQU/3xpswRM/y0xlfabcSFFuGLoxz7
zJCNzLXJ5DMnijzRWJ6UMMUgOqMU9yIHLsd8O3OwxRhfs+AWhR4OZM9RTWtI
Mkb+hii7bXUcKNfps7PVzBhLrZev+qVy4FDdya/pLwAHveYFv1A40Dsoevik
PR0tM36Tbu4hoYzmoythR7bg5pFvM5q5bNiuOVOnv1EHAyfVlUXj2TCmdWIl
vJqKlfOxR1e92TB9S1Zgvg0VjdlU6psM2LDr6rRuSoY2WsqFXfVqY0V5GqW+
VUwLg45KGBZwsWIp0rjnMtSw2s3X9+IUCyZYVlxYGFbF1ROvb5/+xoLg9tGu
cJsqJoR5c0ERC1qe61NfnVDG7KvV379vZ0FDDXbBYNdNWP3ZLlokjBntbo7d
3X6Ngqtfy56sODOj4zjvk70kCm7vZRoe3MGMPuV846NnZLFxosTiCZkZAzdW
i3bby+B3riVZi3ImXBjec+u3zwZcM7ted2GYEdWURrXsvYXRdN+fBb9PjMgv
8zIg54wQJlqbqB+pYESjmY8vP58XRH7XsUzFeEacVGtuly/nR0rMluNvpBlR
Js6JQtrPiabVXRwrhxmQYdTLMDRwkSgruUt7t4UBZS4v8HXJzBNi1095pcsw
4COpF6LHOqeJ9nm2y3va1oheRbrf1pFRQiH8MH/u4irBUL5qomX6lFiwHz2l
VbfO/AmN3pHV9CajqE9vU1YJjPkiySHVQg9cvZs6IbNK9CZMi2fAIP117Cw3
7FghLqlZslfVzNCzXC74tPGvEEqyWdWrpvN0LxOpJs/OZSLR6aold+0/Oj+r
WVL6yWUCWVL1qjNW6U6JGRwDV5YIGQba0uoXZtD2UvI6c3SJGFQaWOIbZQG2
3TXvuTYtEW3GxTP0BVYo4xo8r1O9SFR6HTsowUyC5VQqW0LvP8In5/ae861c
0HzqnbtEyT/i+279fMcqbiiwsH9bFvCPQP2CmbQcHtgteDa+g209fqRbdOMu
Ptg4LTJ4onmBiOlNbTPl5oep1hIThmsLRPty4lG90/yQk9nCpKy+QIzbLp/u
0hYAn2APl5dz617l1R2z0gQAbBZrD+I8kV2+qen6iAAMi1Fiw6zmiTDlkYmM
TEHQu3F6rTF0jgjjL8op+k8IOCNZnZxN5giVUM1uKbIw/Dia82qGe47obHDa
tGwrDPHStZFSt2aJ1S2bLqx1CcMRhkM/yr1mie7BICY1cTKo9Q0bmVNnieQL
XcafrMjQept/2bd+hpD/ZteWWEuGwrN37JkvzRBhPGqJhTNkCHMzeHHVdobw
sTj7ZpeCCOw3a5JQk5shnnrU6AVbiQBF0TkMx6cJFjL1sma0CMyxzXyzrpgm
BGVMEkKLReDDr/O0kehp4vLenW9sPomA372HCwJC00TVhvxvPWRR2Mzre3Z7
7xTRN8BTdIEqCn/91XgDHkwRMn23+uQOiMLjjtHsgrApot5//kK5pyj4G92T
a9sxRajMl93SjREFav7xMhbyFJHX5Kb4JFMUZlgVabr9f4nQgxWS6vdE4an3
4Bv3h38J7kGILawWhaBPt/dnRfwlHvbn21AaREFP59i3+l3rfD84r6BDFOay
pd3mRf4SbrkOtuoDolCx8mNi0+AkQRH5e+71uCiccbkReqR8kjAK/KzgMSMK
Bu/sWC5ETRLsItdpkouisKAqnla1Z5Jotx2rHVwRhapLHeKjYpPESq4T8XZN
FKZHVXfpNv0hWiBTu3adA58WO2Z5/CHu3FLe0LkePxepEDjP8IdolKyOEFof
78yO2xeOXJ8gbvAPWvutz7fAL51XpTtBeP4wvTu9nk9o5/WnEs2/ibjeUN9b
6/kuFog1hHv/JoxDZMpDv4pC+MnMnu8sv4k5pvaTcY2isKwnOLs1b5xY6Na/
+7JGFCIZ0jjzaONEtveAjUapKKx+4JJhaBsjNFiCEzpyRCHmSqLuMd8xgoMz
RavmnCgwHmXd85o0RkR1vrXtOSUKcYpxznIFo8RQ68s1kyOiwDK5GhS/dZRI
tRaU/71NFNjOLtwy9x8hFt3MR8XYReH83qCKIu4RwqXcOSV/WARIIlONpKJh
wnF1b3nYexHgvDc219D1i3AQEohSOSsCSf6e3GrBvwhStpwSu6MIcBv9lE3h
/0VkZUUeAn0R4PvUvfeA2RBRHBZp1DZIhkvZ9i6Pen4SbRsc53WqyCDo8vWM
QNhPQvvxkv5qEhmEZz/fbi0bJNo0B/a2q5FBTPLtgo3YANH1Lqd90l4YcgaN
ease9xN11tnNI3LCIFH2Sk5iXz8R/W7bIddRIZAyrtz/PbaPqO5YYBj0FwKT
j4d31bb3EJ4zNtOn/AXhsIdcfkvEN4JSHPifpQY/XDwdkHj52Vdi58ZC4azX
fPAy4s0py4kOwjeItZxRkQ/kr7hua3FqJ6IdPKedf/LAFFHQ9Xl7K/HU7hdn
tzkXbKTuVLst0EAwxHAPvc1hhXO7hhdlz74nLA5wR/F1ssC4U+KH/Jl6YnZD
PqEhxgLVye898jveEKkW5n0sqUzwoCl9u/GWF4RQ036yQ+0qfTI7x+1vThzh
6c5T9nHfX3oEU8ZbcwMvOq/tm78fNvyha1xzfSesl0Y/9uzCrudZY3Qr6tea
BOM79IB9LvUaQYP00x4nRuoyKujKry5dVYl4R2dgeLbm+uodXeZ2Y1TNuWHi
XdO3i1Srr/SblPtJFW5s6BnS+c5e9Rt9zqrrWeBFdiTJd7HEM3fSjeXMRaLL
Sbg7/HtU25Muul1KUoY9Mxc2Kff4Bwn30AVUydu9nvGhp4n/g67RfrqpzqXc
7YXC6HPrTKZU6Qi9+meUoejFjWioXvvY4uo0/Xfja1nNo8qo29ae9erDNF3s
oH5oS5Eybg4fD1NbnqY32l6+ajuljIofRE1Ix2boSidEdvOcV0Ehd99WQmWW
bvuGz7evTBXHb0jOaLyaoyfOXfozPaeOedzBujw//9E/HU8Z2KqphdeeJImH
iy7SuS3EmJwPamGWXf7K8K5FevKBmESHAC1MLm56W1e2SGf+FPijr0ILQ0zl
DkeELNHzvJskOYzW7xsRzcFjXCt00pjEBYVtVGQKJn93E2cAxzp7qYANumjn
XNJSqcMAbQfjzjYZ6uLj3fQP3BYMIOF5Taz7iC66SHtVPE1ggKniKUHFDF18
/b7mEssMA2BzkrQmux6elXQzu/OREUKcCyytu/XwO+u/LQsj6/y6JAnn9VBn
MkV7L+v6usj4y9DOr4+Ddc+lZ7YwQTZz+sCCsT6a+nItmtxjAkdnJ2eWW/rI
Uvu4bOAsMxx8GTHlvNsAHe7vuKufxww7vU1aJ48a4NPM79eTqpnhm+/VFYnT
BujmzXaB+pcZni4Y+htmGeBbITvXs44soOZW+TipywA3rk7YdoSun8ty2s9b
xwwwePishWomC2ip9yaVLRmg4ssHW1sbWcA6V21ETIKGCR6MYnI0Vnhv/Gl3
4UEadltk8Z6xZgXKI2qxtyMN9baosjaeYoXoowEO1d40HOI7NOVfyAryfzq4
F2JpuG1xZLi+lhVsLhWqDCbTMGswqkfiByt4jRb021yloXlVcdNrITZgMoly
aymh4c2CrW9ENNngzCqLRccTGs6ltFR572aDO+M84s41NNwfcvzRK3c2WBs7
2XyijoaFLsuFgrHr3Pkv4V8jDVf3pud63GADyeyEfaRWGh7WV8yofs4GDYwj
Ole/0bBM9sVF3lY2iJ2b3Xe3h4bs3BaxLhNs8Nw67p7WTxoe2WSHehzsYBdp
sig/SsOS7W5rnPLscOLgvuCcCRouH/Xd1rONHWZFD25JnVrPJzQk8oktOyyK
MhxnmqPhrYy4mvOB7BCfzSU6u0DDqYfJS/Zp7JDVK+/lvkRD08Ysw80l7GCo
vxJmubLuY+hWKMtbdggaMPN+sUrDYcb7lV972GGv2iPrvDUaGko9my9dZIf3
R37brKxzsgGhF0smweTDsvS2de62+hB0aDMJ3ofclZZf582nWp8q7yGB7WKc
9Nj6+HEXf0yvuJOgKHyhTGmZhm13f2m3xJDghcnzsa5/NFSs/Xu68DoJbuT4
TTPP0zDk+9KjsAoS7K/7MpA3TcOGedbJ/Z9J0MmZ3Vn2h4YbhPg15cZJYPbU
c1ZzjIa+GhK+82wckMX+7yBliIa4S/5BoywHtO1Z5DnXS0NBd43xPCMOYHkv
tcOmk4ZuMQaqgTYcsPmNsGT2en0qrm/33unPAQ7xl4rMm2hIer733oYUDkix
3M7psl5fu5bDw5NFHPApsMt55MV6fUknPHJ+cEDG50Rng3s0tJAPuntygQPk
r62Zrt6k4W169KCxECd8b6FkqGXQ0Cz4isvoTk7of0QdeRWx7js9N/+VKyds
GTyrIuu37ru0qPdyFCd8KTDbN+yy7nfgheOWp5wwOdD/IN983e/q21y+T5wQ
MiWz6bL+ul+J5u8DI5zgfC9zYWDTuk+LQbtkaS5wVBuWKGZb9+kzkeNsyAWx
CUpFYrMGGHJ+4avOIS6QvuvG9KvfADe84rb5cZEL2vdk3sipWd+vqrpWGnNc
sMxslLfV0wArzOmXmQS4Id38Vf/ZgwZIctn1uV2VG1rP1ffLGBpgafbRA9HH
uCFYRCPNnsMAZ1gT9jQ3ccOo6cuv1Xn6aC576eKdX9yQrdVKv3lWH7ONrn0I
YeIBJat/Fp899NEooGyHrAEPMBzcMkxR1cezve0m/gU84LD8T9n+vh52V+05
GVLDA6jgmvc7SQ8Nr2BW1Bce8Gbtv9x7Qg8nzUpGLrLzgufHLPJPZT10vB+Z
VnCCF4bbyYHWN3WxOn6q8l48LzgyedS1h+oi2fF4/8NcXqgrf/7libUuNvEf
1K35xAumZ784hJN00TBYvquNygeDoPNL1VMHsw7ksHTt5YOPXR+U/bbp4F8l
Xo0+dz5wfL/Xj0NYB4u75mN+X+UDjchLKgYvqShi3KjItswHGXd3bvNnp+I/
VlqVpAs/mPqZ61SGaWGh//R/N335wVE7Ln/OTAutex70y4bzg39fXHYUvxY+
qqRwK2Xwg/PvnWaeBZvR4wS3k049PwSKbSdJxWpiW3MPyz4VAfD8cPUz10NV
jNt6TbxZTwAM2A/U8Gio4uYSaw0rEwF4dIhen3RfBZPOfrCxdRCAI1MVYXP5
yrhd70mJe6oAMDQEGjpGbMJH1xMsoqYEoHmSqNQdomCjUMIvPgZBiG/MVt9C
p+BQ0rmofB5BYAn2P3w0SxY3RMSX1ikJQtO5VP/JbTKY6BBH4nISBBKc0N46
JYHOUlF4tVEQYiZjJJiBF8MzI22UvwmCTAFXWccmLsziiZyoHhKEyd2r8/fY
Sdi0Er6hm1EIbhU99VR5yIgG3aEh8gZCgHtttusH9BP8eUGby+8IQYyYdel7
IXZQFQ16t/3xevyrw1MJDznBPC3QsY0QAouq5Os1VrwQER2QPN8pBPy4XPal
UxCGnU4PbxUQhmGO1ndafhKAMidvNUSus4322RFdBTh1241/8DAZsqTM2sh+
VEgNzbmR6koGksvjQokVKpRZfFSi+ZHBWYmbWSFJByZW9Y1TL5DhvXay1b4S
XfCx5/I3qCGDH+sfZcZZffAWftyaLCsC23+8PXqjxgg8EtaydMdFwIk8qzeW
bAIJR3XkehdEwKS3oClq0AQKdbweXmRdfxc0uvHlG5nCz/6Wdz0bRWFnjIz4
lQlTcKMXLlw4KAr45mqxvq05uCzsteuuEAXtzzv523ftAkfva1LnY8XAcvK/
90zXD8DSN46Pf1PE4Hmk/uo5RgvI3hUa5XBtvX+Js7tN1wI+Kx3p0XoiBnqZ
VDnLPAsw/UXO/z4oBkvGX+9/CjoIym7p8to7xaHvVMfCymYrmDmaqPqDVwIa
88czjvUdhkv/zXftkJSAv9kZP1ilbUB96/Hkx5skoMGIlbToYAMeG8x/nwcJ
UDGuetbyzQa+dTI/1PaXgErDKofdHUfglU20duIXCUjri5EM67ODCweDadQb
ktAa53uKrOMEl5tUfErvScKR0y9LNsc5wY0dPTcVnkvCcnnKlUfNTvBo604W
sRZJEMuJvndK3xm+Kkt8WmbfAFLPZI6vdTiDEtMrt/qADVC+N/XPC4oL1D9m
vWS7Rwo6w6O+nu5xg2b16tctR6SgXmmgnZHHHTqLfWf3eEgBf75R7TtDd5i4
2WG3LVYKOEICm2az3EEk6Z6C3HMpKDx6rufHQQ9wd933YpyyER7PZ3PPfz4O
LMKZQ9GLG2F6eEJBZNkbBCeieAXZpYGDsbtOWP0EyL731LsjJA0NCqqnzRxP
wLYIo4T3atLQuXN1/9baExA6OKAg4CQNMz8c71+44AMTT7Xdb7+Rhn0X0eye
nC+MqwyfdjGXARk+53Arwg86Gs9NxvPJwscBXLL1DoSMbblmh0RkYfEUnys5
ORAsy59eU5CShdb6pby/DwLhY9aAab2KLBjnr37hngqE+mPGOezmsvDgdv/n
T+FBUDG/bHwxQhby7jQzZWYGQ5Zc4JW0EVnYyXVfJL4/BA6Fu+hde0MBj6vJ
p6k/IyErV5ht/gMF9CKfSnzgjoJ2ov6LVTMF6hzu5kXpRMFhFtUgnh8UuGOh
fnJXfBQcSZl+EjNHgaS1QU8nhWiwy4vXOq4sByIpz6oa9WLA+U2hmk6aHDgU
7FAzT4oFH64xykc7ebD5Lw2zPOJhLLSaheuYPNjnTWoKR8WD9/CFoR3H5eHl
NnmX25nxcPytUkltgDxEkN8q/K2LB5doD61nyfJwyF/3wxH5c2A73Ue/8Uoe
Vl2Fwg8NnQPzrq8O3hQFqFjqcFA7cx6k79dnsY0qgOJtyr3U/y5CeKWJFd/1
TeD0ufjqvvh08Cv0qdDTVAaZDkG1bKYs4GbSd9H4qQJVX2/S9O5eB7OT1pkq
V9QgSYtE42HMB7EqqVNm8hoQvh2sSY534LJ/YvrmDk04+uDjr96QYrBMOKCe
W7EZvsw0tx1/XQoq9vGH7kRqwbk9rCeeP30E7UMct68c0gar5/JZyVFP4KPL
T2NBaSpUuR5Kt7CvgD6WooVMChU8eGtsHnpWwEyh50NxRSr4nZBzFAquAPGx
sQ2y6lT4j8ymOXapAtwCpuY1t1Dh4obslW/1FbB4du3BPhsqTJxp13pGfQ6K
d8UlLqRRYSZzgewlUAm0HV3N3Feo0FUv8eW0dCXsHblx/lIWFSQDm2ai1Svh
tLrM7NVcKvRtmLQt3VUJNc8UmwvvU+FI9rMOs7hKsKynJtS9o8KXGplzETOV
4O45a7SzkQqvlSzfdTFVQQjn8+nGj1QgBduFgUAV5O43PNb6hQptKYz6EhpV
6+c2GPUPUGF/geImPs8qWAxhmnb/RYUnnMnc14KrgEey7t7IKBVmWce9Vc5V
gbbTDtG/f6lAS3+QZX+7CswYOT4Gzq7nxyPmsfyoCo4UNMQvLFDh1nzq49tE
FXibJW+JWKZCbZ1I5P6PVfD//5Vwc+xJ/dr3KvgfdnvOdA==
      "]]}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwtlGs01HkYgCfFRqzrtKMM0TQyjNtvpWHilZ2lLQyiop0Y1LhP5p+UUWvd
0sU1dUxNZ8kqa7f27KrUKm9RNtUkNpdUuirJKmNOcrSz7Z4+POf59Hx9bMXp
YQk6NBot6CP/OedF0IRWS1BX30GtHZficPZ8zeAMwaUWVz0+H5NisMnQu3Pv
Ca6yic2yeiXFRTzph3Q1wRKP6g/Ln0nxyt6KuY+GCc4X68/N6JfiXOc+a7z1
sf9jxOoZSvEgFbP6uyMEV6f+9PWf5VJsnCWro3kSLLvjqCgjUtRNCHC3/NYd
Ex8IfEpVaWjefzWlttwNWZqJfSahqRjWpohz6HRFL+crCqPBZMweX5FS9tQF
80x2JqwTJGHzdkXS6RBn5He9kTV1SjC4ImLRP9VO6MAT+ohct2CA8mJw4GsO
ytruXM9TJmB9x45eWbQDOjmaVbcsiUdR/kH67ZP2yOB7s1aWiHFXzOxT88zZ
mMlZrL5nGos0rk2rfwELY6govSHeJry3r7qo8a4d8oZ9j9WYbEQrA0nD5Epb
nDQ7fnEvcwMme3B0B61s0KKib63RaATGeT482da2EMfChWlFHWHIyfLSptUx
UFhzwFrYFII1D8Lbd/jRscSXKWyPWoUvcun8AIYZloefLCtI9ccLVUsFLyON
sIXxc65axwtdRwYmXZR6SHHcemW3OPjVhUH9D5E0nOpptT/hNt0qbTg9ZWqu
bg2uPRvkw2dD5ObFNd3ygdbZTd61l/Q8oePmwF4S3u+rLRAY4AY/8OJe/k14
WO1LDnT2jJ0KAJ1M+v14SxrUWq8tUR0Ogs8Mhbniv/WgrkDpdEkbCnmPev0z
jhuBz/mbpUpWBPx6pFC4a8IUNG67kiPN10N6bbzJs0g6BK4X3d7mFw2iJAWz
KJcBzW3YmMYTQXFoJo8cXQjLM8d1lpfHwByLquHd09YgfkyfTF4ihr4bBW/y
jW1hQXpOzf5jcRCRLV6maLODH8JnKmI8EyBl3qidKooFZ6JawPbMZrBpvHZI
79USSIUo7mZHCWQ3+4cbH7EHtdxYJLqcCNL6lLPLXBxA/77uan9+MhjqeIqd
n3NgtNxcPtibAoLUtVWcSieQsrWj7xLTgHGemS5gOUPhA0fGrCfpUJGxp9y1
zwWaNJ7tD1ukEFYYwlWedYWxAzujSPZW4ETnR9TluMF2upNJp0cG9A7r11ZG
uENi4MgWL5oMVOLnfmY2BGoMO5i2F2XweM6JqSo7ApUHrapTUAaT9ZLTlmwC
BVYZFs1tMrAcHbWy5RLY4sScF9Ipg3jZxDsXbwLOa2RT8j4ZTOdpfwlaR+DC
Ppue/rcyYP9ouaC4lMBfBll7ytgU8AIGuwwrCVytuDX7vgMFa0aOFpUdInBu
weLd9lwKtnIXaQ4rCSg4qm2XCAUtZ9hd9Y0EYr5hxb0GCsKukcL2DgJjxV0r
AqMpSJBo+IE3CAyZss9XiijIMjinvqEi0FWd/eVQLAXKYK/YnrsEfm9gO2ZK
KHjZC/wnTwnsvC5n1G2jYDpLR53wgkBSaHfleBYFRgvbG0ZeEdg4YG/sLafA
fVPAF2/fEvAd6dbt/p4CwSx9FaUh4LZ1aS6zkIL1xzvzp6YI2L3PmZEUU5Ak
2O8tnyFgntuzvWk/BZ/+Bf//q5SCfwFXFDRx
      "]]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-20, 20}, {-9018.99892979596, 6620.999125714325}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Print"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
      "]]}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJxTTMoPSmViYGAwAWIQXfvc99P//8YHGMBAwmFKSYJ3w2wEfzVj8RIGcwSf
NdXdSDLWCM4XvnE0Z9FEQzg/6PCsZM1TBnB+9XvbnAmP9eH8HeWzstb768H5
fpNCFf7N1IHz3efu9fN4owXnLzteea04WhPOj2uZInp+hTqcX5fAvI5bWA3O
Z9CV3+/cqgLn3+qe2b76qhKcL8OVsfKLkyKcn22qxXpbRh7OTza/t+LwYWk4
X6vC6n/eEgk4f+Hd4COVjqJw/vNGURt3CSE4f9dUDdcXYbxwvsHLm1/057LB
+S67bnP+DWOA8wtWrv8hKPx5P4wflqa88FLNTTj/+JmbXcbBN+xhfCvdg5sC
pn+G85nKRO+kSDI4wPjsPAGNSe/Y4PzmB9ecixbzwvkbZrcF1H0ShPPzF6UI
PAkThfPjsmbJtjdKwPmdgWWWxnOk4XwWkanP6n/JwfnXT7d+aOFXhPNDq5PM
Zh1WgvNzuF8rnYtSgfPlVx+bxvZKFc6v3uEczD9bHc4vWJazzUxfE87nYTJP
0nuqBee75oZM1ZqsA+dL7JTNd1XRg/MnFXVMNLiuD+cHtfnrzt1mAOdrRbeE
Lqk1hPOvPeNcNDnUCM4/l/TUUUjeGM5XWyop1dmP4EPzC5wPAK1sy6I=
      "]]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-20, 20}, {-9018.99892979596, 6620.999125714325}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Print"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
      "]]}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwt1Pk/1HkcwPFB2YQOmpD7WCRm8NnIUd6FxibXMJpKYsb3S1buoqRlSbHK
1UREJdlqtu3YRzlivQspZMuWEkksQ3q07uRB9njsD6/H6z946goiuJQ0g8Fw
+6d/nyhxG19YILi/LH904TwNgwmrp7rmCApdq2LiztHgvuLtp4rPBPnjr6c/
FtCgYxM5HzFB0Am05t/k0PAgI3dJ7yDBNd1lcjUpNCxhvdTCJwQfK9/Wiw+m
4XRsgGtSEUHDlFafURYNYqmYMoY1wd5AqareWgoWUxxLtT2WWO6Vza95FATK
rxrDSnMskJnnX93RLwRufaFwbbM51qgvyw6XEULCXxvDsvvZeKejz15qhQAq
4wpDb3iwkN8/LW43DQT3XJ7Ol7OmuF3PfLzEKgA4xbXuLh9McNRTxH+W7g/l
TYc6YnavxSLGt159D/3AP/U08/crRvh+FWdm6M0uOBog84u8siGeaq3X38/c
CQwz7TrHYwZ4QUnG+gNvB7z+8exx8Qs95NVmzgRE8kBjacjVyS26GCAv2uQt
9obv1pss7tLQRoXfJJZ26AVC654r9fXq6PHls6Z9jQeYxNsuhJepIrtJ9+3c
hu1w8Y13w6HNTOTt7Jm7ss8FJMlMe46qEhpYFuh7djlBtcjYechXEW2eD5b3
MTaD+XDnJLtYFn0ND0y8iLQFp+ouuXlfBmZaqIi7AwlEXr0xs1J5oq6kpNE6
9oAR+NL6F9uPdNZlD186bOWrBE2tnRnE+5VDgOz6ubN7ZNDW7P5tz/wJh3dc
tce2Sw1Q+iCzO0iNAQ8MCuJyNCzwKwXPZMFHWTihePgZq3UDpvR2OEZfUoRt
PcZbR9cB3ixK8zw6vhIMI/LXtN10xIjSoBV/+jKh1ioqF5M56B9aqHk8WRWu
VbhJVa50xXSvgzbknDpUq1++UJXljotWiQa/n9WCLV2/jklMvfBly7HR1OW6
wD125tSBMS7yEgRWhfV6gM2sRMVuHwyTH9Fr22UAr8NcJEblvqgtfnhG9v3X
kJJ0fh8nmI8JlY7ey4uMIIP988Yo910YWR5214q9FjbZ2Z7UZPqhgrS1gDVg
Au59iaznUv7ovN9HZJJnCh9nv0iyBvaiapVmhLMBC7Qqk5YFPw/A3OgTOeYv
2RCN3V7yjwORm+ZhVnzXHDTiPrdHXhegye5UXlmiBWQNftPLPynEjkG50jye
JdzSd129NSkI2wQDm5W0CRgv18uYFFD4btFPMyI9AokD9yqGaAony0NuqBkS
aL/HG+gOpVBtZERD14zAkZB0aIymMChm/BPbjsDT+6PToh8onE1ZuO62g8Ch
2DqhdSmFhpfV1qRnEWjp9Nt4+B2FNpyupwp5BHRuToeGD1C4ffjc8ewzBA6m
ZRcIhimMMtOZyi8moE0aJraNUVhzx/BpuZhAbOa6a+pSNHIfkrSGJgIaDrOr
a3VopEKm7F1aCEQzTzvdMqAxfmnFREsbgaYRs+jLxjQWu9sG/vGCQFRB4JOT
5jQOdYB9Xz+BxrFHKf5A42y89AQlIaD2SHCL60SjonrD1eH3BCJK5nq2utBo
uZejMjZGQNXV3JbtSaOzlFxb7BSBcN3mYH0fGvmXmlNnZgjUfxKKVPg0hjpn
2h2ZI6DSNv9A3o/G//2C//zaS+PfOgtJqw==
      "]]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-20, 20}, {-9018.99892979596, 6620.999125714325}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Print"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
      "]]}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwt1Pk/1HkcwPFJaimKJGTKkQbzMDP4ROvYvJFGBzGaaUuJcTSZ+Q4iKbJE
UdtjKyLR7CNHU7M6VNvBZr3XKMtsujbnbulSGpvNjCWp2eOxP7wer//gaSdM
4sXr0Wi0kH/693tehYzodAR9+9LUOj8pDGTOG+2bJNhTXzm80kcKoSZPxq6/
J7ijrENT7CkFW6/kj0kagnV8p0lHlhSaDxYZ9A8QXHSvzyhsvhQM2F0L8Q5B
o1sB7FNaCo6lRa/OqSD4+IJJCigoqJ2SWkNbSjBn77m/cuZQMC2e62612R0L
LcSq0yoxmHXfklQddUN6i1N1anki8JTlsc7trvjBQWS+LGkbZA5/ITnynIOy
VHb4OaYIbuwsT7y4lo3tPZrDyg8JEFrEt/10wgUbWFCWfSUeuLLG0OAhJo56
zPLxTIkDeeuuztRIZ7zJ7+svXR4LUfnHzO+edcQVsZywik8xkB099cJMMwZG
Fe5tDu6IBhrLpilwnwPmKC98+5K7BXq/PlFQ+8geW8MTVufiJqDPECm0AXbI
nE3/JI3bCGIP5rQ+ug2ann0SWPNoPcQufXxWqbTGgwr5jw94fGBmeOukNZZo
2yv2i/jAg8rfI1p2+Zuj18CyCOuUMHiVa+7LtZyDvQG2vYkOa6ChxCnotcAY
1yQ/JuwpXHAd7NFyZNPxhbR67PmoPyxv6DP8KKBhwvG2bzL3ekOy4uK4qZmm
aW5T3u6QUFcQJCyqfJDV04SHesdlC6yh9ZeegySi28/lyoqwO1n66M366XLY
cY1fl9LO6L3QGfXSzX+Ls6LBVDfbVRYMT/zMKCxX+HY6TDOc7G9zB8zr7wzc
Xm0MQqenl0u8g7CuYn9Y9ogpFA62ZTSqV2JSVZzJC4E5yDWllgK9tRiVWL6g
INcSbt8lgsVPw/FAeLoXOWkNjo2WYobHOtSfWzLw1cRCmHp3eOjJDwLsUu37
M3+2HTRf+lnEtdiA/EyhZ7nSHmj1xeFbT0eiZKbavmOjA9gfjV7iYRCFNrW3
S6e/WQzraebv8jnRmHkjMGJ2hSNsat+evTotBpPlkmueHGf4Neu+wbZqIRrp
LRWyXzLhgL+i7Zk6FoOodSXMYhfQhuuGt7Dj0bJ+QVKQAxserBKYLYlMwKLt
hUdduzjwls+g4iq3Im//WpbsmitkrhxTqu+LkBmZz6/Z4wZNhSty0ie3YeeA
YVUx3x38e2elbgYxdghf+s+xIeAxt1tYIZXgU/0z4yX2BHgFE9r+VAlq5aKL
VgwC0gl6AWOXBK3Uarodi4C8P6b2Up4E41JHxjg+BOadV2tayyQ4kac7H7Ke
wFiQLl/bLEHGaav5Bw4TqN/JOBNiQaEXt++eUTGBzjfBXsV0CtcMniw4Ukpg
ZLNY1W1HYQrLdvS4jABzed1wrAuFN68y7slrCZSbeH++259C3m2yv6WVQKYi
pE0upjBeNOobrCJQRk+OHEqmMGPGdY2qg8D3h4v+cEunUBbqHfPwEYGhHV2m
jTkUvu4E32fPCWwKiNn4sITCiQw9TfwrAjuv5g1ZVlBobN2iGHxD4JiTPDvq
FIXuW7gW794RUM1SVw1+R2HQFMOOtFECr3ONPTh1FH5Z3Z4/Pk5Af5TTmnaV
wsSgQz5ZkwRsRLwNDQ0U/u8X/OdXE4V/Aw91TGI=
      "]]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-20, 20}, {-9018.99892979596, 6620.999125714325}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Print"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwtmXk01c/7wO2ufb3WhGvJLq7tSt1HlvYSSpaQLSTJln1LUrYUopKkkKS0
CKn3o6TCp4Qoyp5sSfasX79zfn/NeZ15zsxzXs/MmZkzsi6nLN2ZGBgYmhgZ
GP6vjfy1b2ptjYpWYRPfo3NrcShcZLZrmYo3wl/4BGfW4n7+nvnn/6g4r5nq
dSqlFmVofiunpqkYvdhc7BlZi68vXib1DlHxmeBtasjRWiRpdGzE/6hYpElR
5tpYixmBzntirlNxVVycY/UW4n3GgDsM+lQ8tuNJOpsDgazuO7TFj2pjVINr
qmDUCxT6+tbndroWpjqrkRvUK9HyzTVX5YbNGPXUf1uE9jMM/7PV59KAJnr5
Kvy6T3+MlWeueT88oIHBq6nbimIf4v7Lh2RWc9QwkUt9D3N+Ce7Ifbl/57gK
bp9pq6u0LcTCd6HtAfbK6JRi/My54TY6xmeQPxVvQh7ln38OEjcxypm5jEtI
EU96zbmUK+Ygg7o0YXJOHl89+EoJsMvAzqSc8/e/UJBaJCL+80Uatr6VKXX+
RMHR1bfxErlp2LRW1Ez+QMGOdCNwjUrDVwEV4jE1FDz5Vy5NwzgNb9u33rcu
oGCshf3I/Xep6K3K07ziR8Ezh7wDjL6m4FJDjJgFNwULns6vJLEn4wZOz3sz
22Vx31Xj8dzcRHR81ZRMMZJFWa9etZ2xiZjvr+VnoSuL4uJ3PdjdE1Gxa1Gv
dJMs/vbuLapTS0TN0pQ6V25ZzDHsu0R7eR6373/S0/JFBm882BjO1p+AXpdX
yeWeMnhsVTZ/wfAcntBVYe3aII3OakKVuUpx6M9aVRTMJ43cDa8eVgrEYdiX
HbsFmaQxyctDaGgxFi8Guaft+rURP+rEM4X8F4slz26JV5ZvRM7S6eozAbE4
oiuqkWm+Ef2unfLpfR2Dx/VYbA74SWEJkSqzpzsKXfW7i9+8kURS0f3ckflQ
9CjWP2z+XBJnlv5ouX0JRW/xdOYPJZLYd2Pzm6XHoei3ZOL4MV0S+91XymJ9
QzGCuCf0zUkSP16U8/k1FIIZO4KiJpYkUK0lM5r/xxmst+G2FteRwEc/H1Iu
dAfhh/fujDc2SaB9XaBBChGETTSibKOkBJ4kjf0ovRWELZL+HPJMEjjjur1k
m2sQ9vR0vNJoFseW7kXS/ZFAXDheoGzqI45xmQl9N5YCUCXEcM33jhheyiwU
yaT6I/7YrzKQJYYLz0b688j+eNjE9ZDNhfX+Kk+fD/OnMY43+T7dVwxt2L9G
hNScxm93ftjwG4jhftL9JdMdpzHxc8yj8kZRjFy48fiiix8Oqbw7NjMlgtdL
2eTqHU9ixKWuZM+fIkhr071mqXISBef+PP/eIYLHLlf8EpvzwW21Yrxva0TQ
jlsp3TLVBzNtvKszE0SQN0V5Irj2BJrG8wjpS4jgE//rVt7a3pj/w6ou1JiM
gza9A5rbjqP2oPZimw4ZKYuLgnVCx7FuVGDzZiUy6kNz2PkRDxya/3R9iJeM
uxLGMq9neqCK4N4Aq+/CKJNX4jL3xx0fm5tS1M8I4zHVkBvHHrhh3UOdmN5S
Iewar3rtudsFD1UIVWy5JYTJbCnyFQouOFQzNZZ1RQhD9GU/aDK6IKnhkc2+
MCEMfvBfeFHlMdw3qKZZvUMIV1OX/9xVPobtYgrdV/oFkcmix7ZByBl/xZKN
dogJIreAaYMIvwNyRj78c4VTEGP8lVfUmuxRI2RXQe+yABYq8W+6k2iPwb6R
nGF9Atj/q9H3KZM9stn//FpaIoBfWdz1Di/ZorzOsyDBrQII+51HvFZt0GXI
+uGPY/yY1pi2oLrbGhP6JlxUrPmxd1jGbFzAGku+J4qcMefHOCY2BrZOK5xq
qYnkV+XHsuiKT6YnrJApeld2wjAf7p0Ro4+kWyJda+TzQR4+3OmgmJ/9xwKr
M5XMhg/z4OmiP2IdX/Ygyf6XK6MRDypxXb3nF7EHD8sUxknI8mCwWuHGYrk9
OFUih3vHuBEyS39PBOxGZdy4pTyaG/MiN9/9JLkLs0eFtcKKufBVzvvi0ERz
HHrYeuBKChd+vFfEVmNgjjpBl31L/blQU/3xpswRM/y0xlfabcSFFuGLoxz7
zJCNzLXJ5DMnijzRWJ6UMMUgOqMU9yIHLsd8O3OwxRhfs+AWhR4OZM9RTWtI
Mkb+hii7bXUcKNfps7PVzBhLrZev+qVy4FDdya/pLwAHveYFv1A40Dsoevik
PR0tM36Tbu4hoYzmoythR7bg5pFvM5q5bNiuOVOnv1EHAyfVlUXj2TCmdWIl
vJqKlfOxR1e92TB9S1Zgvg0VjdlU6psM2LDr6rRuSoY2WsqFXfVqY0V5GqW+
VUwLg45KGBZwsWIp0rjnMtSw2s3X9+IUCyZYVlxYGFbF1ROvb5/+xoLg9tGu
cJsqJoR5c0ERC1qe61NfnVDG7KvV379vZ0FDDXbBYNdNWP3ZLlokjBntbo7d
3X6Ngqtfy56sODOj4zjvk70kCm7vZRoe3MGMPuV846NnZLFxosTiCZkZAzdW
i3bby+B3riVZi3ImXBjec+u3zwZcM7ted2GYEdWURrXsvYXRdN+fBb9PjMgv
8zIg54wQJlqbqB+pYESjmY8vP58XRH7XsUzFeEacVGtuly/nR0rMluNvpBlR
Js6JQtrPiabVXRwrhxmQYdTLMDRwkSgruUt7t4UBZS4v8HXJzBNi1095pcsw
4COpF6LHOqeJ9nm2y3va1oheRbrf1pFRQiH8MH/u4irBUL5qomX6lFiwHz2l
VbfO/AmN3pHV9CajqE9vU1YJjPkiySHVQg9cvZs6IbNK9CZMi2fAIP117Cw3
7FghLqlZslfVzNCzXC74tPGvEEqyWdWrpvN0LxOpJs/OZSLR6aold+0/Oj+r
WVL6yWUCWVL1qjNW6U6JGRwDV5YIGQba0uoXZtD2UvI6c3SJGFQaWOIbZQG2
3TXvuTYtEW3GxTP0BVYo4xo8r1O9SFR6HTsowUyC5VQqW0LvP8In5/ae861c
0HzqnbtEyT/i+279fMcqbiiwsH9bFvCPQP2CmbQcHtgteDa+g209fqRbdOMu
Ptg4LTJ4onmBiOlNbTPl5oep1hIThmsLRPty4lG90/yQk9nCpKy+QIzbLp/u
0hYAn2APl5dz617l1R2z0gQAbBZrD+I8kV2+qen6iAAMi1Fiw6zmiTDlkYmM
TEHQu3F6rTF0jgjjL8op+k8IOCNZnZxN5giVUM1uKbIw/Dia82qGe47obHDa
tGwrDPHStZFSt2aJ1S2bLqx1CcMRhkM/yr1mie7BICY1cTKo9Q0bmVNnieQL
XcafrMjQept/2bd+hpD/ZteWWEuGwrN37JkvzRBhPGqJhTNkCHMzeHHVdobw
sTj7ZpeCCOw3a5JQk5shnnrU6AVbiQBF0TkMx6cJFjL1sma0CMyxzXyzrpgm
BGVMEkKLReDDr/O0kehp4vLenW9sPomA372HCwJC00TVhvxvPWRR2Mzre3Z7
7xTRN8BTdIEqCn/91XgDHkwRMn23+uQOiMLjjtHsgrApot5//kK5pyj4G92T
a9sxRajMl93SjREFav7xMhbyFJHX5Kb4JFMUZlgVabr9f4nQgxWS6vdE4an3
4Bv3h38J7kGILawWhaBPt/dnRfwlHvbn21AaREFP59i3+l3rfD84r6BDFOay
pd3mRf4SbrkOtuoDolCx8mNi0+AkQRH5e+71uCiccbkReqR8kjAK/KzgMSMK
Bu/sWC5ETRLsItdpkouisKAqnla1Z5Jotx2rHVwRhapLHeKjYpPESq4T8XZN
FKZHVXfpNv0hWiBTu3adA58WO2Z5/CHu3FLe0LkePxepEDjP8IdolKyOEFof
78yO2xeOXJ8gbvAPWvutz7fAL51XpTtBeP4wvTu9nk9o5/WnEs2/ibjeUN9b
6/kuFog1hHv/JoxDZMpDv4pC+MnMnu8sv4k5pvaTcY2isKwnOLs1b5xY6Na/
+7JGFCIZ0jjzaONEtveAjUapKKx+4JJhaBsjNFiCEzpyRCHmSqLuMd8xgoMz
RavmnCgwHmXd85o0RkR1vrXtOSUKcYpxznIFo8RQ68s1kyOiwDK5GhS/dZRI
tRaU/71NFNjOLtwy9x8hFt3MR8XYReH83qCKIu4RwqXcOSV/WARIIlONpKJh
wnF1b3nYexHgvDc219D1i3AQEohSOSsCSf6e3GrBvwhStpwSu6MIcBv9lE3h
/0VkZUUeAn0R4PvUvfeA2RBRHBZp1DZIhkvZ9i6Pen4SbRsc53WqyCDo8vWM
QNhPQvvxkv5qEhmEZz/fbi0bJNo0B/a2q5FBTPLtgo3YANH1Lqd90l4YcgaN
ease9xN11tnNI3LCIFH2Sk5iXz8R/W7bIddRIZAyrtz/PbaPqO5YYBj0FwKT
j4d31bb3EJ4zNtOn/AXhsIdcfkvEN4JSHPifpQY/XDwdkHj52Vdi58ZC4azX
fPAy4s0py4kOwjeItZxRkQ/kr7hua3FqJ6IdPKedf/LAFFHQ9Xl7K/HU7hdn
tzkXbKTuVLst0EAwxHAPvc1hhXO7hhdlz74nLA5wR/F1ssC4U+KH/Jl6YnZD
PqEhxgLVye898jveEKkW5n0sqUzwoCl9u/GWF4RQ036yQ+0qfTI7x+1vThzh
6c5T9nHfX3oEU8ZbcwMvOq/tm78fNvyha1xzfSesl0Y/9uzCrudZY3Qr6tea
BOM79IB9LvUaQYP00x4nRuoyKujKry5dVYl4R2dgeLbm+uodXeZ2Y1TNuWHi
XdO3i1Srr/SblPtJFW5s6BnS+c5e9Rt9zqrrWeBFdiTJd7HEM3fSjeXMRaLL
Sbg7/HtU25Muul1KUoY9Mxc2Kff4Bwn30AVUydu9nvGhp4n/g67RfrqpzqXc
7YXC6HPrTKZU6Qi9+meUoejFjWioXvvY4uo0/Xfja1nNo8qo29ae9erDNF3s
oH5oS5Eybg4fD1NbnqY32l6+ajuljIofRE1Ix2boSidEdvOcV0Ehd99WQmWW
bvuGz7evTBXHb0jOaLyaoyfOXfozPaeOedzBujw//9E/HU8Z2KqphdeeJImH
iy7SuS3EmJwPamGWXf7K8K5FevKBmESHAC1MLm56W1e2SGf+FPijr0ILQ0zl
DkeELNHzvJskOYzW7xsRzcFjXCt00pjEBYVtVGQKJn93E2cAxzp7qYANumjn
XNJSqcMAbQfjzjYZ6uLj3fQP3BYMIOF5Taz7iC66SHtVPE1ggKniKUHFDF18
/b7mEssMA2BzkrQmux6elXQzu/OREUKcCyytu/XwO+u/LQsj6/y6JAnn9VBn
MkV7L+v6usj4y9DOr4+Ddc+lZ7YwQTZz+sCCsT6a+nItmtxjAkdnJ2eWW/rI
Uvu4bOAsMxx8GTHlvNsAHe7vuKufxww7vU1aJ48a4NPM79eTqpnhm+/VFYnT
BujmzXaB+pcZni4Y+htmGeBbITvXs44soOZW+TipywA3rk7YdoSun8ty2s9b
xwwwePishWomC2ip9yaVLRmg4ssHW1sbWcA6V21ETIKGCR6MYnI0Vnhv/Gl3
4UEadltk8Z6xZgXKI2qxtyMN9baosjaeYoXoowEO1d40HOI7NOVfyAryfzq4
F2JpuG1xZLi+lhVsLhWqDCbTMGswqkfiByt4jRb021yloXlVcdNrITZgMoly
aymh4c2CrW9ENNngzCqLRccTGs6ltFR572aDO+M84s41NNwfcvzRK3c2WBs7
2XyijoaFLsuFgrHr3Pkv4V8jDVf3pud63GADyeyEfaRWGh7WV8yofs4GDYwj
Ole/0bBM9sVF3lY2iJ2b3Xe3h4bs3BaxLhNs8Nw67p7WTxoe2WSHehzsYBdp
sig/SsOS7W5rnPLscOLgvuCcCRouH/Xd1rONHWZFD25JnVrPJzQk8oktOyyK
MhxnmqPhrYy4mvOB7BCfzSU6u0DDqYfJS/Zp7JDVK+/lvkRD08Ysw80l7GCo
vxJmubLuY+hWKMtbdggaMPN+sUrDYcb7lV972GGv2iPrvDUaGko9my9dZIf3
R37brKxzsgGhF0smweTDsvS2de62+hB0aDMJ3ofclZZf582nWp8q7yGB7WKc
9Nj6+HEXf0yvuJOgKHyhTGmZhm13f2m3xJDghcnzsa5/NFSs/Xu68DoJbuT4
TTPP0zDk+9KjsAoS7K/7MpA3TcOGedbJ/Z9J0MmZ3Vn2h4YbhPg15cZJYPbU
c1ZzjIa+GhK+82wckMX+7yBliIa4S/5BoywHtO1Z5DnXS0NBd43xPCMOYHkv
tcOmk4ZuMQaqgTYcsPmNsGT2en0qrm/33unPAQ7xl4rMm2hIer733oYUDkix
3M7psl5fu5bDw5NFHPApsMt55MV6fUknPHJ+cEDG50Rng3s0tJAPuntygQPk
r62Zrt6k4W169KCxECd8b6FkqGXQ0Cz4isvoTk7of0QdeRWx7js9N/+VKyds
GTyrIuu37ru0qPdyFCd8KTDbN+yy7nfgheOWp5wwOdD/IN983e/q21y+T5wQ
MiWz6bL+ul+J5u8DI5zgfC9zYWDTuk+LQbtkaS5wVBuWKGZb9+kzkeNsyAWx
CUpFYrMGGHJ+4avOIS6QvuvG9KvfADe84rb5cZEL2vdk3sipWd+vqrpWGnNc
sMxslLfV0wArzOmXmQS4Id38Vf/ZgwZIctn1uV2VG1rP1ffLGBpgafbRA9HH
uCFYRCPNnsMAZ1gT9jQ3ccOo6cuv1Xn6aC576eKdX9yQrdVKv3lWH7ONrn0I
YeIBJat/Fp899NEooGyHrAEPMBzcMkxR1cezve0m/gU84LD8T9n+vh52V+05
GVLDA6jgmvc7SQ8Nr2BW1Bce8Gbtv9x7Qg8nzUpGLrLzgufHLPJPZT10vB+Z
VnCCF4bbyYHWN3WxOn6q8l48LzgyedS1h+oi2fF4/8NcXqgrf/7libUuNvEf
1K35xAumZ784hJN00TBYvquNygeDoPNL1VMHsw7ksHTt5YOPXR+U/bbp4F8l
Xo0+dz5wfL/Xj0NYB4u75mN+X+UDjchLKgYvqShi3KjItswHGXd3bvNnp+I/
VlqVpAs/mPqZ61SGaWGh//R/N335wVE7Ln/OTAutex70y4bzg39fXHYUvxY+
qqRwK2Xwg/PvnWaeBZvR4wS3k049PwSKbSdJxWpiW3MPyz4VAfD8cPUz10NV
jNt6TbxZTwAM2A/U8Gio4uYSaw0rEwF4dIhen3RfBZPOfrCxdRCAI1MVYXP5
yrhd70mJe6oAMDQEGjpGbMJH1xMsoqYEoHmSqNQdomCjUMIvPgZBiG/MVt9C
p+BQ0rmofB5BYAn2P3w0SxY3RMSX1ikJQtO5VP/JbTKY6BBH4nISBBKc0N46
JYHOUlF4tVEQYiZjJJiBF8MzI22UvwmCTAFXWccmLsziiZyoHhKEyd2r8/fY
Sdi0Er6hm1EIbhU99VR5yIgG3aEh8gZCgHtttusH9BP8eUGby+8IQYyYdel7
IXZQFQ16t/3xevyrw1MJDznBPC3QsY0QAouq5Os1VrwQER2QPN8pBPy4XPal
UxCGnU4PbxUQhmGO1ndafhKAMidvNUSus4322RFdBTh1241/8DAZsqTM2sh+
VEgNzbmR6koGksvjQokVKpRZfFSi+ZHBWYmbWSFJByZW9Y1TL5DhvXay1b4S
XfCx5/I3qCGDH+sfZcZZffAWftyaLCsC23+8PXqjxgg8EtaydMdFwIk8qzeW
bAIJR3XkehdEwKS3oClq0AQKdbweXmRdfxc0uvHlG5nCz/6Wdz0bRWFnjIz4
lQlTcKMXLlw4KAr45mqxvq05uCzsteuuEAXtzzv523ftAkfva1LnY8XAcvK/
90zXD8DSN46Pf1PE4Hmk/uo5RgvI3hUa5XBtvX+Js7tN1wI+Kx3p0XoiBnqZ
VDnLPAsw/UXO/z4oBkvGX+9/CjoIym7p8to7xaHvVMfCymYrmDmaqPqDVwIa
88czjvUdhkv/zXftkJSAv9kZP1ilbUB96/Hkx5skoMGIlbToYAMeG8x/nwcJ
UDGuetbyzQa+dTI/1PaXgErDKofdHUfglU20duIXCUjri5EM67ODCweDadQb
ktAa53uKrOMEl5tUfErvScKR0y9LNsc5wY0dPTcVnkvCcnnKlUfNTvBo604W
sRZJEMuJvndK3xm+Kkt8WmbfAFLPZI6vdTiDEtMrt/qADVC+N/XPC4oL1D9m
vWS7Rwo6w6O+nu5xg2b16tctR6SgXmmgnZHHHTqLfWf3eEgBf75R7TtDd5i4
2WG3LVYKOEICm2az3EEk6Z6C3HMpKDx6rufHQQ9wd933YpyyER7PZ3PPfz4O
LMKZQ9GLG2F6eEJBZNkbBCeieAXZpYGDsbtOWP0EyL731LsjJA0NCqqnzRxP
wLYIo4T3atLQuXN1/9baExA6OKAg4CQNMz8c71+44AMTT7Xdb7+Rhn0X0eye
nC+MqwyfdjGXARk+53Arwg86Gs9NxvPJwscBXLL1DoSMbblmh0RkYfEUnys5
ORAsy59eU5CShdb6pby/DwLhY9aAab2KLBjnr37hngqE+mPGOezmsvDgdv/n
T+FBUDG/bHwxQhby7jQzZWYGQ5Zc4JW0EVnYyXVfJL4/BA6Fu+hde0MBj6vJ
p6k/IyErV5ht/gMF9CKfSnzgjoJ2ov6LVTMF6hzu5kXpRMFhFtUgnh8UuGOh
fnJXfBQcSZl+EjNHgaS1QU8nhWiwy4vXOq4sByIpz6oa9WLA+U2hmk6aHDgU
7FAzT4oFH64xykc7ebD5Lw2zPOJhLLSaheuYPNjnTWoKR8WD9/CFoR3H5eHl
NnmX25nxcPytUkltgDxEkN8q/K2LB5doD61nyfJwyF/3wxH5c2A73Ue/8Uoe
Vl2Fwg8NnQPzrq8O3hQFqFjqcFA7cx6k79dnsY0qgOJtyr3U/y5CeKWJFd/1
TeD0ufjqvvh08Cv0qdDTVAaZDkG1bKYs4GbSd9H4qQJVX2/S9O5eB7OT1pkq
V9QgSYtE42HMB7EqqVNm8hoQvh2sSY534LJ/YvrmDk04+uDjr96QYrBMOKCe
W7EZvsw0tx1/XQoq9vGH7kRqwbk9rCeeP30E7UMct68c0gar5/JZyVFP4KPL
T2NBaSpUuR5Kt7CvgD6WooVMChU8eGtsHnpWwEyh50NxRSr4nZBzFAquAPGx
sQ2y6lT4j8ymOXapAtwCpuY1t1Dh4obslW/1FbB4du3BPhsqTJxp13pGfQ6K
d8UlLqRRYSZzgewlUAm0HV3N3Feo0FUv8eW0dCXsHblx/lIWFSQDm2ai1Svh
tLrM7NVcKvRtmLQt3VUJNc8UmwvvU+FI9rMOs7hKsKynJtS9o8KXGplzETOV
4O45a7SzkQqvlSzfdTFVQQjn8+nGj1QgBduFgUAV5O43PNb6hQptKYz6EhpV
6+c2GPUPUGF/geImPs8qWAxhmnb/RYUnnMnc14KrgEey7t7IKBVmWce9Vc5V
gbbTDtG/f6lAS3+QZX+7CswYOT4Gzq7nxyPmsfyoCo4UNMQvLFDh1nzq49tE
FXibJW+JWKZCbZ1I5P6PVfD//5Vwc+xJ/dr3KvgfdnvOdA==
      "]]}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwtlGs01HkYgIcum2RLmjKMu1XJjMlvY3PJmzBKozHMpLWJGfNP1nUoSlrO
SNFNNJGy20VWaYs6G4r1FlLIykbJJSlGdFoMUodsu2c/POf5+nx6TMSRAqk6
jUbjfeFfJyp5ozMzBMPzs4dnjCjoT1g63jFFUOJZHhPHpMBr0csPpR8J+o2+
mHivS4Hx2qjpSBVBVzCc7tKm4H565ryefoJ6nfkaFbMomMd+ZoiPCT7SuWka
r5TCqdhAz6SzBC3kjb7D16VQpBaTT7Mj2BOkVt7jJIU5Uq4NY7sNFnhn+FV4
BIPO89qwiydXIz0r4E6bRAKC6lzJynoOVuh/nREhF0PC305hGa+t8XZbr6Na
RhCUxeWG3tjCRr/XE0Ut1wLBK1No/PmMFea4Br5xCt8B3LxKL493ljjMV/g9
SdsOBXV722L8V2IubaN37wN/CEg5Rf+zcDkOLuFODnRtgwOBs65r6ljg8cZq
s3C6H9BYRlUbDprj+cWz7N4JRfDiyJlDRa2mKKw8OhkY5QvM+SFXxlxMMFBT
sc6nSAA/rrGc08E0Qq0/lDYOyAeJXXdhdbU+8j9/NHCs4IFlvP1MRL4ucupM
Xk59twkudPnU7F1PR9G27qnCXe6gTKY7cnUXo7lNjhm/wwXuKFa4DYi0UFb4
mFertg44b9vHrPPmoshit6o1yhZc73RoTItoqCthi8qr2RB15cakto6qCpyO
RA4MGoKIMrvQsr+9KmmzUeutkl7nusb2dOLz3Jkj1/vceJ2B9qx7N/nZKudX
AsYj+/lWqL6H3hnMoMF985y4k8w1+NUCfrL4/Vw4rLXvCbvREeU9bRtkl7Rg
U/cK9+FVLlh8NpV/YFQbLCKz9ZqK3TDyYvCiNyI6VNpGZ2LyRgwIzTU4lKwL
V0t5amXaPEzz3rOWnNOHrmOC5k4uH2cvUfT/9MkQXDpujSitBPis4eBwykIT
EBw8fXz3iA8KE8S2udWmgPXsRK1OIYZpDpk2fW8OL8I8lMsLtqJR0YPTcwe/
AXnSL7u4O7dhQtkGn4Vnl0O69TWnaC9/jCoIu21rvRLWOdgfM6BvxwXqdmJ2
nyV49Sayn6rtQLdwX4VllhXEJc6o6mSBqFtuEOlmzgbDsqSvd/oGYabs8EnO
M2uQYae35kYxClK3sPJuc4AZ97EliiVBS/8UYX7iajjR/22Pn1YwtvVrXMwS
2kCJmedSd5oUm8R96xcbEVix0DR9rFeKr2b/OqkwJZDYd7d0oF+KYwUhNxgW
BFruCvs6B6XIGBpimrAI7A9Jg9pRKQbHjH6wdiDQfG94QqFO4Sf5zG+8rQT2
xlZJ7EwptLjM0Es7QaCh/QenfUEUruV2NC/IImBcPBEaIaVw89tzhzJOE9iT
mpEj3kVhNMt4PDuPgBGpUW2KprDid4vmgiICsUdXXdVPplDwgKTW1BFgOn9a
WnmeQmnIuKNHAwEZ/ZRrST6F8fNLVQ1NBOqGWLLLhRTmedkH/dVKIDon6PGx
YgoH2sCx9zWB2pGH8gD80huvrpIqCTAeiksENRRq6ddceTtIIPLnqW73hxTa
7OAuGxkhoOvJsbduptBNTaMpdpxAhEn9TrOnFPpdqk+ZnCRQ/UGiWPacwlC3
ow77pwgsa5q+r9lJ4f//gv/+9ZLCfwDcckvI
      "]]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-20, 20}, {-9018.99892979596, 6620.999125714325}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Print"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
      "]]}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJxTTMoPSmViYGAwAWIQXfvc99P//8YHGMDA6sCUkgTvhtkI/mrG4iUM5gg+
a6q7kWSsEZwvfONozqKJhnB+0OFZyZqnDOD86ve2ORMe68P5O8pnZa3314Pz
/SaFKvybqQPnu8/d6+fxRgvOX3a88lpxtCacH9cyRfT8CnU4vy6BeR23sBqc
z6Arv9+5VQXOv9U9s331VSU4X4YrY+UXJ0U4P9tUi/W2jDycn2x+b8Xhw9Jw
vlaF1f+8JRJw/sK7wUcqHUXh/OeNojbuEkJw/q6pGq4vwnjhfIOXN7/oz2WD
81123eb8G8YA5xesXP9DUPjzfhg/LE154aWam3D+8TM3u4yDb9jD+Fa6BzcF
TP8M5zOVid5JkWRwgPHZeQIak96xwfnND645Fy3mhfM3zG4LqPskCOfnL0oR
eBImCufHZc2SbW+UgPM7A8ssjedIw/ksIlOf1f+Sg/Ovn2790MKvCOeHVieZ
zTqsBOfncL9WOhelAufLrz42je2VKpxfvcM5mH+2OpxfsCxnm5m+JpzPw2Se
pPdUC853zQ2ZqjVZB86X2Cmb76qiB+dPKuqYaHBdH84PavPXnbvNAM7Xim4J
XVJrCOdfe8a5aHKoEZx/Lumpo5C8MZyvtlRSqrMfwYfmFzgfAEoX7Io=
      "]]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-20, 20}, {-9018.99892979596, 6620.999125714325}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Print"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
      "]]}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwtlGs0lHkcgIct927DhDWMS25TLvkvQq1fJDoxJiKbbZZxOdP7knFpZqJa
cm87rYRyq03SxZGtU7JW268l7SaSNsLqRi5Np2Q4hq1m23P2w3OeT8/Xx0KY
FBKnzmAwgj7znw+MB02rVAQXa9srVI1SHMtYOTv0gaCdwR3XpQ1S5C1/Nndj
nuAWTrSMfUmK5h7ij0kKgkddyz+uq5Xi74eLtZ6PEVwp1NZKOSlFLcd+M+z6
3P86yR7NlGJJWtTWzEqCWxMvbf5jmxTr1VJrGe4Eix6urihSSHBxnL+L8S4X
vP7W8rS/rQT1n9xJqDm2FovT5/0KRHsxpK0ixv6eM5oaRnflNaRhxrsNCUUj
TuijdfNq/ctUbJZWUI3BjmgmUnrstE5FXnGY+afyNVjKtuM4RaSgf/VNXsAb
Lra8mBi9fTQZ6+7u60uNtMcyVmHg014xCnJKWA8u2KLeKVOmhaYYD0Z9cVlX
3wYlXCvF4LE9yHDg3PLNXYXOng7Z79iJOPhDeX79Y0tkKzgP+AU0snVEF2d8
LDC98KHgzlIKaVfu4iE2B3X/pC/l7RVhjPvTC21tJjhnb3ejbSQeuTJP1Z5a
I9wuOqtpkBiHZ4ZD2/dtZOFIsKbBlb4YHM9irfc3YuIrA25sdKQQW0rt/CbC
l6BRtqtYgFHoPDkw41StgTzrjvTL3whwU8uQ9sdwBvJVp6o6RJEovtioXKGv
uNW0eoubbF0EhsdbnendP3BLxUzewf86DO/eHzhMQp94MzYML3BCQ9DT4fZV
/gmFd1eK6xrmNh6qS1h/xxozQPCiPnmtKAA19fhZwrca0DLTXpfN8MHs532+
KWeXgI5JFxYmuuPPlXn8g9MrIEK8tDYwzhaTamKXj4azgMEs60/dNeUtoCpM
87OMAE01BHs77aFwm8SDVJkAXskwxMJ1sMigdOz7BTMoyN3R01jqA/2duVM5
yyxA1Dqb65IeAGEZQreKNkvI5L3femiYBwm6csvunauAui7L8qFCgFPfUabx
2hoGM6/tvB8eBhnNvqHLKm1hYt6stfVQBIjrEprcnOyB2axblieLBD11d6Hj
Ky70WdkqmxoE4Je4vZR7fA0k26jkc5NRYPSLaZLfKkfIG15tpCYUQnFKwTHn
fifYLU8quDkfAyF5wQ7VTc4waDJ7LV4SB9zInLDaA2thihthXiKPh74x7Zrj
YS7QU9T7IC1TBN3CVxuZHAI+xke9fBZ2w4tF55WllgRs7D1cBhgUzNSJGo1t
COh4jNqJNSkwlsvZFg4EeiI8V54yoCA2dXrOyYvAtyfHpuYdKVjIVjUE7SCQ
ZuhddyWGAptzxl8W/kjgAmtquUUXBR7+Qz16xwkcsa7UbH5EQeBkVX5RGYE9
rps/8QYpSHYwnz1RTeCrsCr5/nEKWq/b9NTVE8CSgI4najSEdJC89rsEBvXP
ZBS50RAnml0f0Emg1SowxXYDDTKdG4rObgI/kTnRb740VPM8ox89JhAfGhT+
hk/DRB+sfzlCYKZ43jmApmFBpq6IGyfwV02t7bNkGpaYtF+cfE2g+WqwmURG
g8t3/obv3xM42HtOtzaXBj817e60WQJRL/nqXkdoiDh7L0epJLBp+h/lw2Ia
KL8jXvs/ELBTP/9OVE7D//8CHWbImOo0Df8CRgY7ug==
      "]]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-20, 20}, {-9018.99892979596, 6620.999125714325}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Print"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
      "]]}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwtlH081HccwI/JPF2KTp4friaZQ/d9lYX4tOhaIhGzHnQOY5LDoYtz+908
xfVw4iSllmTKNqlFpHyKaClZSaSahzyUXuI8ZF5krdf+eL/e/77/elvw+D6h
yjQazfMj/zl50FMxP09wX/Hx0fl3UhxI0pvsmiUY7FEt2P9Wil6L/n5f9Q/B
AMWzqZEhKZqvjZ7jjxN0A9O5Fz1SvJ11TK17gKDh82L12sdSVLN9aooPCP6p
e5kprJJibhzXgzpJ0DLl/vZRsRTLlATFNAeC3UFK1d10KS4I5bANdrOxZJss
oFY/C3U77kQWZa9CRk5gTTvJRJ/6guCV9+yx1mihLMr3ICa9Wxcp67PDyvZe
ZyVuBl7bXxBRvtUWA/qmyh6J0tHrmJ/5hxM2uIVprzidnoacwhtem95ao7B0
869DualY0nSgXbBzJXpSxVYxV1IwMDWX8bB0BcZnLRNN3PwJxdzPftfUtUTO
QE925TMJ0lhmdRvSlqN3psRoaobCZ9ITGWVPmFgWuFFkr0ahsUb4hYmvLZCr
KXfx9RDj3tXWC7qMzZB+c5DtxBVhsMPL0vp6I7San11oKk5Ea6HjfFSxPub3
yfjiWiGefeHbcGA9Ay/a8MVtbQk4KGE4c/R1UMfg/uJSejzWyK3ch/zpaBwh
8I0xF6D9684Ju0JVzPvmhWi1cwy61XSpz/nTsDFf6jcyGoXRF8qnF+uO15WG
jdF3m+xF/++XnX0k6qxjJ29/2JgVhk33O7OIb4drQbkz11IjBB1Zty57Hx93
3VRW7RmzjovKCYznIQY0cOkKOxgV/B1+ruUt4Y2oglCRZvvXlW2Y0t2+IfYc
HTrSdw26eLvhpZPp3mLFYviZnulvOm6F/KKQRa/8GTB0NTNHZSEbAiMKTDIk
+lD6cs2C7o0cyNyWsJacMoI4h83rBWd8QGWJfODHGVNQ2/ew8QzZAU+b00ZT
tS2gWINlMlzEBb8k3pqCeiZQ8t0zhsIQiNQcZrbsWA5/dMpatmqFg1lZY57q
my9AVcn18ZEjeyHp2gZf7ZMrYMmegKTeXXyILomsXGO3ElycHA+bxMeAlrID
z7bfGrx6k23bggTgvm+73DrHBkZmPgwedY8H/WoTvvtyW3CKVjJpUdsPx2IP
Zts/tYNXVPU5PYUQfNK3sgor7eGrEcX5nppEsN6Z6lecvApMH/yAFYkiaB9Q
L8rxYwOPk2dziCuGFl7/eh0zAlbazKwJHQp6VH6ZljMJJPdfrxrSo2CiJLzc
wJLAo+t+/c8NKTAYHja2YBEQhWfCHSYFIQLFezsnAq23RqfkbApmUuZ/8/yW
wIG4umAHHwoszxsYZh4l0Ny5a11iNgVrOV2tWjkEzC9NRUTJKdjy+lSGLI9A
Qrosn3eCghiW+eTxQgJmpGF881kKaq9atpaUEYg79OVFowoKfBpJekMTAWPX
Gb0brRSEhk86b2omEMvIdatoo0CoUTXe3EKgaZgVe76DgkIvx6DHTwjE5Ac9
ONxNwVA7OPf2EbgzdjclcPRjr1B5PHSQgMFdXoXPBAV0o4YLr98Q4J+efblx
mgL2Hs7SsTEC+h72jnY0CbgrqbfETRKIsrgXtkxFAgHn7qVOTxOofx8sX6om
gQj3Q06iWQJLW+Zua2pJ4P9/wad/aUvgX/X8TQU=
      "]]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-20, 20}, {-9018.99892979596, 6620.999125714325}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Print"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
      "]]}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwtlHk0FHgcwCdkKZZollnlWpTJlV9ypNfXMU2bSIRKF9HDKiNlp1wJM8yR
Y2aYyNZI6NmiU1stX0fsI9LlyBY6EGVdE9uq2fa9/ePzPv9+/vqYhMb4hStR
KBTvr/znpGHvKYWCYH9V+pTirhSHEr6T980T/GjinjFyW4o+2v2zNX8T1BQr
9B7dlKKxM+tzzDRBV/aJ9SVVUmzg5akNDBEsAFam5wUpqtl0G2I7Qd9HwYZZ
PCmKj+73OllEsGHKfrPOTilWLogrpTgSLHUYlJl9LMCF4Ux72h57jGUmt5ca
FaBuz/3oktzVeB11XgcH5aNfY+EBy1Y7ZOzQqKWIJJjw1/ronNe22J+wkbqg
Voy3fy6Mqtpqgx9U2YFOsyL0yQsw/nLGCpUMR3XbjETILP7dZ9N7Okb61+d7
bcnDspbjXXHBlug5ka2szM3Fveli6sOKFWhBO/eeejUHk/crX1msa4Hzfl4p
dY+zkWJtVOeRYYZbqk2rbbxO43P+GW7lM1OsNE/o3V4iwGWLIi7NuJvgTGRD
1wiVjz850Bf2LTNCr2beAxKRhQccX1Y0Nhqgx77l3rsauEhnuygOl+qjecsv
snEnDspe+Dcdd6MilSkbdz6djsOpVFemvg5OSPK0phWn8I5kJWMkUBN75lUs
D/imot273hnbYlVshrTCPdtS0PNOn/rnQApeNn/O63RJRNalqrklutN1111I
9NVBNgYe/EH2OLG3jv8hUn6o/hi2POjlEf+eDeU0B/Fg9RF0sa6/5lswvaF2
TGUT5+5hVIqn/hlGo0BX/64aCjcCv9HwTQ0dVwXLNTfVgtpDMG2gy+PIBU34
ImctcjwYiNVFHN/kqSXwUd7H2EP3xJiSMO03gVQ4Px+ior2aDnujCpdzU/Wh
dKGxulriVsjaFu9MzhqAxqDbNfXZYFBZKhlK+WQIESny9lXFYdDdljGRrmUC
5x9/G2fQHgUBCaFrCxtNofPVkiK9ehZELx4z7dhlBkm1tU/vv4oDo8rmfNVR
c3hj3D13byYeEm57+GsVrQB7/w+rNv54Alhl0bfW2lrCr8PmNdNhSaCh5Bhq
85YOKhZXKs6EnATGoe0SusgKcgwUoy/UToH+b8tjGGY2sMY9ZOcNURrkHcnM
teu2hT983R8+2ZABfpyt1sW37CA2Z01sxkMO0IPTA0qTVkOCaHdmcFAmdA2p
l4gC7OFYsnL5CQoPOkLfuukYEeAU3p1cJeTDoEr5nMSUwNlHmW56Yj7MlEVU
0SwIVKsF5ioV8YE2NrbMxJpAT/yEXW8FH8LipmZt1xGw8jdncZr48ClNcdk7
iMDTxdnjA//wweIi7fusbAJmSaFjkigBODP7OjVEBJxu2K5LjRXAlndnuTn5
BHzG5nnRbAHEWhvLC4oJxO8soHtwBHDvpkVnWSWBVocHkRMyAfg1E05TCwHW
uMPI5l4BhEfIXTe1Ecg0V3ZaOyAA9qKa6baOr/27O7kmwwIo9nEJefKMQFNr
1Iq5GQGMdIHrq9cE9MvPHbyoLYRPbKXp8OGv/S+jb+XoCUHToOnSu1EC7lQX
1URDIdjvY+pNThKISnt60c9KCIwF6h1H5QRO3pHJ1xMh7LjQmj43R0A8eZhh
6SKEKIZgXeI8gYqVrpKlbkL4/19Qu0/9rYIphH8B+KlNBA==
      "]]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-20, 20}, {-9018.99892979596, 6620.999125714325}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Print"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
      "]]}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwt1Ps31HkYwPFJUoRQim1KIzsxJwaf49p0eiTRFmlEYlNGOpOIkNQUuWR0
c5vvF43kMpJZW9pKF6eOp5Bd0wqVa7vZyi1aZdxTdvec/eF9Xv/BmyUI5wer
MBgM93/7z1N97iOzswSvhFWNzRIZ9oqWjnXNEBx63TRRYiVDD503E/emCDpu
65vawpXhKoeIr+FKgu2cJd8kHBk+OZe1oLuXoF5/mJopS4YLLNpW4u8EUwSs
ZZ7aMqSi9209nUcwfFeqfWF/MZbPiSph2BEEJx8R5BfjvGBXa8M91lh7vrKn
ZaoIF7fXhRZnWqG2gGp2CCxCfo00yKzBEuP07mgUKApRNLw+NOMdFxsdckx9
zArx/jFpSMV2C2zoUKbXrC5AjyzvVd8urcUqc8iN68pH1/xHHm5DHBy30V5n
e+kyltYfb43yN8OH3l3d2aF5GJBM6T8vW4Obg7ieeWwpxu2be2PhYjYGpCY+
cRvPRYa5UbXzGRPEwF3PRxQ52Hn+krj8lTG+N719FVKzkakhlI9uZCE9Xzve
zo/GQzaceV1MI1zwcpjVokdhkN2fZTU1y/HpTq+9B5uzkBPrOHu4xAB1PlYW
yK9mYtEfXrXHnfSRGVUgv7gvA/sS9HmuBnp4mKUTZiNIwyra1KXfRwtN7IcN
c5rOo+VAxyg3Xw0j7zV/+fzDWdxU1aX+1YeBncG33l35lIIR8opJ3cXK6rrh
wgBJUDL6HFhd1HKyo/pZ2cU3HXMSsf5Zxzni1b6hkfrCIb7x6Gj++JZnjnKD
ZvrEQyfXE6gSo/96vyED4vqG/UYvHMX5mp4Jgr/VYHp8rpFtWAQmdbc6R8q0
gFexXvqy4QDezEvxjBvRhe7d7UyNZj8ML96v895HH3LrMmKudDpgQIh0hTjB
AIQzvCBvvS1wdkeMA7m8HOwH6nyJ2V5QXUL3xk+vBE1e9e34ioPQpjjzKXkR
C84EZTanpR0Bb5HAVlpjDIzINbLGn2IgdOGgcaOfCWwyfiwMiRCBUfnTbLUP
38MNBuet+qLTILrv7LUobw3cp3pmsnMTIaI09K4t1wzKpop1W8aTQVPFTmDR
wwG9JL6kTiwGl7CdNEeyFvpl395Ua54Dgwcrwl1MLKCE/pktPHABsiJTMy3b
uPC6fFvnryNpwE/Zbp5/1xJEWyZqBuUZwPFP9i45ZQXVqZtPx7zMhNZe9WKJ
tzU4dWpH7TGQQKOgx0nPiIDNknZB3mYK/lK9NkkbE+CLp0e7t1IwWiqsMGQT
ODzNFLN3UGA4OMhkmRMo7Q4s/8Wfgv1RIxPcdQSWXh9U1kdQMJ00e919F4EJ
l9nkUSkF7KuG351NJ/DgGPua+zAFDq5dTZoSAq0f3BwkoxRsG7gszsgmMLLn
kKJ9ioIj5qvGcvIJcDbdHA5SpeFhJbuptJyAVMfR/oQhDfynJKW2noBI7v5b
qTMNwcIxnpuCQC4zwn/IjYZYjXtKRSOBO+lZH608aMj3cAx88YrA0NE23Ue+
NPS3Au/tOwI/bgz0exFGw3SsijK4j8CxyqQhgygatJbXygc+EKBMS+MCYmmw
3uu67PNnAgrtweKBRBpc5qg3Ro8R6E/QsuGm0uAra0ienCSgOsatj75IQ4jL
hXUnZwgYCfm7q7Jo+P9fwOuKHpzNoeEfp05cPQ==
      "]]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-20, 20}, {-9018.99892979596, 6620.999125714325}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Print"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
      "]]}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwt1P831XccwPFL+e6O8mW+5ksid7iXN/cirZdM+sJ1I2KVdLGZbqNYqZu4
EaIpXMS9n00It3vQOkuydbzmS87yJa11JZVSKemsfFt3RnfbOfvheR7/wdOO
nxyWoE6j0UL+7T8zXobMqFQEHRlF06oyOU4ITedHFwk2tWYstpTIkWs49v7a
XwQ9Ag5oxZ6Vo61PylLyLEHYHWyN+XLsLCjRfjJBMLpId0uWUI7absOrcIDg
mZncato+OYrTYrdlSQjOtWeGqrnIUa6WWkfjEOzcdrBJvfMSaiQEeZjv8cDC
YK1S1kMZGt3vEdQUu+NzWRu3UkOGYV1Vcc63WEjzpTdwSCMK364XnHvGxK0y
Y2e10AZsO1KV1BLqhvbfcEQax+qRWxJh+6HSBZ1s6cu8Si9iEHWDu/kNA6eX
TtlVXa7D+t6jitRdzrjF28LU91EtxuSITW43OuHg9n2eGsoaPBG7rFnPyBHH
e7vW6tnXIM3VpiPglAP+lPLr9U28C/igsDJPfs8eUSlKaxJUo5Vuomxuox1e
apfrfsf6Hvd7MTRGrWzQZeP1TE48hXGcx41dXZbIZtLd/KolyEj3VX1dZ4Yx
9yryWxcq8cKj8O6j/iY45pPPznM/jy9FJn5BZitRtLPl3EBuObaXrQ18FUnH
Y8Tv06Q2MbImR+aYlCYuphmsOTRTgp+1j+osRdKQSjZve7u1GFNkLcoVRrMd
bttXrs9TFWHkF6sv/HZ8pCPWay/for4Qe/tHCkj4/Q3Vz70Xsvfko6/rL1d4
FbMbxIaPvasGclD9sMnDeHMa9DS/uy05JkItfZ6I/4cm8EopSzEKMfuJIuBQ
LR0896Yep5rS8LIkl3diZgV42Gy2+nutAJNr4g2fR5pA+ovmq6NXdmFMUpV1
nsgMaHdW956IM8DT2w/7EKklzIUqPN95RcNy47KJzIVVkPKmW9w3lATDfafe
5RjYwVzqj4p0nTSIEPLZVV32wE1PLvPwEYJAb8p+8HMHMOtvuFPwPgts5DfL
NV+vgT8N9SYu+ueAsC0g3EDiBA4jNeHGd/MgpV7QymY6gzFzILHCqRD01Tl8
txcM4Gm7DB/oKoLAAzvKGKUusEEvc5LtVAxm162TAx3cwDvafZ3/YAmUHMov
Zg0zQfEqw2f+vBjCckNdqVYWRHSUFpLAcmDsyomoy3CHEFZcneZkBSgmdGpK
Izxgarz/q+zLlTDIf+G/0obA/oeqkwXREni6vEFZZk9gGzcrai5WAnP1iS3m
jgQ+QZpbTKIEzKemrOxcCUzWqo24H5FAfOrMe+Y6Al/uX8YcEUtgIVvVFLKT
QNyC5qjTkAQcL5pbnD5LYLfZR6RnkxR8gkaH9EsJ+BUUaTO5UgielOadKydg
tfjR4/MRUjjoajtfQRF4MGZwWhAvhZ+vOg7VywlENawYMzophbCbJLe7l8AO
tkkh/4YUEhLn/Tb3EfBsLIvt75ZCuu612b5BAsYWpmx2vxQoru++u/cI/L5k
+lRnVAqvFOA3/owAr8eM84NSCgvp6rMJLwmwOJX6ljQK6JbdssnXBAxl5uM5
WhR47A36eHqaQP8Zi2+jTCkIVNMZTJsn0Pyhit9pTUFU7a0cpZJAUYqlt8sa
CpICz6w7vkhAMC6hl7tQ8P+/IHiH1TMVoeAfhLRB3A==
      "]]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-20, 20}, {-9018.99892979596, 6620.999125714325}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Print"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
      "]]}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwt1Ps31HkYwHFsrikiMu6ENMctn9JxKY9k2Q2JjFZRCTnSyiUlatfJLatt
0gw1Y8p8yW2UTCKMeorIbahOJLHZyr22MGUdNbt7zv7wPq//4G0SFusfIScj
I+Pzb/95etxnViol2NoW+lnaI8SxFG3J0BJBw96A8s4uIfqq//Gl/m+CJwa8
gtkdQjR2PPY1do4gfcL+Hv2REB/m5Cm9HiPIVFbMDBQJUclmwBB7CIZ6V2sJ
KoXISjyw41cuwYUn0o2MLCEKZBNKZDYTtBouSqgCIcpHeNrTQuxRiQTXHy+r
Qc0Xj2KoixvwvV7KxkidGvRv4Rxa32mHjCdKuua5tzDlry0xzDe2GJ6rlys7
UY13T3Ciq3faoE3hPEOx+yb65gUaf7tihSN00c3vL99AT16zr9cMHQv8QwZM
o6uwtD25P2HvejxY1BPv4yfA0HSWVm/5OtQ4asWtMazEMwe+u7lc0wIH9wc7
hMtWoIy10X33DDMsmT5I3Z4sw5e/XckSPDfFwM9BXJfGUtRXiaqY32aC+usM
FFdfu45HNtHlh/SN8HF/n9QspgQPbR4pb2nRw2Sj0I6nW4uRftJJ+nOJDrr+
3ijfa04hfzigNdlNC6dS5HuXSYpwPE3LxVNHA/cYuWpr1FzDRralxwRjBVLb
/crPe/HQbnJw3pangIvc1a+2TXNwe+OQ8leGDKa6npCw6i7jsYrqhVWac/c7
XtdZBvvnIyNyLf9p6uB9ELPcRNosbO8ezCEBL1wfvDdfChq7iE7WD4R+BXOu
utqW/B7VCyiXpPUqnCYDCpOgZX41BxVV/dLCPihATr1mc1hfBp593e8eX7wC
1k55l2vS0vAWN9PvzOwqMI7OaF6KSMZYKlz9LUML/D50rN1SH4uh0RyDrDQd
OPDs82yveC+e25XkSAr1QD2wmyZ73AWWrWaP/bJoCPlMhTi1tEgY6Mr4mK5m
AhzOx8c71iRCYEqYA6fFFO5JJuPcq05DzPJpU3GwGRirb3p4aOdZMBK05StM
mYPXg5XZ9sIsSLnrHqDGXQcvk2x09RJz4VhpTJ2D7XpY2Zn9MTyeCapym8Ns
3tFhNNjA6YeXeeBxdDebfskKKhq+jc45sEGnwSDWw8wGfux2K5E9UgB58dkX
7QZswWC0zLtQfAX8M3da8+rs4HFFrBpHuRDoe9MDS05vgEhItwt1vAr9Y8rU
pUB74M0Mc4O8i0Ac9s5Nw4jAbF5lVc1hPowuK1tgmxJ4NVL5jorhw3xpVDXN
gkA7XWDIiuMDbXpa38SaAPehgJmUwofwhNkvts4Ets9WJTpf4MPiWekNnyAC
l3dVuzyq44PFdZruuQsEtqrXdr+Qp8DRc6hP9RIBy3218p0qFHhPFmYx8wlo
ltdubVKjIM7aWFLAIzDueucWj0aB6I5FX6mAADO2jhVmTYF/G8lsbSfwVnx3
38xuCiKiJC5eXQTEug3s4Z8oOKlSP9clJtAQ2SAWh1LA83U6+Ow5gfPfGqAm
ioKJfnD58w0BB5sms6RUChZPys1FjBMwPtUUcjiNghV6rRWTUwRU2pry92RS
YL/fc82nTwRGQkRKzkwKPGSVxYkSAh0VIjcrNgV7ijvTFxYI1EpEpww4FER7
5DqnLhHguTXfXnmNgv//Bdnnm2ekxRT8A5CYVhI=
      "]]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-20, 20}, {-9018.99892979596, 6620.999125714325}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Print"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
      "]]}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwt1Pk/1HkcwPExyZlHMbREGSpqNucnimzeYR5jt9xHxSPk6GElpHLkKNtg
SXKOmFSY+TZSkXXM9qDe66zEqh00S6cc0aNd1zZsZXcfj/3h9Xj+By+D4GjP
MDqNRnP5t/9MmXCZXV4m+GavYG75thjHk9YuDH8i2Put8WnWTTG6rnn5sXmR
YBPnBs2nWoxMm5jP0XMEcxzr1G5UibEtu0Dp1ThBq10txt6XxKhkOrQBewlm
sST+ojQxFp0M2nuWT9BSWb7D3VuMNXInBLQdBNO6QooqFptxZRjHUueQJW6J
DGiRs2pGxrPOyMp8C1xMN8r7PqUJPdvLQrY+Mkd76tWBow8bMemPbyLzRs0w
Z2ZA9LVCI4rjyyJq3UxR/s4lwZxbA7oW+DC/lG7DH/g849PZPyGnvNXV+T0L
43IyrpY9qEeqO3HwhP9WLJxxbG9j1GMAt0jrV5ExitPsoqrd7mBq0Irbqgwj
VM6gd5ZcqkOaif59x/RNeNnglAE8qsXfz5dm1gwYouUF/+5ep9uopxJePe9g
gMzXIx0R0pt41Iq1clhPH9edl/Rz3WowZMcLUXu7Ln7ZU9f19HE1shJsl6ME
2mj92kjTPFSEFc+9OhL3aGHqICNG5TmFE2ladhxtDdRr4G+cjxbi3eIt7Elf
NeyaKB3ze1uF5u+k82blCui/JTl/IbASne4OK3/2pSHbY7Ho6sI1jKmulakz
5u6fviZ1uSC9gr5HNlY8TZbeXxv9F3Ppbz52P5ZmE69n9tz9w91920rR1uSX
eveSOXu19zfPlzN5SI/TGgnVoYGDR8OXbOdCVFzlnhb8QQEKgkW5sSQPz70a
dIytUoNw3Ydvzx3Mxjp+hnvqrDooMW6pBDVwMboydM1bXy0Qd0okQawUDIgo
W5+Zpg2aIiOP5JbjmOURZ0Mu68KzrpDYEaYfymsWj59Z2gAyd6V83llfGOpJ
/5O72gAShtgiRVkM+CQFW5e1G4LrFG+nnFMKRKpOG/b5bQLbQ0oKGMgF/Zou
nsLUZhCoWz2opWVDktjRazXfGD5YO4kG1PIghopssjbbCgGaO1u3TxTAKvqO
YNMxFtSz7RtLPxcD+5h3MatwG1geSpXyVpaC9s/ro9mbTEFJkOl6SsqHgtgf
882HzKBjt4A6OHUFPDPcTMqbzCGc23n94ug1YPlzfQQpFpAx4l1w77tKGBxX
riz0sQTei2NRMf1V0Bc8tkdDn4C7bHpWw04Ir+Wvy4oNCfRFtFIRDkKYp8Jr
dYwI7Hue69fmLASd6Wk9AxMCnDaLtuM+Qgg9MfvRbBeB3Tnx+f1RQlg6t3zL
ZT8BE+YK89wKIRgJddZlXSSg6rzumLIiBTac4f5VhQSy7k4zD6tRsO/d5cw8
HgFFk1aJmEHBcRPmQkk5AbpGkF04k4KWRqN+qobA4rBQtduGAs8uktHRTWAy
2uIGN5KCsPAFO+ceAkfe0ANGYilIUGme6+kjMOYtUd+eSEG5q+3h3wYIvLSJ
TxxNp2ByEOzejBIYWtHq7HCVgqUE+lzYBAGvuNxPpUIK1HQ7qt9NEXgyGVg3
U0OBZSDnq5kZAo976doVYgrYcsp9JxcI7AVJj+weBQeqHnFlMgIP64Vn3Dsp
iGDn7Er+RIC9OZ6Ieij4/1/QUeI8sfyEgn8A3jhauQ==
      "]]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-20, 20}, {-9018.99892979596, 6620.999125714325}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Print"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwtmXk01c/7wO2ufb3WhGvJLq7tSt1HlvYSSpaQLSTJln1LUrYUopKkkKS0
CKn3o6TCp4Qoyp5sSfasX79zfn/NeZ15zsxzXs/MmZkzsi6nLN2ZGBgYmhgZ
GP6vjfy1b2ptjYpWYRPfo3NrcShcZLZrmYo3wl/4BGfW4n7+nvnn/6g4r5nq
dSqlFmVofiunpqkYvdhc7BlZi68vXib1DlHxmeBtasjRWiRpdGzE/6hYpElR
5tpYixmBzntirlNxVVycY/UW4n3GgDsM+lQ8tuNJOpsDgazuO7TFj2pjVINr
qmDUCxT6+tbndroWpjqrkRvUK9HyzTVX5YbNGPXUf1uE9jMM/7PV59KAJnr5
Kvy6T3+MlWeueT88oIHBq6nbimIf4v7Lh2RWc9QwkUt9D3N+Ce7Ifbl/57gK
bp9pq6u0LcTCd6HtAfbK6JRi/My54TY6xmeQPxVvQh7ln38OEjcxypm5jEtI
EU96zbmUK+Ygg7o0YXJOHl89+EoJsMvAzqSc8/e/UJBaJCL+80Uatr6VKXX+
RMHR1bfxErlp2LRW1Ez+QMGOdCNwjUrDVwEV4jE1FDz5Vy5NwzgNb9u33rcu
oGCshf3I/Xep6K3K07ziR8Ezh7wDjL6m4FJDjJgFNwULns6vJLEn4wZOz3sz
22Vx31Xj8dzcRHR81ZRMMZJFWa9etZ2xiZjvr+VnoSuL4uJ3PdjdE1Gxa1Gv
dJMs/vbuLapTS0TN0pQ6V25ZzDHsu0R7eR6373/S0/JFBm882BjO1p+AXpdX
yeWeMnhsVTZ/wfAcntBVYe3aII3OakKVuUpx6M9aVRTMJ43cDa8eVgrEYdiX
HbsFmaQxyctDaGgxFi8Guaft+rURP+rEM4X8F4slz26JV5ZvRM7S6eozAbE4
oiuqkWm+Ef2unfLpfR2Dx/VYbA74SWEJkSqzpzsKXfW7i9+8kURS0f3ckflQ
9CjWP2z+XBJnlv5ouX0JRW/xdOYPJZLYd2Pzm6XHoei3ZOL4MV0S+91XymJ9
QzGCuCf0zUkSP16U8/k1FIIZO4KiJpYkUK0lM5r/xxmst+G2FteRwEc/H1Iu
dAfhh/fujDc2SaB9XaBBChGETTSibKOkBJ4kjf0ovRWELZL+HPJMEjjjur1k
m2sQ9vR0vNJoFseW7kXS/ZFAXDheoGzqI45xmQl9N5YCUCXEcM33jhheyiwU
yaT6I/7YrzKQJYYLz0b688j+eNjE9ZDNhfX+Kk+fD/OnMY43+T7dVwxt2L9G
hNScxm93ftjwG4jhftL9JdMdpzHxc8yj8kZRjFy48fiiix8Oqbw7NjMlgtdL
2eTqHU9ixKWuZM+fIkhr071mqXISBef+PP/eIYLHLlf8EpvzwW21Yrxva0TQ
jlsp3TLVBzNtvKszE0SQN0V5Irj2BJrG8wjpS4jgE//rVt7a3pj/w6ou1JiM
gza9A5rbjqP2oPZimw4ZKYuLgnVCx7FuVGDzZiUy6kNz2PkRDxya/3R9iJeM
uxLGMq9neqCK4N4Aq+/CKJNX4jL3xx0fm5tS1M8I4zHVkBvHHrhh3UOdmN5S
Iewar3rtudsFD1UIVWy5JYTJbCnyFQouOFQzNZZ1RQhD9GU/aDK6IKnhkc2+
MCEMfvBfeFHlMdw3qKZZvUMIV1OX/9xVPobtYgrdV/oFkcmix7ZByBl/xZKN
dogJIreAaYMIvwNyRj78c4VTEGP8lVfUmuxRI2RXQe+yABYq8W+6k2iPwb6R
nGF9Atj/q9H3KZM9stn//FpaIoBfWdz1Di/ZorzOsyDBrQII+51HvFZt0GXI
+uGPY/yY1pi2oLrbGhP6JlxUrPmxd1jGbFzAGku+J4qcMefHOCY2BrZOK5xq
qYnkV+XHsuiKT6YnrJApeld2wjAf7p0Ro4+kWyJda+TzQR4+3OmgmJ/9xwKr
M5XMhg/z4OmiP2IdX/Ygyf6XK6MRDypxXb3nF7EHD8sUxknI8mCwWuHGYrk9
OFUih3vHuBEyS39PBOxGZdy4pTyaG/MiN9/9JLkLs0eFtcKKufBVzvvi0ERz
HHrYeuBKChd+vFfEVmNgjjpBl31L/blQU/3xpswRM/y0xlfabcSFFuGLoxz7
zJCNzLXJ5DMnijzRWJ6UMMUgOqMU9yIHLsd8O3OwxRhfs+AWhR4OZM9RTWtI
Mkb+hii7bXUcKNfps7PVzBhLrZev+qVy4FDdya/pLwAHveYFv1A40Dsoevik
PR0tM36Tbu4hoYzmoythR7bg5pFvM5q5bNiuOVOnv1EHAyfVlUXj2TCmdWIl
vJqKlfOxR1e92TB9S1Zgvg0VjdlU6psM2LDr6rRuSoY2WsqFXfVqY0V5GqW+
VUwLg45KGBZwsWIp0rjnMtSw2s3X9+IUCyZYVlxYGFbF1ROvb5/+xoLg9tGu
cJsqJoR5c0ERC1qe61NfnVDG7KvV379vZ0FDDXbBYNdNWP3ZLlokjBntbo7d
3X6Ngqtfy56sODOj4zjvk70kCm7vZRoe3MGMPuV846NnZLFxosTiCZkZAzdW
i3bby+B3riVZi3ImXBjec+u3zwZcM7ted2GYEdWURrXsvYXRdN+fBb9PjMgv
8zIg54wQJlqbqB+pYESjmY8vP58XRH7XsUzFeEacVGtuly/nR0rMluNvpBlR
Js6JQtrPiabVXRwrhxmQYdTLMDRwkSgruUt7t4UBZS4v8HXJzBNi1095pcsw
4COpF6LHOqeJ9nm2y3va1oheRbrf1pFRQiH8MH/u4irBUL5qomX6lFiwHz2l
VbfO/AmN3pHV9CajqE9vU1YJjPkiySHVQg9cvZs6IbNK9CZMi2fAIP117Cw3
7FghLqlZslfVzNCzXC74tPGvEEqyWdWrpvN0LxOpJs/OZSLR6aold+0/Oj+r
WVL6yWUCWVL1qjNW6U6JGRwDV5YIGQba0uoXZtD2UvI6c3SJGFQaWOIbZQG2
3TXvuTYtEW3GxTP0BVYo4xo8r1O9SFR6HTsowUyC5VQqW0LvP8In5/ae861c
0HzqnbtEyT/i+279fMcqbiiwsH9bFvCPQP2CmbQcHtgteDa+g209fqRbdOMu
Ptg4LTJ4onmBiOlNbTPl5oep1hIThmsLRPty4lG90/yQk9nCpKy+QIzbLp/u
0hYAn2APl5dz617l1R2z0gQAbBZrD+I8kV2+qen6iAAMi1Fiw6zmiTDlkYmM
TEHQu3F6rTF0jgjjL8op+k8IOCNZnZxN5giVUM1uKbIw/Dia82qGe47obHDa
tGwrDPHStZFSt2aJ1S2bLqx1CcMRhkM/yr1mie7BICY1cTKo9Q0bmVNnieQL
XcafrMjQept/2bd+hpD/ZteWWEuGwrN37JkvzRBhPGqJhTNkCHMzeHHVdobw
sTj7ZpeCCOw3a5JQk5shnnrU6AVbiQBF0TkMx6cJFjL1sma0CMyxzXyzrpgm
BGVMEkKLReDDr/O0kehp4vLenW9sPomA372HCwJC00TVhvxvPWRR2Mzre3Z7
7xTRN8BTdIEqCn/91XgDHkwRMn23+uQOiMLjjtHsgrApot5//kK5pyj4G92T
a9sxRajMl93SjREFav7xMhbyFJHX5Kb4JFMUZlgVabr9f4nQgxWS6vdE4an3
4Bv3h38J7kGILawWhaBPt/dnRfwlHvbn21AaREFP59i3+l3rfD84r6BDFOay
pd3mRf4SbrkOtuoDolCx8mNi0+AkQRH5e+71uCiccbkReqR8kjAK/KzgMSMK
Bu/sWC5ETRLsItdpkouisKAqnla1Z5Jotx2rHVwRhapLHeKjYpPESq4T8XZN
FKZHVXfpNv0hWiBTu3adA58WO2Z5/CHu3FLe0LkePxepEDjP8IdolKyOEFof
78yO2xeOXJ8gbvAPWvutz7fAL51XpTtBeP4wvTu9nk9o5/WnEs2/ibjeUN9b
6/kuFog1hHv/JoxDZMpDv4pC+MnMnu8sv4k5pvaTcY2isKwnOLs1b5xY6Na/
+7JGFCIZ0jjzaONEtveAjUapKKx+4JJhaBsjNFiCEzpyRCHmSqLuMd8xgoMz
RavmnCgwHmXd85o0RkR1vrXtOSUKcYpxznIFo8RQ68s1kyOiwDK5GhS/dZRI
tRaU/71NFNjOLtwy9x8hFt3MR8XYReH83qCKIu4RwqXcOSV/WARIIlONpKJh
wnF1b3nYexHgvDc219D1i3AQEohSOSsCSf6e3GrBvwhStpwSu6MIcBv9lE3h
/0VkZUUeAn0R4PvUvfeA2RBRHBZp1DZIhkvZ9i6Pen4SbRsc53WqyCDo8vWM
QNhPQvvxkv5qEhmEZz/fbi0bJNo0B/a2q5FBTPLtgo3YANH1Lqd90l4YcgaN
ease9xN11tnNI3LCIFH2Sk5iXz8R/W7bIddRIZAyrtz/PbaPqO5YYBj0FwKT
j4d31bb3EJ4zNtOn/AXhsIdcfkvEN4JSHPifpQY/XDwdkHj52Vdi58ZC4azX
fPAy4s0py4kOwjeItZxRkQ/kr7hua3FqJ6IdPKedf/LAFFHQ9Xl7K/HU7hdn
tzkXbKTuVLst0EAwxHAPvc1hhXO7hhdlz74nLA5wR/F1ssC4U+KH/Jl6YnZD
PqEhxgLVye898jveEKkW5n0sqUzwoCl9u/GWF4RQ036yQ+0qfTI7x+1vThzh
6c5T9nHfX3oEU8ZbcwMvOq/tm78fNvyha1xzfSesl0Y/9uzCrudZY3Qr6tea
BOM79IB9LvUaQYP00x4nRuoyKujKry5dVYl4R2dgeLbm+uodXeZ2Y1TNuWHi
XdO3i1Srr/SblPtJFW5s6BnS+c5e9Rt9zqrrWeBFdiTJd7HEM3fSjeXMRaLL
Sbg7/HtU25Muul1KUoY9Mxc2Kff4Bwn30AVUydu9nvGhp4n/g67RfrqpzqXc
7YXC6HPrTKZU6Qi9+meUoejFjWioXvvY4uo0/Xfja1nNo8qo29ae9erDNF3s
oH5oS5Eybg4fD1NbnqY32l6+ajuljIofRE1Ix2boSidEdvOcV0Ehd99WQmWW
bvuGz7evTBXHb0jOaLyaoyfOXfozPaeOedzBujw//9E/HU8Z2KqphdeeJImH
iy7SuS3EmJwPamGWXf7K8K5FevKBmESHAC1MLm56W1e2SGf+FPijr0ILQ0zl
DkeELNHzvJskOYzW7xsRzcFjXCt00pjEBYVtVGQKJn93E2cAxzp7qYANumjn
XNJSqcMAbQfjzjYZ6uLj3fQP3BYMIOF5Taz7iC66SHtVPE1ggKniKUHFDF18
/b7mEssMA2BzkrQmux6elXQzu/OREUKcCyytu/XwO+u/LQsj6/y6JAnn9VBn
MkV7L+v6usj4y9DOr4+Ddc+lZ7YwQTZz+sCCsT6a+nItmtxjAkdnJ2eWW/rI
Uvu4bOAsMxx8GTHlvNsAHe7vuKufxww7vU1aJ48a4NPM79eTqpnhm+/VFYnT
BujmzXaB+pcZni4Y+htmGeBbITvXs44soOZW+TipywA3rk7YdoSun8ty2s9b
xwwwePishWomC2ip9yaVLRmg4ssHW1sbWcA6V21ETIKGCR6MYnI0Vnhv/Gl3
4UEadltk8Z6xZgXKI2qxtyMN9baosjaeYoXoowEO1d40HOI7NOVfyAryfzq4
F2JpuG1xZLi+lhVsLhWqDCbTMGswqkfiByt4jRb021yloXlVcdNrITZgMoly
aymh4c2CrW9ENNngzCqLRccTGs6ltFR572aDO+M84s41NNwfcvzRK3c2WBs7
2XyijoaFLsuFgrHr3Pkv4V8jDVf3pud63GADyeyEfaRWGh7WV8yofs4GDYwj
Ole/0bBM9sVF3lY2iJ2b3Xe3h4bs3BaxLhNs8Nw67p7WTxoe2WSHehzsYBdp
sig/SsOS7W5rnPLscOLgvuCcCRouH/Xd1rONHWZFD25JnVrPJzQk8oktOyyK
MhxnmqPhrYy4mvOB7BCfzSU6u0DDqYfJS/Zp7JDVK+/lvkRD08Ysw80l7GCo
vxJmubLuY+hWKMtbdggaMPN+sUrDYcb7lV972GGv2iPrvDUaGko9my9dZIf3
R37brKxzsgGhF0smweTDsvS2de62+hB0aDMJ3ofclZZf582nWp8q7yGB7WKc
9Nj6+HEXf0yvuJOgKHyhTGmZhm13f2m3xJDghcnzsa5/NFSs/Xu68DoJbuT4
TTPP0zDk+9KjsAoS7K/7MpA3TcOGedbJ/Z9J0MmZ3Vn2h4YbhPg15cZJYPbU
c1ZzjIa+GhK+82wckMX+7yBliIa4S/5BoywHtO1Z5DnXS0NBd43xPCMOYHkv
tcOmk4ZuMQaqgTYcsPmNsGT2en0qrm/33unPAQ7xl4rMm2hIer733oYUDkix
3M7psl5fu5bDw5NFHPApsMt55MV6fUknPHJ+cEDG50Rng3s0tJAPuntygQPk
r62Zrt6k4W169KCxECd8b6FkqGXQ0Cz4isvoTk7of0QdeRWx7js9N/+VKyds
GTyrIuu37ru0qPdyFCd8KTDbN+yy7nfgheOWp5wwOdD/IN983e/q21y+T5wQ
MiWz6bL+ul+J5u8DI5zgfC9zYWDTuk+LQbtkaS5wVBuWKGZb9+kzkeNsyAWx
CUpFYrMGGHJ+4avOIS6QvuvG9KvfADe84rb5cZEL2vdk3sipWd+vqrpWGnNc
sMxslLfV0wArzOmXmQS4Id38Vf/ZgwZIctn1uV2VG1rP1ffLGBpgafbRA9HH
uCFYRCPNnsMAZ1gT9jQ3ccOo6cuv1Xn6aC576eKdX9yQrdVKv3lWH7ONrn0I
YeIBJat/Fp899NEooGyHrAEPMBzcMkxR1cezve0m/gU84LD8T9n+vh52V+05
GVLDA6jgmvc7SQ8Nr2BW1Bce8Gbtv9x7Qg8nzUpGLrLzgufHLPJPZT10vB+Z
VnCCF4bbyYHWN3WxOn6q8l48LzgyedS1h+oi2fF4/8NcXqgrf/7libUuNvEf
1K35xAumZ784hJN00TBYvquNygeDoPNL1VMHsw7ksHTt5YOPXR+U/bbp4F8l
Xo0+dz5wfL/Xj0NYB4u75mN+X+UDjchLKgYvqShi3KjItswHGXd3bvNnp+I/
VlqVpAs/mPqZ61SGaWGh//R/N335wVE7Ln/OTAutex70y4bzg39fXHYUvxY+
qqRwK2Xwg/PvnWaeBZvR4wS3k049PwSKbSdJxWpiW3MPyz4VAfD8cPUz10NV
jNt6TbxZTwAM2A/U8Gio4uYSaw0rEwF4dIhen3RfBZPOfrCxdRCAI1MVYXP5
yrhd70mJe6oAMDQEGjpGbMJH1xMsoqYEoHmSqNQdomCjUMIvPgZBiG/MVt9C
p+BQ0rmofB5BYAn2P3w0SxY3RMSX1ikJQtO5VP/JbTKY6BBH4nISBBKc0N46
JYHOUlF4tVEQYiZjJJiBF8MzI22UvwmCTAFXWccmLsziiZyoHhKEyd2r8/fY
Sdi0Er6hm1EIbhU99VR5yIgG3aEh8gZCgHtttusH9BP8eUGby+8IQYyYdel7
IXZQFQ16t/3xevyrw1MJDznBPC3QsY0QAouq5Os1VrwQER2QPN8pBPy4XPal
UxCGnU4PbxUQhmGO1ndafhKAMidvNUSus4322RFdBTh1241/8DAZsqTM2sh+
VEgNzbmR6koGksvjQokVKpRZfFSi+ZHBWYmbWSFJByZW9Y1TL5DhvXay1b4S
XfCx5/I3qCGDH+sfZcZZffAWftyaLCsC23+8PXqjxgg8EtaydMdFwIk8qzeW
bAIJR3XkehdEwKS3oClq0AQKdbweXmRdfxc0uvHlG5nCz/6Wdz0bRWFnjIz4
lQlTcKMXLlw4KAr45mqxvq05uCzsteuuEAXtzzv523ftAkfva1LnY8XAcvK/
90zXD8DSN46Pf1PE4Hmk/uo5RgvI3hUa5XBtvX+Js7tN1wI+Kx3p0XoiBnqZ
VDnLPAsw/UXO/z4oBkvGX+9/CjoIym7p8to7xaHvVMfCymYrmDmaqPqDVwIa
88czjvUdhkv/zXftkJSAv9kZP1ilbUB96/Hkx5skoMGIlbToYAMeG8x/nwcJ
UDGuetbyzQa+dTI/1PaXgErDKofdHUfglU20duIXCUjri5EM67ODCweDadQb
ktAa53uKrOMEl5tUfErvScKR0y9LNsc5wY0dPTcVnkvCcnnKlUfNTvBo604W
sRZJEMuJvndK3xm+Kkt8WmbfAFLPZI6vdTiDEtMrt/qADVC+N/XPC4oL1D9m
vWS7Rwo6w6O+nu5xg2b16tctR6SgXmmgnZHHHTqLfWf3eEgBf75R7TtDd5i4
2WG3LVYKOEICm2az3EEk6Z6C3HMpKDx6rufHQQ9wd933YpyyER7PZ3PPfz4O
LMKZQ9GLG2F6eEJBZNkbBCeieAXZpYGDsbtOWP0EyL731LsjJA0NCqqnzRxP
wLYIo4T3atLQuXN1/9baExA6OKAg4CQNMz8c71+44AMTT7Xdb7+Rhn0X0eye
nC+MqwyfdjGXARk+53Arwg86Gs9NxvPJwscBXLL1DoSMbblmh0RkYfEUnys5
ORAsy59eU5CShdb6pby/DwLhY9aAab2KLBjnr37hngqE+mPGOezmsvDgdv/n
T+FBUDG/bHwxQhby7jQzZWYGQ5Zc4JW0EVnYyXVfJL4/BA6Fu+hde0MBj6vJ
p6k/IyErV5ht/gMF9CKfSnzgjoJ2ov6LVTMF6hzu5kXpRMFhFtUgnh8UuGOh
fnJXfBQcSZl+EjNHgaS1QU8nhWiwy4vXOq4sByIpz6oa9WLA+U2hmk6aHDgU
7FAzT4oFH64xykc7ebD5Lw2zPOJhLLSaheuYPNjnTWoKR8WD9/CFoR3H5eHl
NnmX25nxcPytUkltgDxEkN8q/K2LB5doD61nyfJwyF/3wxH5c2A73Ue/8Uoe
Vl2Fwg8NnQPzrq8O3hQFqFjqcFA7cx6k79dnsY0qgOJtyr3U/y5CeKWJFd/1
TeD0ufjqvvh08Cv0qdDTVAaZDkG1bKYs4GbSd9H4qQJVX2/S9O5eB7OT1pkq
V9QgSYtE42HMB7EqqVNm8hoQvh2sSY534LJ/YvrmDk04+uDjr96QYrBMOKCe
W7EZvsw0tx1/XQoq9vGH7kRqwbk9rCeeP30E7UMct68c0gar5/JZyVFP4KPL
T2NBaSpUuR5Kt7CvgD6WooVMChU8eGtsHnpWwEyh50NxRSr4nZBzFAquAPGx
sQ2y6lT4j8ymOXapAtwCpuY1t1Dh4obslW/1FbB4du3BPhsqTJxp13pGfQ6K
d8UlLqRRYSZzgewlUAm0HV3N3Feo0FUv8eW0dCXsHblx/lIWFSQDm2ai1Svh
tLrM7NVcKvRtmLQt3VUJNc8UmwvvU+FI9rMOs7hKsKynJtS9o8KXGplzETOV
4O45a7SzkQqvlSzfdTFVQQjn8+nGj1QgBduFgUAV5O43PNb6hQptKYz6EhpV
6+c2GPUPUGF/geImPs8qWAxhmnb/RYUnnMnc14KrgEey7t7IKBVmWce9Vc5V
gbbTDtG/f6lAS3+QZX+7CswYOT4Gzq7nxyPmsfyoCo4UNMQvLFDh1nzq49tE
FXibJW+JWKZCbZ1I5P6PVfD//5Vwc+xJ/dr3KvgfdnvOdA==
      "]]}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwtlGs01HkYgLGllBIiE4ZRq5rFDL9Kaaq3IrYiETnbJs1gLdYk1iWaOG6x
tY37utW6TeY/SqUwlp13Q0pIbZFQpDDpyiiJte05++E5z5fn88Pg8l18VJSU
lBy/8J9PDDuOzc4SDCzJfjcbKcOhKN2JnmmC3N3SkPAwGTotefqx+hNBj7HH
H94ck6HxxqMz/HGCtkCf6QuQ4Y2UtPn9QwSX95ao1R2S4XyLLjq2EbylfdUk
YpsMM0K9dsfkETSNa93/br4MJcohJUrWBPuPKEv7s//EuT72VrRDVijaJ/So
K6pH7UdNgUWplqib7lnbWV+HLg25vDUtbKzTXywM6vsDo95uDhQOsrCq8xlH
+WUt1oTn+lfstUCPwQ+S+6q16JTmZvxPjhnuMWGPnVsiRfuCeieHV0yMKNtV
PkKvQVFzZGfIwTXoGFOyOnhzNXrGZ+jcLVuFP6esiFY4VKHA66tLC7VN0X5o
ILXK+zoqmRvJdiSsROfkWP0P8dfw8S85SZKHJijx3BnNTqtEgwV+YsV2Bl5O
2HVeXHEVA9Yx5/YYGKHq05Acw9oryLN+UtbQoI8ZJwXzNG5fRmaEzWxQiR5m
DQr5go4KLOxzbYzcpoOUGV/wYOQiDsfqcOz1tFCL1qpZxijH2szVdiPui9DA
P8Q1eC2FbHm3glWgilnf9kWvcy5D29oetRl3JeS1NjHDT4vwqLhiUlN7XPag
cjLxUlEJuvuuKLwf3S3L2UL9wOsuwubW7hTi+mhr2wE6W5tWiDbmf111zh7f
6iCROgb7nEOVMJ1eb5oS/P6a2FZ35+I8dedY7htV4Hzanj2inI1x/Z07jhUv
gipGl1SDk46X8xKdBWOacI1xr4UXdBb5Rd5LnrvrQGKaYY+gNQk9/XMNk2L1
oFzoPXO2PAaT94VtJPn6oJcacIJ2JATnLM0cOjlFh5rs+NvKg87YdSfhXbwG
A4zd/OQeXTxwi+Kuz20wgWm3MHkARELgwlGT9u9Wgm8lo+D8rTgwktzMUn35
NairCESGbSkQVbPDVSNvFegc9oh6tjYVjooCq9az1kB0WOjyTTcyvnTWXIsX
TMhr/Px9Wd5vYPfT/kxmuhn0TszcNeLlg57UkG+30gLC+lVs8uXnIe3YqVR2
Fwuex0iLdZ8UgkviXvOCKjZseDNWOiAqBubBeLeSE5ZAb/sRr/iWQueQWlG6
mxVw7bPMTu+5AO3cF9u0jAg4022XyjXFMDDnwmSmCYGplnD+PZoYFCK/Cpop
gdJwSYuUIQba6KgBw5zAZIdWbIqlGLxDxj6yNhEojBt4/c0+MUzFzV50PEBg
bETQHCQUg2kpbXnyWQJZldLjisUUbLTv6VBPJwBerx/26lKwR56fJMwiMKrO
sGyiUxBsbjyRXUBgi++p4UwLCuqum3aIJASG9Q7st3aiwOUmSWxsJrBBoDA/
foYCH78JjsMdAoPM1cncTAoiFlSP32kn8GvXwee7CigocLI58vdDAgPshlz9
ixSMdALn2SCBlMHUefWtFExFqIz7DBOwEjZxSx9QsEi/USx/SaCP86n+TC8F
Voftl71/T4Cd5RXq+YoCO2W19tAJAj3bM+7uVFDgUdwSPzlJIPFtM5M1TYG/
3elN0dMELPI/JyybI4H//wXdDqyB2YUS+BfaZGLU
      "]]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-20, 20}, {-9018.99892979596, 6620.999125714325}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Print"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
      "]]}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwtlHk41HkcgKcpKkcH6wphslNmXeNbiabtU0IPkUYkLU2KPFKUarUGa02u
ejbjyLpWNM3SMKOQYysffpUeJGndHUo5e6wzR6xtn2f/eJ/3z/e/18AniOtL
p9FoTl/5z+H9TuOLiwQt/LM+R2ZT2BemPtU9T3B0UFDvkUmh85q30+WzBItO
nf6dnU6hvlXwQtAEQaOg7+16UyisTUha0dNHUP9iT6rdVQpXmLavx2cEVwkM
tyiHUZhynuf4cybB4ZzCkAwPCiVLQkQ0S4K32u+PlqpSKOdrb6HlZYE1Y9OP
uRG1qNrxODBPyMbcXGFn23gNcqmM40b15tj/29OjGgE1GPb3jsDEXjNst15X
g62IFT9mBMj2m2L8uXqeiyOic5Kb/j/pxthYwCoXBlSjffYD572fWMhdmBN+
sXmI4rpLbSFHjNCbHzfIZj9Ab0GK2vP8jfjQxXHaavl9jOAtlSqqMlHs0hC1
aqwKaSZ61TaXDdHz7eWxIz2V2HUlPVbSykAedUEjrKICdRT8CyZ3G+BIC6PK
T1SOp7aw5Lp19LDZUk7V8NI9PG75Jp+itDH8O8YBT9cyZIVaL54RaWKxw7yi
165SzH3t+ujSLjXcVq0YztYswf4oNY69pgraH+0IaKHfxarUTbYD7spYcLBr
lW1bMZoPdk6aZcuj9I6J+TFvGe6p6l654E5DzbUGnBeWRRhcIJtZqzpRzdKO
LP3w/ja6+23IbeF3VjvwDzGFZflY19iZQFw7dtK/iHzMksVobVJz1yVtYifP
0Evx7G4R0i+qvTqhRYMm0bUiR608XK7kEuUzIg+Yczg0OToHo3vabM7dVAZ1
dgQrZCgDizNjXCLG10JCcNpzwY3rGJR3Ys0HdzVwkItxej0rRO+ADN3YKE04
mNjCf77nCsYfuGhFsrQh4OrpOEnNL7jsm9S+yLn1wPHzu8JSCMH2hsujgtUG
QKu10/F6xUG3MJ+tGRQDGrfFCaLfBUOg4jCjydMQRCpRsXRWFOhJnlyXH/oW
IpIGGfzyeAirsHFdnbkR3pW4ym+OFEKwOPDeVjMjODm6Y0Xoy1RQolv6mH5k
QVY7l31BkAG2pw+mspKNQRQd/vhXvRzQrNQNsjU0had4mPxZlgtJ5+KE5u1m
oK6WkKaoIAJuzH6T7Hvm4KYCdGqrGFhHBG6icDYsjP2cF+eRD219K/OS3Sxg
kXmo7Xb+bWjy+bhLRY/A6LKSNZtfFMK7ZX/MpDII8BY7d7Z3FcKk2F+mxSTQ
PEsL+ulDIWgND+sYmBAoHnF+htOFcCJkfNpsO4HAjqF4p/VFMBe9WOR0iMCA
hLH05KkiYN7SWhd/jcAbbtJUupwUrOy7m5WSCTg7VRruWC2FfYNZsYnXCTy0
73Ht0ZTCWRP9qbRsAlkc07tMYyncL2M2iyUEPJn1Z0q4UuA+ITGP6gj8Nbtk
oDFHCr7+U5y9DQT2TG7SCC6QQqhC+URDE4HSkf12qiVSyHa2PvaylUBKb7bo
8BMpDLQB530vAZdnVsf6PklhLpQ+4dv/tV/HS4z/LAVl7UcFg0METGtjq41p
MrA4aq8xNkZAqbxVN0RVBrZLVjadnyLAvzO/T11XBh436wUzMwQ+STbwK5ky
CLC9up0/T8BD7CD5wVwG//8Lnt4427VoJYN/AWbYWvw=
      "]]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-20, 20}, {-9018.99892979596, 6620.999125714325}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Print"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
      "]]}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwt1Pk/1HkcwPGhWIXOtSE5JismVz4bi7G9S4N2XI2rR7XYQfUoS9JGK1oz
jLJbqUyt61GOHAnzVUSp3hrMA61Kj3F3yjGjR44ZkZTdfTz2h9fj+R+8TLjR
nAhVGo3m9W//mTjiNbWwQPDtiFi58EWCwwnfTPfPEyyM0YqOnJeg94qXM7c/
Egz95C/r+ShBY8fDn6MVBAeWDT+nlBJ8mH5B49UwwWebNSRhcglqWHcb4t8E
xXzPLIlUgplHQ9m/5xDMN5K6nLshwXKV2CKaA8GQoGGB4W4JqkW42+n9ZIcv
Mn4oDy5pwdU9zZEF5zchsJ1c4mgtyBFnh1m02aKj8pZCurcZE8ZdIjMGbdBp
fwQzsLwJ6+KyD1b5WKP+nvqpSrUm9L4QYPwlyxJV9VydLThidM+75+3xjoH8
ZnapLP8hFkuOd8XuscDBqRke73MjBqdk6jwu3YBsee84k92ISaGLKjVXm2Em
N6TtcREizcrogWuqKf7aGtZaqoLY90dWWrmUjnVK5xq3/PtosPRAmXKbCf64
a6b6XeA9PLSZodZvYIRyH0OpdOIuhjm8KBWL12KdqSuwz99BRrzTQlSRLnp8
qhTE7KjH/Od+Tce36uBIhGCyb+g2jiTrMN11V6FHZ5HDdFYt3hGas0YDtfFW
p3UBx64GbWW9Sps8deSIagOYT2/i9jv9Sz4H0vDmudS3XWnVeLisanblasUD
40V4+RadwsB96/M7T/Q+uDrB8xRcr0LJo9504tezJVSY/OmuQQU6WTVW+15W
bHHiBinigq6j6jGdgXA9GmTb3c0XNpbgV1q+ydz36rBi44e/HJVFyH/V5Xqk
UBvkzy3pH0gBinIEvklTKyHTfFBs7nYFowvCV7wN1AHekL40piYLgw9mr0tL
1oWksii/JH4mnt55zJHkroX4ptixuO6zuPhr4fDJOUPw79rnp9XGx+721ImU
5SaQ+279Rh/lEQxI4Npni+nwShjuDU5siNQco3fsNoXRac/0p+7xYFTeckld
/i3MP4xzaQ8RQEKdq9/ynA3gv9l+R1tDBhwujqy1t7EAY16mYEwuBC1VB671
EAPqkrbb0U7lAOsXfyHjoiWw+F8GYlKvgm79umiWqTXcEHvKk9cUwoUjp87b
dtvAbL+4UvP1NeAIfKzyam3h3sSNBpJQCow9KQFFiZuAzs7+3lWjHLqGlxRc
DLCDqETRoUePKqCDO7R1lREB/UAD5UdbEbxeXDIrpBNQWTyled9eBMriA1V6
ZgRGKcl6HlMEemNjBiZWBGq0Y/2WeoggPHZqxsaZgG9za7V+iAjm+AsVXkEE
BN/FxTifEYHZNT390+cITK3qfH9CJgJH9/4nWhcJ9GGJ+tZxEXjKctMyLhHA
qERDtWkRxFgZT1/OI3C2zdz7DI2ChhqzJ8XlBMx5Jyvy1lDAaSGCJgmB4EnL
yPssCiIOTDM92gm4XVFN4bEpiF96W9HeQcDKqyfHbScFed5OPz+TEpgr5bd3
7KVgtAuYbwYJZIb2MV7GUjAXr6qIGCHw2zLRtsLjFGivbSqTyQlwG1J37z9J
gV2I+5rJSQLWupvSx9MpYKks6Tg6TUCnRb3gZgYFuwrbUmZnCczHDtTHXaLg
IOtP5xPzBN6YVD91zqXg/39B6+M02UI+Bf8AHidsjw==
      "]]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-20, 20}, {-9018.99892979596, 6620.999125714325}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Print"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
      "]]}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwt1Pk7FHgcwPGhshGbEksJI2QIk281iPpEdrJFmmKlQq6VpSFWrKNkHE3a
Do1yzPMUE8lKZnJkVz5uy0TH48psyJWj3XIskWa359kf3s/rP3hTvdksP1kK
heL4X1+MHXWckkoJHjhUO3VuVIwj0WqzvZ8INluH5UcMidFJuW+u/CPBvYZ6
x4MHxKhjGbLEniZoJU1scO8VYy33+sr+EYIGRQ63treLcaVplxY+JUiRf24z
USbGG+Fe+89nESzDvhTXJDEWyoQJKAyCWvQlLRN9Ma7wY5prnDBHmpymJJ7V
iirdDUE517ai/7e0FPHlFmTVZfrQWujYqS1eNi3+A6P/tgm6OmiGnPcs5ZrF
Zqw4mxlYfNAUPY2bVyVaNKPTdRedzxlbMOoE9dZ73yZk8quc9k0aYbOh8gyD
14h5TVGdYcdoaOvxbtdPLxvQg3NDtf3eZvzEfbDeXaYB47yWPVilYoDDVI/h
bTb1SDHRrrZL1EMZVu65iZg6fHUpI7mwQxePRYnvO/xai5oKAQUztlQcVBiq
54/V4I/bjVb0ampjQVofO0OtBn0Yr+/V1W3A3NKQ8RAmolGklfS0QB3TE/rz
YxSr8c6fh+uj9qiiNzc/2/9UFY7Gq1oz1ddiqt9+tvWb37CSZ2j/1lUJ6Wbl
PietKpE+1jNjxpdDa2OnOZvMCtxb2Su/5EpBwWJNgJxaOYYUFM+vUZmu5lYu
LW4MLUVX/013XsT0VIsd1YKpb0XYJO7hksPdu8NV3GMl/kK0MqkROt+c3p3R
5Fc8Uv8QZSNUJb4aFNhxOzvucewD/ErROd77Lzmg/7I0YEcvxIT+TrszuUow
3/8owWYqHx9mJTnHTa2BGIn+wNeTAmTn+CoPuarCzCODC3GCO+gRmLkxOV4d
jgTVVl2i8fHioQhLkr0B3CyGpucNb+LydbyRcwtacOCJfknO3avY1Zr4nrOa
CkHGpa1zmxLRJdp7R2adLoRYRCldlrAxaNWEbpu7HniVMN0cjp4E7cLGdLlx
feCkGf6j4H8eoivsDq/O2gzdjdLk76IvQ0heUNkOMxrcNY7k8bpvgKIsw9t0
2AjGHz/zdIjIAvvgIzyjtC2wb/cT1ysLt0H98Ua2vZ4pjES+2qMrK4DrZ1Ku
0bvMIKXDf0xtfz6wkg6a8MvoEHrRsoMcvw9GxzgugtitkNpdemHgRBF0jsjn
pLmYg5v+oYhI54fQ5j28Z602AUVuoOO6zhIYWJ4/z9MlwJ5qWeyTlMBMXkCx
hgGBF+7G9wsHS0BjYkKTakIg3XhSzu5DCfiGTc2Z7SSg9TQYQxWFsJAgLXL8
ngBdOZS02wrB4K7G+otXCBxJP6vBLRaCJbP3mWIagfLPXU0uZUI4MJadfDWd
wPofLCKoVUIINdGZvckn8Jrx8UVFixB+LzV4lldIwL/n59TRYSGwGklSfROB
SM046V5NEfgFzFrvayUg4bwuUt4kgkiF8unWNgK73u06LqGJgO9kdfJlBwHZ
J9KKMIYI3naC9ZtBAlzP+DM5LBEsRMpO+40SmGwa0Dl9VARKG+oLxsYJONFt
2y29RGDuyfzmwwcCa2WWbXkeLAJ7Gfm28FkC4ad8XmWHi8Att4UzP0+g63ld
SkC0CALtU3fGfCJgYaXH2HZBBP//CzJzOMPSFBH8C8pIYwk=
      "]]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-20, 20}, {-9018.99892979596, 6620.999125714325}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Print"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
      "]]}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwt1Ps3FHgYgPEhKUWKiCWXqRUTY/gWSzYvYmwiS9RmkwblyDWFMokTatSW
63RMVK7RtKlmRtistxCZYigm0UXuyVYumWxld8/ZH57z+Q8eQ1akV7A8hUJx
/7f/PD7iPjk/T9Cq0012gt6BwwmaM71fCN4q7av5w7QDPZa/mr3zmaDp0fCE
WVoHGthEfY2cIkg1OP8tYl0H3k/PWvx6mKBKRKeCv0EHLqZL9fAxwUGlX1bY
qXVgzuEAt6SLBLMd9tNkMxLky8WUUKwJfryZ9GtUnQQXBjMttfdYYqexq+lL
RwmqP2sKK8q0QM1s/9ruK+3o1cALNGll4F2dZRkR2IYJ738Myxgwx6ruN3Zy
jx9jdRwvtHI7HXcNfOJ3jj1Cjywfg295priNypi8NCVGZkGdh+s7GsaXb70+
KifGsuaj3TF+JuieVGIcbdCK/ik5Gu3l6/BI+hr29PqHmBiw4MZSdSNkDvdn
VjFbkGKmX++UuhY9Ock6nw404/Mzeaf4XVTk+7uwGUceoO6SkIppR0O8mbr1
ckVWEx7cSFvYq6uPiq9i8lYXNGKg9cvyhgYdzDmRuEj1egPS4m3nI0q0UBzd
Ym0vvo+FL7wbjzpooA/X2j5Ueg9HkjXsmFpqyFEeXvx0CrE219h51FcFdUNj
vKPn6pEx1jNtXqCI3J9esDdq/olbanuVvvpSkPWoiRbndRejKiplK9Sn6p8K
ZGk3QmrRd/+awk52Tz1v87UDgZersflRTzrxfmbftlOPof6qCm3N7t32vDBl
X9LVV1YtE6J8rEZfkDYFJJ+0i3otBbhI2TOZ9ZciXGIXuk273MKTr7udDhWr
QJWhtEa15QbevJjmmTi5Ap5nhAxZOPExsiho+aCvBjg+PBduf+gq+ofyVp9K
1gJf19vfmG+KkfNzrA3J1wHXwd17XYKuoMLK3OETc3ogy2LYBGzIQ6k49UOK
qiFUvy1tMqFmoU8Cy4rXQAWFaxzNnPcpGLZ0nNq2ey1IgiY1FySEoj7/AVfx
7fcQsPwDmSgPh4RqJ2/Vi+tgB3vfBKc4DaLKwqqszE1A9m50Q2xYFijLW7Po
QzSw4szWeOrzwDl8Ry4t2xR6Z76260uvgFbN6kjntXSIfS1vm7+nBLIOnc5k
SM2hRS6GacYoB6+07WYFVQyI6htya7jHB5pfik/JcQuw4z1JCnSohO5hpaJs
H0tgMbmmZ9NuQRtryEFNn4Cn3paVY24C6Fe4KsulEphrjYvs8BbAdFlIpbYR
gdI4fmuNnwC0x8d1Dc0IyCRqyekHBRAUMzlrvolA4cn+ifVnBDB3cv53950E
JkcTmyNaBWBUqv0d5zwBrqDm2LSrEGyYvRLlbAIQMNHV5ymEbWP5pzK4BMaV
DS2adgkh2sxg5kIBgc37T4/khgjhrshIUsYnMKK1c4f1aSF4PSBpjc0Efkic
NjvWLITgkBk7VzGBAZoxh9UuhPgld6bEbQTOSf0Gt0qFUOBhu+9JF4F+RgNP
Z0QIo91g92aAQPpA5qI6RRHMxctPBY8QsMxoYpUuE4GKTmPF2FsCL+w+1/2m
KQLLvcxVHz8SYHADDvsbicBZTqnt8AyBXsecdhe6CHYVt6bIZATS3jfTzK1E
EOp8dhP7CwF6/t+pqzaL4P9/QY+ref+8swj+AduZZdE=
      "]]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-20, 20}, {-9018.99892979596, 6620.999125714325}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Print"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
      "]]}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwt1Pk/1HkcwHEp5cxRI2euWdU8HJNPG9HxVuaBQpbQrq00KGstNj1kHnQo
xxYq48oxW6RxZoj5kpS3W44hhJYtHRiqTY5YJbv7eOwPr8fzP3jpsYNcfCUl
JCQc/+0/z447Ti8vE8ye0puvNevDsXDVuaEvBKucPvxUyexDJ6UX85V/E+wq
rhkuMelD3R3BS0EzBL/4edTzGH1Yf4UrPTJG0ONlfEK4fh9KmwxsxE6Ca3vm
DcxV+jD5tNeBC5kEw8s7nUs+9mLRipBcCXOCbqGcwqzSXpTytTVTP2KGefcd
lWINenHdYFNATuJWzFN7P9F2swddGjK8t7Qx8VPILofcjT0Y/mFXwPXXpjge
L3s8jvsEq85k+AsOmuDFupyJdsUn6MR10/2aboQPyyvpGhe70Zb30MnuHQNT
bT53f37fhfwWTn+I5xZc9b02hE6K8GhUMq0rfxNWiC3Wyz/pxHNeK0vk1hli
tWCy61BbB0oY69Tui6YjO+hrVmtrO/4Rlx5b9FQfHQrlujzK2lBL1q9gdq8e
xmsJxOnFj/HnbxlSQ1o6KCfrcHI+sRW9zZ/nNzRoosnU/vnzES3ICLNcDsxV
Q77CSOADTjNm/+nayLGm4TF+4AGV4004HknbaaumgoGhSYpano1YnbKZJXZX
wJq6MgvrPQ3InHg2a8pbjQIps5DEzfVoUz0ks+QugZ8u2KUk0+swuECwoLxu
pvb8mcNa5bKI7icMsnsintVW7V+iyax5hC0dz64Q18E91WkKqpIra9DSuO6e
c9rMnt1DSiNbe++jZCht2EddAgISgNPSWolr5J0j2X+tBo3t3sNJXCFeGunf
d+q2Aih327OpE+VYmhnjfG5aGcoHf6zc7VWGQTk+Sm/caZAvaCr+7FmCR/0z
tGMj1cAmjnGZtbcQL38XuoNkaUKA/YYiq118XLU+Zez84kZInp3wujmSjQPt
0VNRinpgtMjw5/Ey0S2cvT2jQR+MRh0tB9q4GCD3Vl/0Ax2KaayrzprRqFPU
nLp68htg3jVfuCryxvCqfa6KmZvAQtUg+g6dA8H8AGq76RZgxnc+1ngfD/KS
5myTUQZkvKsCVdc0YP1yKIWRZARf+Q/tDFbeArX72kEsugkcWWzq+aCcC9xT
vyUyB0yhykvc6hSWDy4xB415FBNqJsp0XyUVA8Mzyi337FbQaOWk+ziWQv+Y
TE6Smxn05eYdzo64ByL2qLWKDoE3KgV2YTEV8HJV3kKKPoGchIUT3GsVMMv3
E6gbEmBL20UX36gA9bdvtfSMCTxfGqsbKawAn5DpeVMrAoNiupV9VwUsXlq+
6+hBoOPRLWMNNSEY3lHXuHyNAOV/Q6WmQAg7bIe65ZMInB4dZ/bfE4LDRFbs
9VQC27zMD049EMKvxrpzaTwCpW79cXSREGqEht38IgKFsF4qYVoILs0kprGF
wO+q1+ePWFHg6ze3066dwNHEF7QwGwrCZCtn2kUEtOVNt3EdKeA5WR7vfUrg
xgpRcPMxCsT9sPPVawJJ7+QmTaIoWAyTnPEdJ+B80lPaPoECBc3GgolJAmtf
FRp6p1Jgdsx2w8ePBK4M2Hun5VPAWiEjOj1HYL9LemRZGQWHb7dFLSwQkOkU
32yvpsCfFW8V8YVAs63Fo9EGCv7/F0TVxw4vd1DwD1yQZvM=
      "]]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-20, 20}, {-9018.99892979596, 6620.999125714325}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Print"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
      "]]}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwt1Ps/1XccwPFDImIRGqPOIanOcsmnkdu8kelBTnJtXWTCzqRIHqLTZUIn
1iSSBzpdnDJ2VqTO+R4W3jkuoVDmHLeWyLU95nrWyci2x2M/vB7P/+BlEhbj
F6FMo9F8/u0/z4z6zCwtERxNGZKfS5HhCGeNvG+BYFL+9GHLZBmytF+/pz4Q
1ChbetF/VoYM+9jFmFmCFr1G9+1PybAuI3vFwAjB49YBkbOxMlxhKVuHzwku
9NdLI0NkeDU+1Pv7QoI6tsWUj70MBUon7tDsCDqNsZOMJqW4PMLTxvCgDV4V
ritwZElRt7shuujKVuRqsyZUxF3oJyk4vLnFGre5pWeiWRdyJp2js4ascLR/
rp2W9huKTxZEle22xK3Le2FishNZ2YGMj/lb8Py1SdZeVid68qpZO/9g4uWP
2g/EZS+xuClJemL/ZiRzArc6o5cYknpVv71kI77yO3ncl/MCz4Yuu79S1xzp
Lo/bucMdSLOg17qnmaGxstb5B34d2PtDPlfQZYpwwJhfG9mOxhrs0jk3E0xo
17l9zLkNj3zBXN5nTEexHrvH/O9neNju9xKJxAjj1KSVkppWZCY6LB27Y4D7
9O0+VOS14O1X/vVJrvroK1fECYKbcTRZ38nTYDXGT93z/mvLU6zK3eQxFqSF
RdWSEK/xRrQe75mz4qmi1/ZpwxRBA+6o6lNfDKIho01n2ycp9RhbWqbQ0Z2t
XWabc7HIVYJBketvvzzdU6tXqeaUrl+HTc96Moh/t8vN8Zy8gElEB4snFb55
sy7sbqX9fqG1qJyg3x9uSIMp3bodtzSrUU3TNznsT1XImnXn07hVmDIgdY/j
awHDUr6HqSXG8sILvmdndED75qUaRbUQY4rCtd8G6YPeo+GbPU4PMSSqYC03
2QASl8xcDo2UY/qeBHty3QhueG88eMDuHqro5Y6cm18HcQPcDfQvS1DWmjaV
usoENAYfffd5AR8DOWG2BRJTyApusaw042H0ynembfvM4FK9JPl+bQ7SBY3X
VCc2wC0HOTNbNw05Ynf/VYUbAZ7TuGVprhhbHC2ytdoMmseGvEQ/JoOmsl2Y
5TAT1rzVm8t/kw0eRwNymTlbIPTufDJ5fh0MKtfGeJhZQmHjes21anzIjrt4
xVpmBXtnGo9yVpaA34XdFjyRNQQ84PlnVf0CzP2pgXfObIXtrzJ2qZeWg3RE
vSgn0AbKndPmKfOH0BY27LqaTuDpt/kTT5KE8EblJ0WuKQG2g8+gaaoQ5orZ
ZYbmBFZoKfWmZArB8N07YxMLAl9VsJs9+EIIPzHz3sqRgGTBrqT5mRDmU5bu
+QQTqLkijXhBF4H5XcPP0i8TePSr7puBBhHYe/Z1aOYQCMhs6nbtEMGu8evc
rGsE5kI5HUW9IjhuwZDn8QjYqA7Vhk+K4LHQvKNYQKDMt+LGmAEFfo3kQn0T
gZ+HfQ9MHaEggi132tlKwEusErAngYJEDWq2tY3ARIbYu+J7Cngsh286uwhs
smY4xudSMCYFp8EhAndPTRoqaiiYT1SejRgl4ObD1/m6mQIto/rS8QkCg/Rg
9apOCmwOeX46PU2A0VCj4IxR4KGk3hYvJ4B5cVP9MxTs5bekKhQEQqPMx5wX
KYjyuOR4eoHAolPv6xtqYvj/X8BblSlb0hHDP4blaFw=
      "]]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-20, 20}, {-9018.99892979596, 6620.999125714325}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Print"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
      "]]}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwtlGs0FHgYh4dkCV1oaiYjd2WE4R9F03qjOZzKJSKbsuWyx1otJcXqJrdE
q1yyLnM6SmM0FUtmRpedV25JpOyMxmgVNYVKwros2fac/fA7z5fnnOfbzzgk
2jdclUKheH7dfzzx1vPz/DxBjawL4xJTBSoTV0woZgmOpQ6UGxkr0Gtp36Ro
muCLU45BSasVaOQUMxc9RrA6trfela7AB+dyNF4qCQYFrc1uWqxADZvu1dhO
sJKJlm3TPZh3ZP/208UEd7eOBMue9KBAJbaMsoHgNXXv1veJPbgw3N2evs8e
f2Pcbf2nSY56z5uirly0Qys732A6Q46+DUWhlo9YeCl+aHFW3HNMHNkcdWHA
9muPNfwSu1F8rCiy0tsG77JLg7bSutErx9/oS+E6jKuTTGYckKE7976Xx3sm
av7YV2l2S4q8lgRZbJAlOq1kzrarSzE4JY/6hL8GG/abHPlu5594cv+CW1p6
FjjI55weK+9CirWhxC3VDAdNI/n9Kl3Yk1mYLpCaoJsze7bG8xkyFkVUjLsa
40Zvp9e5157iTw7MhQqGIabPD0z6j3Ri6Ia/+A0N+ljVn73mILsTmfHO8z+X
0XDobLvM3OoJlr7wa0zYQkWLZFmtQ307vk2ist1puljyi8P9kOjHeCd/Ledd
gA4if0R/l0obsgbl47ZcdSxh36geKWzFrXcUmnMBFKxq/+MQf9tDjKmonFqm
NyaJz1931ryvGQN+MC19dlwuidvzqVmS2YQtj+XniN9zF2aqcLOaSyM6W9dX
+xSMuWQru7V0ZA9Q9Si1N4xOARuOtypJrcdvtH2SQj6qw4keYx8DGmLyS5nb
4as6oCb4IAgNvY9VxWk+Jz8vgzPFbhotzXcw+krY0tcBVAie9tarGRVhcGSR
QXoSDap2akTLd9Rixs6jTqREH6Limpx31Vaj2vJ85amZ1bBc53Bk5aNK7G5L
/ZSyxBjWm/1Oscq8jv6JIY5FDSZAW7FvXNRThlFawyYde8zg9nS9biz1MhoK
mi+pD5nD1HjvbMv1PEwUu/ktKV4D8duvup26dwZjeFFCR1tLoMwWR0xKfUFb
dUOIzRsmBPat4IscMoBzcFc+M3cd9I8mHFLvKgBanUE0x8wGbDkMpal5KeQc
PnuR1W0LPOFix5qnPPBN87bmClmwkVS8bje4AcygFP+yE3aQoM2VXy6vAplS
80quvz1MLLPV7YyvgY6QN1t0DQl8YVBnmuhCeKVWPpVvQmDH07hXZ8yFMM6L
qKRbEChMlT10sRMCfXiYYWxNgPWxoKDOQwhhsZ8nbTcRCJWscrh5TAgzyfM3
PXcTeHjAKCZPKgSLa/RVGdkEcnhWypCLInByV3Rq5xLo25PVbsgVwY7BkvQL
lwhYL/lwu5cvgkPWRhMFXAKNx24lB6AI7tVadPIEBCY97Iy3jYjAt5mkNbYQ
2DvsuNfOUwzhERNsjzYCFZcL3D4GiiF+kWisreOr7zfFFISJgevlfKBLSuDX
e3XTZsfF8E4G7P4BAvXn2QU0gRhm4lXHwt8S0HLlnpQKxaCj31gxOEQg8O+5
8JwHYrD/3n3l6CiBT8GS9do9YuCoaHYcmSDwrZ4Ro/WNGAKvPkqZmiKQ2XJ6
QdqoGCI5WZuOzxKQJr4acp0Tw///BSYs12fzGnXwL8twaPk=
      "]]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-20, 20}, {-9018.99892979596, 6620.999125714325}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Print"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
      "]]}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwtlGs0FHgYhydJiAjDyIixEuOafyoZxxvNUjFKsZ0uMi6ZteSSU0op26RF
5RKqiVrXRK1YO2bsymtH2XUrCSNCJZNq282Qy5LVOfvhOb9Pz4ffl4cRGOkT
okChULwW+LKnZF5j8/MEFVUs5Kd1B3EkXneib5aguc4Dh0vag8jRHJysmSa4
zYgbl6s5iMaOUXORcoKXHK7NiVQH8feUTOWhEYK6gSrKY58HUNmmZxW2Lfi/
jtKDZQOYFRuw/cz1BT+i7GsP0QCWLzpSRNlAMLPDUqC5dwCXhLjb6x+wx+oP
JjebLj5HbemD8IKMtZh5Ypqt/KgffSSCIItmO6TrcduUdPox/m/n8PRXtuiq
XFdlubUPRccEYRXeNriKN+X4LPUZcjJ9jT9fs8IcurlRxf1edM+r43i8Z2Lt
izfDmyekWNJ0vPvIPgvMoSZ7+jtK0Z+fRX1UugbVbhhq5Uf0YELA4p+WaZuh
U3bG8YiKbqRYG9W7nTNFWl5Ow+R4Fz5LvXa+vMsEL02nhZYyu5Cuyrs97srA
ukZexcuIp/idA3NJH90Izw07+Lrld2LQhoFSicQA/9XJ6uNKnyAzbtP84SIa
WlR3LFY1fIL5z3c1Ht9MxbFbi1OkOztQlkhludO0MEaVWmWX9Rhrs83Zb/zU
kXbWIcr/4iO0G+0dt81TwlKtIOee6TbcUtunMudHwdLT3pygxFaMul0xtUJb
Xt+fbWrAGm1Gv0Nf5T852VufkCyyNA//E5tae1PILqnLmRuH59I+NeEm64aq
HVfkLlX71VO3cB+iwlFqf7A+BfZMhe1XkzXiUrUdiYEflMDGuXLU2EuCZ4e6
3WIK1YFbqL+xsrYB711P2pEwtgKUZNC82w0xsiBYc9iPCqJb+XYpe+rQP0xg
eD6RBh4sl90ZAbWYvPOoI8k1gHRtxkzasRpU1MkeOT2zCljOT/XMvauxp+Xc
P3wNBrQyltSN7K9E3/jA9QKJCZypXF59yu8Ohi97Z9K+1xSsspfPnThYgkbl
D3OU3q4Gz88520KTfsR4kdsujetrIJjG11A/kIVRJeHC9bYWEOVS4N2yLBHV
FDYE2rxmQoBzzPeRTtHAjtidzbxsBXwyfbBelg40sWEk29QG1r33b1AuzYXM
mB8y7HpsoehuPeNTVRH4JHlb5wntgBf5tFNQXAbMfXzfolNrYcD3Hpg734Pu
EZWCy772UMAovjl66GdoD3y9WcuIAN+efoy/VwgvFG9NZZsQ8PSJCa4KFcJ4
Ca9C34yAdswfO4dihaD/7h2dYU3gRmWsFStNCMFHxiZtnQjU2LW9kEuEMHN2
/q7XNwTe2iR4BlnXgFmx/srkNAIcyyGGK0UEju59j9UuE9Ddvl4jSl0EnqO5
59NzCDwPuzCbt1IE0dbGE1fyCPDKNvZMrxPBb7+YPS4pJ5BokXGh8lsR+Dwk
SY1NBKrXuE4ad4oghDfB8mghEO9+dZgzJII41Rp5SzsB19APHSf/EkEeZxO3
s4tAW4ngjnSpGN50A+vlKwIjq+XcdJYYZuIU5CEyAmXsrd73t4pB3aDx9uhb
AtEhN1nv/cRgf9Bd7+NHArNF2/U8osXAXqTSHjtBQNKYr3g0QQx7Cpv5U1ME
UoYnPxamiiGMfcHp5OzCX0XOYMdVMfzfL6CaFrXOF4vhPxA7WjU=
      "]]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-20, 20}, {-9018.99892979596, 6620.999125714325}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Print"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
      "]]}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwtlGs01HkYgCfJRnUoTbFkZmgpxQy/ZEn1ShNti1mWarsol3YSabFSo2IT
qU3lWoPWLWaOmFI75i/tvOXWEuk27plJLrFLuTRyKrt7zn54zvPx+faw/MO8
gjRoNJr7v/znEwPuYzMzBA+fUEz5SVTYL1gy2fmR4DzTxoS7pSr00OtRV3wg
WFwnX7z0hgqZDkc+hY0TVOqKOc0iFT44lzJX2U+Qly/gO+WrcK51qwk2EbSt
Z7YZpKswLXLfttgsgmq9QxVPjquwZFZEIc2eYGzhzM8uW1Q4J8jV1nCPLY7T
V13wfK5E/bbakPzLNuj3Pq9l8KASvaqFASsbONiX/D7wyiwlCkbXh1zqZWN2
r9BcxexB2VFhsMTTGncn9nSWuL9EjxQf5uerq/G1fEVtPb8bXXPuebj9ZYm5
fCue3tkuLKo/pojYtRLdRh+SCGkn7o1Poz8WWaBM5+A2i2cdeHLf7LJ5+ua4
RDP37uTndqRZMeQuZ5ajKDSl6a11O3acv5pY8sIUZ4ck6a93b0NjHb54YhML
t7otLS843oqH7CzndBozcAcljt+VocAA+5ei6mojzBaqpzZKX6BltOPM4UID
bNzZVbuh7znmdXvXHHOmY3VpbV2yxnMciKM7uRosQlEPl/nB+hlWpq/gDvou
QO+ihtI7W58i5037BDtHC9d063Rn85/g5spO7U++NNQYUwX+ltGCR8SSqYX6
43Jre4Fzf9Bj9D1glvc0pl1uu2Vf8IOqJqx/1H6OeLdtzLWrUqiNHqGj1f1y
Xub4xmserJLH2xtQI4reFWhIgyizO5yuWw/xi/m8OP8RLehg8UzOD9bhaaXC
JbxgAdygBXimWtTizawE3smxheCbVWDTEl+NYfmBeq996ZDs97dA8sd93Bss
XJYYZwC5PYFHq5cgJn0X5UCyjcAxtihk/0gVai5O7z81bQK8tPTKWD6FrY1n
3sbrssCYqQzWZkjRR+C/VlhtCpozTsOK5HIMmTds2vzDcvi6ZCjLKKoMGSV1
GVpDX4FBx9qwkdFiFMhcvHWzLGCNpPjVN125eKQoRLqWvRICB67ZTfyShvM1
7P2t+ywhdvzllcw/o5Eb+n26ZepqYIpVdsdCT4EBtSyMu9waZOWV6hh1GqSE
n73MaWUDr7WdszkzD7wSPK1ypBx4FcRgqR1EYLkr3qfwhA08DE+azb1bBop+
7fxUH1ugQgbyNfvKodm/z3kRg8BuUdn+T2wpqDSLp9JNCRy8t+nQrQ1SmCji
SwzNCRx9qogMcpeC4fCwMcuKQPLHz4lNwVIIjBhTs9cRkPM8y3KuS2H69Eyp
+3YCZh9Gp9cbVYD5dcMvky4SGNpqk3ZSSwYOrp0t81MJqPfW5tjSZfDtm+zE
SxkE5kTuLO43k8FPVszJzBwCxtfiKj2cZVD1u3lLUQkBj7EnSpMYGXjVkYSa
egK3hOFW8ncyCOJPOrk1/tuXaNlH0CiI1qkYb2wm8KhGCBa6FOR4OO5/9oJA
78gD74urKRhUgNOrXgJ0F/3jfj9SMB2tMR40QMBkR/Fp/SgKFhjViN8MEVgV
uu5CfTwFtn6uS9+9I7ApMyCXnU8Bd5Z2c+QkAd4Ntbj3JgU7Chrip6YI7Ll/
/namnIJg7q/rYj4SOKBg3NvWTMH//4LI4dt1M10U/ANzIXKQ
      "]]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-20, 20}, {-9018.99892979596, 6620.999125714325}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Print"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
      "]]}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwtlH0wFHgch5cTCpc43W6bFjlqp2X5FbPS9HUSzUXOW016FZdzW162HOf9
2raou8t7tra8LOdlKnXZF9X4FuEQUhbJ64okFWsvGS/Xzdwfn3n+fOb552Me
FO4TokmhUDw/7z8mjHlOLy0RbGB/OVuzpMTRuNXq3nmCA2kVuZMLSvQyHPgo
/URQPeLhSJ9XohknYiFcRXB93pno6FklPkrL0B0cJZio8Wlm05QSdW261uET
gps7lFN5w0rMOnXku+QrBPN58gneYyVWaPDEFEeCMZLgAesLSlwW4m5PO2iP
tLBy04f6SjTufswtTLfD7lqqrDpnGH1qhcc2NrHRc6e75rL1wxj3fhv3ktIW
Jf8EFyUXD6HsZ2HYrT02yPGsyD/AHkKvDH+zxbxNWPl0cObH24PoLnrg5fGW
if2JitmGzYNY0hCr4AVuRG/x+G39lAE8xM8yaSu1xqYSLbO3/H5MPPLFTT1j
K/xFHbHzYl4fUliMGtezlijMPtjy5M5LfHEh71xFpwXmp2+gRMl6ce2K0LKZ
b82xv2fHW0XrC/xpC3NZ71oGLiZsF1x72oPHHPtLa2vpeIlXnaTT043MGKel
k2Iq7q8S2NlNdWFBn29drIsJ6vrapT9QK3AsxcTZnWqE75xZZSv0FFidvcHt
dYABSn7VCa/W70T2eM+MrUgbp2hBWXrGz3FHde/yhQAKHlswiDJlPsOIsluz
q4xVNXLnywvprA4M+GF9QUd8T417I8+lweUpNrT0pBHf7u07i9tGRPvb0Yn1
8I53rmq7931j7s2aVtSMNnkZTKOAoJ6ZVDjRgjr63ilB77Th1/OLk4EfmvDM
oMI1qsgAgiY76PsWG7HyisA7cXoVVL7ZVd3JasDwwmDDkQATqL+ecJfq8BgP
hQlNz6VQYfekL6PvcC2mfh/NIVfpcLePuWsk4yFqfZU9mjS3Dhr1EkRHt9Vg
V/PZD/yV5qD723jqQu499I8LchDWWsDzhDaWpViKXL0Ji9b9lpB8fe6Op+ov
ZFTU52i/+Qamta0l836VGCdz9V15xRpG7uUNcdtLMaKEK3Gw3Qj5zeG00fgC
1Nd0DLJ5xQTK6cjkcWomup3wy2ZmbgL0cmWPGnKRKjcNd7O0gfZ7uf0eqwSQ
EXU+nd1lCweOV9c7PRGCj2APSyRhQ/nqtJbhR2JgBvL9xQl2sO7kXY7pXAUo
RpcXZvrbA0elppuP3YbWoFcuRgwC/MQWOfv3KhjS+nM224KA2GhMnXStCmZK
Qm/RrAjUlWjYt92sAtrExFpzFgFKm0P5ibYqCOZNf7TdSiCeUSAsN5TA3Jml
G557CZzC03GWmRKwKqatSf2DQLAmYxv1shQ47r3t+pmffTmc2OOlUtg9fvXc
pRwCxUy/KolMCpEsM3WuiMCgTyrLv0cK96us2ksqCBwoUplmrJGBTz0R1DUQ
8NvRuKgnkkFIqNrZo5nA6e5hp8AbMohZIVU1txLI5i5Elz+QgcjL6eizTgLt
WfbvPfpl8FoBzsNKArtfXR04y5DDXIymKmSMQGislN5pKwcDel3Z+BsC5w06
9lqCHOwPu389NfW5f4tO+6MjcnDTWN56Sk1g5G9zfaNIOewrauLPzhLQOuTs
cTRFDmFuF7fGzxMwmw7gV6bL4f//AhBE4lKBHP4FY8N0lw==
      "]]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-20, 20}, {-9018.99892979596, 6620.999125714325}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Print"]
}, Open  ]]
}, Open  ]],

Cell[BoxData[""], "Input"],

Cell[CellGroupData[{

Cell[BoxData["p1"], "Input"],

Cell[BoxData[
 GraphicsBox[{{}, {}, 
   {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
z4RCjcsNq9Sz8D8cR8SF
     "]]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-10, 10}, {-1208.9998567346995`, 610.9999057142902}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output"]
}, Open  ]]
},
WindowSize->{1350, 633},
ShowCellBracket->False,
Deployed->True,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"8.0 for Microsoft Windows (64-bit) (October 6, 2011)",
StyleDefinitions->Notebook[{
   Cell[
    StyleData[StyleDefinitions -> "Default.nb"]]}, WindowSize -> {707, 505}, 
  WindowMargins -> {{72, Automatic}, {38, Automatic}}, FrontEndVersion -> 
  "8.0 for Microsoft Windows (64-bit) (October 6, 2011)", StyleDefinitions -> 
  "Default.nb"]
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1257, 32, 214, 6, 52, "Input"],
Cell[1474, 40, 140, 5, 30, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[1651, 50, 54, 1, 31, "Input"],
Cell[1708, 53, 28, 0, 30, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[1773, 58, 54, 1, 31, "Input"],
Cell[1830, 61, 29, 0, 30, "Output"]
}, Open  ]],
Cell[1874, 64, 58, 1, 31, "Input"],
Cell[CellGroupData[{
Cell[1957, 69, 54, 1, 31, "Input"],
Cell[2014, 72, 55, 1, 30, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[2106, 78, 336, 9, 52, InheritFromParent],
Cell[2445, 89, 214, 7, 30, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[2696, 101, 310, 10, 52, "Input"],
Cell[3009, 113, 638, 12, 21, "Message"]
}, Open  ]],
Cell[3662, 128, 266, 8, 31, InheritFromParent],
Cell[CellGroupData[{
Cell[3953, 140, 333, 9, 72, InheritFromParent],
Cell[4289, 151, 165, 5, 30, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[4491, 161, 44, 1, 31, "Input"],
Cell[4538, 164, 69, 2, 30, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[4644, 171, 72, 2, 31, "Input"],
Cell[4719, 175, 50, 1, 30, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[4806, 181, 228, 7, 31, "Input"],
Cell[5037, 190, 707, 13, 24, "Message"]
}, Open  ]],
Cell[CellGroupData[{
Cell[5781, 208, 516, 17, 31, InheritFromParent],
Cell[6300, 227, 827, 15, 24, "Message"],
Cell[7130, 244, 517, 17, 30, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[7684, 266, 395, 13, 31, "Input"],
Cell[8082, 281, 469, 10, 21, "Message"]
}, Open  ]],
Cell[CellGroupData[{
Cell[8588, 296, 445, 14, 31, InheritFromParent],
Cell[9036, 312, 499, 10, 21, "Message"]
}, Open  ]],
Cell[9550, 325, 398, 12, 31, InheritFromParent],
Cell[CellGroupData[{
Cell[9973, 341, 608, 17, 72, InheritFromParent],
Cell[10584, 360, 4832, 87, 372, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[15453, 452, 351, 11, 52, "Input"],
Cell[15807, 465, 428, 15, 33, "Output"]
}, Open  ]],
Cell[16250, 483, 26, 0, 31, "Input"],
Cell[16279, 485, 26, 0, 31, InheritFromParent],
Cell[16308, 487, 26, 0, 31, "Input"],
Cell[16337, 489, 26, 0, 31, InheritFromParent],
Cell[16366, 491, 54, 1, 31, "Input"],
Cell[16423, 494, 300, 10, 52, InheritFromParent],
Cell[CellGroupData[{
Cell[16748, 508, 28, 0, 31, "Input"],
Cell[16779, 510, 10049, 170, 237, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[26865, 685, 28, 0, 31, "Input"],
Cell[26896, 687, 10085, 171, 237, "Output"]
}, Open  ]],
Cell[36996, 861, 45, 0, 52, "Input"],
Cell[37044, 863, 26, 0, 31, "Input"],
Cell[37073, 865, 26, 0, 31, "Input"],
Cell[37102, 867, 26, 0, 31, InheritFromParent],
Cell[CellGroupData[{
Cell[37153, 871, 26, 0, 31, "Input"],
Cell[37182, 873, 10666, 151, 79, "Message"]
}, Open  ]],
Cell[CellGroupData[{
Cell[47885, 1029, 26, 0, 31, InheritFromParent],
Cell[47914, 1031, 12184, 174, 79, "Message"]
}, Open  ]],
Cell[60113, 1208, 26, 0, 31, InheritFromParent],
Cell[60142, 1210, 26, 0, 31, InheritFromParent],
Cell[60171, 1212, 26, 0, 31, "Input"],
Cell[60200, 1214, 26, 0, 31, InheritFromParent],
Cell[60229, 1216, 26, 0, 31, "Input"],
Cell[60258, 1218, 26, 0, 31, "Input"],
Cell[60287, 1220, 26, 0, 31, InheritFromParent],
Cell[60316, 1222, 26, 0, 31, "Input"],
Cell[60345, 1224, 26, 0, 31, InheritFromParent],
Cell[CellGroupData[{
Cell[60396, 1228, 26, 0, 31, "Input"],
Cell[CellGroupData[{
Cell[60447, 1232, 76, 2, 23, "Print"],
Cell[60526, 1236, 76, 2, 23, "Print"],
Cell[60605, 1240, 76, 2, 23, "Print"],
Cell[60684, 1244, 76, 2, 23, "Print"],
Cell[60763, 1248, 76, 2, 23, "Print"],
Cell[60842, 1252, 76, 2, 23, "Print"],
Cell[60921, 1256, 76, 2, 23, "Print"],
Cell[61000, 1260, 76, 2, 23, "Print"],
Cell[61079, 1264, 76, 2, 23, "Print"],
Cell[61158, 1268, 95, 2, 43, "Print"]
}, Open  ]]
}, Open  ]],
Cell[61280, 1274, 45, 0, 52, "Input"],
Cell[61328, 1276, 26, 0, 31, InheritFromParent],
Cell[61357, 1278, 26, 0, 31, "Input"],
Cell[61386, 1280, 26, 0, 31, InheritFromParent],
Cell[61415, 1282, 26, 0, 31, InheritFromParent],
Cell[CellGroupData[{
Cell[61466, 1286, 579, 18, 31, "Input"],
Cell[CellGroupData[{
Cell[62070, 1308, 11820, 200, 230, "Print"],
Cell[73893, 1510, 11820, 200, 230, "Print"],
Cell[85716, 1712, 11820, 200, 230, "Print"],
Cell[97539, 1914, 11816, 200, 230, "Print"],
Cell[109358, 2116, 11824, 200, 230, "Print"],
Cell[121185, 2318, 11820, 200, 230, "Print"],
Cell[133008, 2520, 11820, 200, 230, "Print"],
Cell[144831, 2722, 11816, 200, 230, "Print"],
Cell[156650, 2924, 11824, 200, 230, "Print"],
Cell[168477, 3126, 11820, 200, 230, "Print"],
Cell[180300, 3328, 11828, 200, 230, "Print"],
Cell[192131, 3530, 11820, 200, 230, "Print"],
Cell[203954, 3732, 11824, 200, 230, "Print"],
Cell[215781, 3934, 11816, 200, 230, "Print"],
Cell[227600, 4136, 11820, 200, 230, "Print"],
Cell[239423, 4338, 11812, 200, 230, "Print"],
Cell[251238, 4540, 11820, 200, 230, "Print"],
Cell[263061, 4742, 11812, 200, 230, "Print"],
Cell[274876, 4944, 10795, 183, 230, "Print"],
Cell[285674, 5129, 11812, 200, 230, "Print"],
Cell[297489, 5331, 11816, 200, 230, "Print"],
Cell[309308, 5533, 11812, 200, 230, "Print"],
Cell[321123, 5735, 10795, 183, 230, "Print"],
Cell[331921, 5920, 11820, 200, 230, "Print"],
Cell[343744, 6122, 11816, 200, 230, "Print"],
Cell[355563, 6324, 11824, 200, 230, "Print"],
Cell[367390, 6526, 11816, 200, 230, "Print"],
Cell[379209, 6728, 11820, 200, 230, "Print"],
Cell[391032, 6930, 11816, 200, 230, "Print"],
Cell[402851, 7132, 11820, 200, 230, "Print"],
Cell[414674, 7334, 11816, 200, 230, "Print"],
Cell[426493, 7536, 11820, 200, 230, "Print"],
Cell[438316, 7738, 11820, 200, 230, "Print"],
Cell[450139, 7940, 11824, 200, 230, "Print"],
Cell[461966, 8142, 11820, 200, 230, "Print"],
Cell[473789, 8344, 11824, 200, 230, "Print"],
Cell[485616, 8546, 11820, 200, 230, "Print"],
Cell[497439, 8748, 11824, 200, 230, "Print"],
Cell[509266, 8950, 11828, 200, 230, "Print"],
Cell[521097, 9152, 11824, 200, 230, "Print"],
Cell[532924, 9354, 11824, 200, 230, "Print"]
}, Open  ]]
}, Open  ]],
Cell[544775, 9558, 26, 0, 31, "Input"],
Cell[CellGroupData[{
Cell[544826, 9562, 28, 0, 31, "Input"],
Cell[544857, 9564, 10085, 171, 237, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature zx0l3AJrGyB3TC1cJPSwLCdV *)
