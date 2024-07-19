{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 6,
			"revision" : 4,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 87.0, 1298.0, 999.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "number",
					"minimum" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 598.0, 212.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 119.0, 48.0, 50.0, 22.0 ],
					"varname" : "number[6]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 598.0, 192.0, 41.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 171.0, 49.0, 41.0, 20.0 ],
					"text" : "axiom",
					"textcolor" : [ 0.878056049346924, 0.878056049346924, 0.878056049346924, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "number",
					"minimum" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 737.0, 212.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 119.0, 96.0, 50.0, 22.0 ],
					"varname" : "number[5]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 746.0, 187.0, 29.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 171.0, 97.0, 29.0, 20.0 ],
					"text" : "end",
					"textcolor" : [ 0.878056049346924, 0.878056049346924, 0.878056049346924, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "number",
					"minimum" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 658.0, 212.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 119.0, 72.0, 50.0, 22.0 ],
					"varname" : "number[3]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 667.0, 187.0, 32.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 171.0, 73.0, 32.0, 20.0 ],
					"text" : "start",
					"textcolor" : [ 0.878056049346924, 0.878056049346924, 0.878056049346924, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 801.0, 448.0, 57.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 801.0, 412.0, 54.0, 22.0 ],
					"text" : "delay 10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 839.0, 496.0, 39.0, 22.0 ],
					"text" : "dump"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 928.0, 428.0, 35.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 827.0, 139.0, 141.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 119.0, 0.0, 81.0, 20.0 ],
					"text" : "Get Envelope",
					"textcolor" : [ 0.878056049346924, 0.878056049346924, 0.878056049346924, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.987599611282349, 0.0, 0.398831248283386, 1.0 ],
					"id" : "obj-19",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.988235294117647, 0.588235294117647, 1.0 ],
					"parameter_enable" : 0,
					"patching_rect" : [ 801.0, 144.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 119.0, 22.0, 24.0, 24.0 ],
					"varname" : "button[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "bang", "bang", "bang", "bang", "bang" ],
					"patching_rect" : [ 801.0, 353.0, 146.0, 22.0 ],
					"text" : "t b b b b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 808.0, 597.0, 29.5, 22.0 ],
					"text" : "int"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 867.0, 597.0, 29.5, 22.0 ],
					"text" : "int"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 926.0, 597.0, 29.5, 22.0 ],
					"text" : "int"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 808.0, 644.0, 137.0, 22.0 ],
					"text" : "pack i i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 808.0, 708.0, 56.0, 22.0 ],
					"text" : "append )"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 808.0, 678.0, 193.0, 22.0 ],
					"text" : "prepend (read-linden-global-matrix"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 808.0, 747.0, 69.0, 22.0 ],
					"text" : "osc-sc-eval"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.149019607843137, 0.149019607843137, 0.149019607843137, 0.0 ],
					"floatoutput" : 1,
					"id" : "obj-6",
					"ignoreclick" : 1,
					"knobcolor" : [ 0.878148674964905, 0.0, 0.980589270591736, 1.0 ],
					"knobshape" : 5,
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 12.0, 678.0, 201.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 119.0, 201.190479308366776, 105.952382594347 ],
					"size" : 1.0,
					"thickness" : 15.0,
					"varname" : "slider"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 12.0, 635.0, 81.0, 22.0 ],
					"text" : "snapshot~ 33"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 44.0, 23.0, 37.0, 34.0 ],
					"text" : "sig in\n"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 488.0, 25.0, 135.0, 22.0 ],
					"restore" : 					{
						"button" : [ 0.0 ],
						"button[1]" : [ 0.0 ],
						"function" : [ 100169.0, 0.0, 10.0, 0.0, 8.75, 0, 0.5, 3482.0, 7.187, 0, 0.25, 7168.0, 7.187, 0, 0.25, 10854.0, 9.686999999999999, 0, 0.75, 11801.0, 5.0, 0, 0.0, 15385.0, 7.187, 0, 0.25, 19071.0, 5.0, 0, 0.0, 19711.0, 9.686999999999999, 0, 0.75, 20658.0, 8.75, 0, 0.5, 24140.0, 8.75, 0, 0.5, 27622.0, 8.75, 0, 0.5, 31104.0, 7.187, 0, 0.25, 34790.0, 8.75, 0, 0.5, 38272.0, 7.187, 0, 0.25, 41958.0, 7.187, 0, 0.25, 45644.0, 9.686999999999999, 0, 0.75, 46591.0, 5.0, 0, 0.0, 50175.0, 7.187, 0, 0.25, 53861.0, 5.0, 0, 0.0, 54501.0, 9.686999999999999, 0, 0.75, 55448.0, 8.75, 0, 0.5, 58930.0, 7.187, 0, 0.25, 62616.0, 7.187, 0, 0.25, 66302.0, 9.686999999999999, 0, 0.75, 67249.0, 5.0, 0, 0.0, 70833.0, 7.187, 0, 0.25, 74519.0, 5.0, 0, 0.0, 75159.0, 9.686999999999999, 0, 0.75, 76106.0, 7.187, 0, 0.25, 79792.0, 9.686999999999999, 0, 0.75, 80739.0, 5.0, 0, 0.0, 84323.0, 7.187, 0, 0.25, 88009.0, 5.0, 0, 0.0, 88649.0, 9.686999999999999, 0, 0.75, 89596.0, 9.686999999999999, 0, 0.75, 90543.0, 2.812, 0, -0.25, 90927.0, 5.0, 0, 0.0, 94511.0, 5.0, 0, 0.0, 95151.0, 7.187, 0, 0.25, 95689.0, 5.0, 0, 0.0, 99273.0, 2.5, 0, 0.0, 99529.0, 5.0, 0, 0.0, 100169.0, 7.187, 0, 0.25, "curve" ],
						"number[1]" : [ 0.0 ],
						"number[2]" : [ 10.0 ],
						"number[3]" : [ 12 ],
						"number[4]" : [ 484 ],
						"number[5]" : [ 54 ],
						"number[6]" : [ 97 ],
						"slider" : [ 0.0 ]
					}
,
					"text" : "autopattr @autoname 1",
					"varname" : "u762002090"
				}

			}
, 			{
				"box" : 				{
					"comment" : "signal to env",
					"id" : "obj-1",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 12.0, 25.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 205.0, 23.5, 69.0, 33.0 ],
					"text" : "update bang"
				}

			}
, 			{
				"box" : 				{
					"comment" : "update bang",
					"id" : "obj-9",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 169.0, 25.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "sig out",
					"id" : "obj-2",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 89.0, 1139.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 89.0, 1083.0, 100.0, 22.0 ],
					"text" : "shape~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-143",
					"maxclass" : "number",
					"minimum" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 484.0, 212.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 96.0, 50.0, 22.0 ],
					"varname" : "number[4]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-142",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 479.0, 187.0, 75.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 52.0, 97.0, 61.0, 20.0 ],
					"text" : "num-segs",
					"textcolor" : [ 0.878056049346924, 0.878056049346924, 0.878056049346924, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-115",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 418.5, 212.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 48.0, 50.0, 22.0 ],
					"varname" : "number[2]"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-116",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 358.5, 212.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 72.0, 50.0, 22.0 ],
					"varname" : "number[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-117",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 195.0, 135.0, 141.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 91.0, 20.0 ],
					"text" : "Generate Data ",
					"textcolor" : [ 0.878056049346924, 0.878056049346924, 0.878056049346924, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.987599611282349, 0.0, 0.398831248283386, 1.0 ],
					"id" : "obj-118",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.988235294117647, 0.588235294117647, 1.0 ],
					"parameter_enable" : 0,
					"patching_rect" : [ 169.0, 140.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 22.0, 24.0, 24.0 ],
					"varname" : "button"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-122",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 426.5, 192.0, 31.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 51.0, 49.0, 31.0, 20.0 ],
					"text" : "max",
					"textcolor" : [ 0.878056049346924, 0.878056049346924, 0.878056049346924, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-123",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 368.5, 192.0, 28.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 52.0, 73.0, 28.0, 20.0 ],
					"text" : "min",
					"textcolor" : [ 0.878056049346924, 0.878056049346924, 0.878056049346924, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"addpoints_with_curve" : [ 0.0, 8.75, 0, 0.5, 3482.0, 7.187, 0, 0.25, 7168.0, 7.187, 0, 0.25, 10854.0, 9.686999999999999, 0, 0.75, 11801.0, 5.0, 0, 0.0, 15385.0, 7.187, 0, 0.25, 19071.0, 5.0, 0, 0.0, 19711.0, 9.686999999999999, 0, 0.75, 20658.0, 8.75, 0, 0.5, 24140.0, 8.75, 0, 0.5, 27622.0, 8.75, 0, 0.5, 31104.0, 7.187, 0, 0.25, 34790.0, 8.75, 0, 0.5, 38272.0, 7.187, 0, 0.25, 41958.0, 7.187, 0, 0.25, 45644.0, 9.686999999999999, 0, 0.75, 46591.0, 5.0, 0, 0.0, 50175.0, 7.187, 0, 0.25, 53861.0, 5.0, 0, 0.0, 54501.0, 9.686999999999999, 0, 0.75, 55448.0, 8.75, 0, 0.5, 58930.0, 7.187, 0, 0.25, 62616.0, 7.187, 0, 0.25, 66302.0, 9.686999999999999, 0, 0.75, 67249.0, 5.0, 0, 0.0, 70833.0, 7.187, 0, 0.25, 74519.0, 5.0, 0, 0.0, 75159.0, 9.686999999999999, 0, 0.75, 76106.0, 7.187, 0, 0.25, 79792.0, 9.686999999999999, 0, 0.75, 80739.0, 5.0, 0, 0.0, 84323.0, 7.187, 0, 0.25, 88009.0, 5.0, 0, 0.0, 88649.0, 9.686999999999999, 0, 0.75, 89596.0, 9.686999999999999, 0, 0.75, 90543.0, 2.812, 0, -0.25, 90927.0, 5.0, 0, 0.0, 94511.0, 5.0, 0, 0.0, 95151.0, 7.187, 0, 0.25, 95689.0, 5.0, 0, 0.0, 99273.0, 2.5, 0, 0.0, 99529.0, 5.0, 0, 0.0, 100169.0, 7.187, 0, 0.25 ],
					"classic_curve" : 1,
					"domain" : 100169.0,
					"id" : "obj-140",
					"ignoreclick" : 1,
					"linecolor" : [ 0.0, 0.988235294117647, 0.588235294117647, 1.0 ],
					"maxclass" : "function",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "float", "", "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 24.666666666666657, 800.0, 200.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1.0, 122.0, 200.0, 100.0 ],
					"range" : [ 0.0, 10.0 ],
					"varname" : "function"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-101",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 150.0, 1013.0, 65.0, 22.0 ],
					"text" : "domain $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-102",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "int", "int" ],
					"patching_rect" : [ 150.0, 973.0, 65.0, 22.0 ],
					"text" : "unpack i i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-106",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 355.5, 623.0, 31.0, 22.0 ],
					"text" : "float"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-107",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 414.5, 623.0, 31.0, 22.0 ],
					"text" : "float"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-109",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 473.5, 623.0, 29.5, 22.0 ],
					"text" : "int"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-112",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "bang" ],
					"patching_rect" : [ 169.0, 349.0, 106.0, 22.0 ],
					"text" : "t b b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-113",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 726.5, 623.0, 31.0, 22.0 ],
					"text" : "float"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-114",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 658.5, 623.0, 31.0, 22.0 ],
					"text" : "float"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-120",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 658.5, 704.0, 87.0, 22.0 ],
					"text" : "prepend range"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-121",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 658.5, 670.0, 87.0, 22.0 ],
					"text" : "pack f f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-133",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 355.5, 670.0, 53.0, 22.0 ],
					"text" : "pack f f i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-134",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 355.5, 734.0, 56.0, 22.0 ],
					"text" : "append )"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-135",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 355.5, 704.0, 185.0, 22.0 ],
					"text" : "prepend (set-linden-global-matrix"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-137",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 808.0, 839.0, 74.0, 22.0 ],
					"text" : "prepend xyc"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-138",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 808.0, 795.0, 47.0, 22.0 ],
					"text" : "zl.iter 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-139",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 355.5, 773.0, 69.0, 22.0 ],
					"text" : "osc-sc-eval"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"order" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"order" : 1,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 1 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-140", 0 ],
					"source" : [ "obj-101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 0 ],
					"source" : [ "obj-102", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-133", 0 ],
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-133", 1 ],
					"source" : [ "obj-107", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-133", 2 ],
					"source" : [ "obj-109", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-106", 0 ],
					"order" : 2,
					"source" : [ "obj-112", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 0 ],
					"order" : 1,
					"source" : [ "obj-112", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-109", 0 ],
					"order" : 0,
					"source" : [ "obj-112", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-113", 0 ],
					"source" : [ "obj-112", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-114", 0 ],
					"source" : [ "obj-112", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-121", 1 ],
					"source" : [ "obj-113", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-121", 0 ],
					"source" : [ "obj-114", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 1 ],
					"order" : 1,
					"source" : [ "obj-115", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-113", 1 ],
					"order" : 0,
					"source" : [ "obj-115", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-106", 1 ],
					"order" : 1,
					"source" : [ "obj-116", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-114", 1 ],
					"order" : 0,
					"source" : [ "obj-116", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-112", 0 ],
					"source" : [ "obj-118", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 2 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-140", 0 ],
					"source" : [ "obj-120", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 0 ],
					"source" : [ "obj-121", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-135", 0 ],
					"source" : [ "obj-133", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-139", 0 ],
					"source" : [ "obj-134", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-134", 0 ],
					"source" : [ "obj-135", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-140", 0 ],
					"source" : [ "obj-137", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-137", 0 ],
					"source" : [ "obj-138", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-102", 0 ],
					"source" : [ "obj-140", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-140", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-109", 1 ],
					"source" : [ "obj-143", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-138", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-20", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-20", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-20", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-20", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-140", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-140", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-26", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-140", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 1 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 1 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-118", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "osc-sc-eval.maxpat",
				"bootpath" : "~/Documents/Max 8/Library/Abstractions",
				"patcherrelativepath" : "../../Library/Abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
