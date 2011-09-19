{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 282.0, 1105.0, 396.0, 198.0 ],
		"bglocked" : 0,
		"defrect" : [ 282.0, 1105.0, 396.0, 198.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"numinlets" : 1,
					"patching_rect" : [ 180.0, 30.0, 60.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-16",
					"fontname" : "Arial",
					"outlettype" : [ "bang" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : " _     _           _        ___               \n| |   | |         | |      |_  |              \n| |__ | | ___   __| | ___    | | __ _ ________\n| '_ \\| |/ _ \\ / _` |/ _ \\   | |/ _` |_  /_  /\n| |_) | | (_) | (_| |  __/\\__/ / (_| |/ / / / \n|_.__/|_|\\___/ \\__,_|\\___\\____/ \\__,_/___/___|",
					"linecount" : 6,
					"presentation_linecount" : 6,
					"numinlets" : 1,
					"patching_rect" : [ 255.0, 15.0, 343.0, 78.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"id" : "obj-34",
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"presentation_rect" : [ 30.0, 0.0, 342.0, 78.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Organ",
					"numinlets" : 1,
					"patching_rect" : [ 360.0, 330.0, 73.0, 29.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"id" : "obj-33",
					"fontname" : "Arial",
					"fontsize" : 20.0,
					"presentation_rect" : [ 300.0, 150.0, 65.0, 29.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Keys",
					"numinlets" : 1,
					"patching_rect" : [ 210.0, 330.0, 65.0, 29.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"id" : "obj-32",
					"fontname" : "Arial",
					"fontsize" : 20.0,
					"presentation_rect" : [ 165.0, 150.0, 58.0, 29.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Bass\n",
					"numinlets" : 1,
					"patching_rect" : [ 60.0, 330.0, 65.0, 29.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"id" : "obj-26",
					"fontname" : "Arial",
					"fontsize" : 20.0,
					"presentation_rect" : [ 30.0, 150.0, 65.0, 29.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"patching_rect" : [ 360.0, 270.0, 50.0, 50.0 ],
					"numoutlets" : 1,
					"presentation" : 1,
					"id" : "obj-20",
					"outlettype" : [ "bang" ],
					"presentation_rect" : [ 300.0, 90.0, 50.0, 50.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"patching_rect" : [ 210.0, 270.0, 50.0, 50.0 ],
					"numoutlets" : 1,
					"presentation" : 1,
					"id" : "obj-19",
					"outlettype" : [ "bang" ],
					"presentation_rect" : [ 165.0, 90.0, 50.0, 50.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"patching_rect" : [ 60.0, 270.0, 50.0, 50.0 ],
					"numoutlets" : 1,
					"presentation" : 1,
					"id" : "obj-18",
					"outlettype" : [ "bang" ],
					"presentation_rect" : [ 30.0, 90.0, 50.0, 50.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "127",
					"numinlets" : 2,
					"patching_rect" : [ 375.0, 195.0, 32.5, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-15",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "noteout",
					"numinlets" : 3,
					"patching_rect" : [ 60.0, 225.0, 51.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-3",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "3",
					"numinlets" : 2,
					"patching_rect" : [ 120.0, 180.0, 32.5, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-9",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "makenote 127 5000",
					"numinlets" : 3,
					"patching_rect" : [ 60.0, 150.0, 117.0, 20.0 ],
					"numoutlets" : 2,
					"id" : "obj-11",
					"fontname" : "Arial",
					"outlettype" : [ "float", "float" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route /blode/bass",
					"numinlets" : 1,
					"patching_rect" : [ 60.0, 120.0, 103.0, 20.0 ],
					"numoutlets" : 2,
					"id" : "obj-14",
					"fontname" : "Arial",
					"outlettype" : [ "", "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "2",
					"numinlets" : 2,
					"patching_rect" : [ 570.0, 195.0, 32.5, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-30",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0",
					"numinlets" : 2,
					"patching_rect" : [ 525.0, 195.0, 32.5, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-29",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "noteout",
					"numinlets" : 3,
					"patching_rect" : [ 510.0, 240.0, 51.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-28",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack 0 0 0 0",
					"numinlets" : 1,
					"patching_rect" : [ 510.0, 150.0, 89.0, 20.0 ],
					"numoutlets" : 4,
					"id" : "obj-27",
					"fontname" : "Arial",
					"outlettype" : [ "int", "int", "int", "int" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route /blode/chord/off",
					"numinlets" : 1,
					"patching_rect" : [ 510.0, 120.0, 124.0, 20.0 ],
					"numoutlets" : 2,
					"id" : "obj-13",
					"fontname" : "Arial",
					"outlettype" : [ "", "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "2",
					"numinlets" : 2,
					"patching_rect" : [ 420.0, 195.0, 32.5, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-12",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "noteout",
					"numinlets" : 3,
					"patching_rect" : [ 360.0, 240.0, 51.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-10",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "noteout",
					"numinlets" : 3,
					"patching_rect" : [ 210.0, 225.0, 51.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-8",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack 0 0 0 0",
					"numinlets" : 1,
					"patching_rect" : [ 360.0, 150.0, 89.0, 20.0 ],
					"numoutlets" : 4,
					"id" : "obj-7",
					"fontname" : "Arial",
					"outlettype" : [ "int", "int", "int", "int" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route /blode/chord/on",
					"numinlets" : 1,
					"patching_rect" : [ 360.0, 120.0, 124.0, 20.0 ],
					"numoutlets" : 2,
					"id" : "obj-6",
					"fontname" : "Arial",
					"outlettype" : [ "", "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1",
					"numinlets" : 2,
					"patching_rect" : [ 270.0, 180.0, 32.5, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-4",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "makenote 127 2000",
					"numinlets" : 3,
					"patching_rect" : [ 210.0, 150.0, 117.0, 20.0 ],
					"numoutlets" : 2,
					"id" : "obj-2",
					"fontname" : "Arial",
					"outlettype" : [ "float", "float" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route /blode/melody",
					"numinlets" : 1,
					"patching_rect" : [ 210.0, 120.0, 116.0, 20.0 ],
					"numoutlets" : 2,
					"id" : "obj-5",
					"fontname" : "Arial",
					"outlettype" : [ "", "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "udpreceive 3333",
					"numinlets" : 1,
					"patching_rect" : [ 60.0, 30.0, 99.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-1",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-3", 1 ],
					"hidden" : 0,
					"midpoints" : [ 167.5, 210.0, 85.5, 210.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [ 69.5, 171.0, 69.5, 171.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 189.5, 105.0, 495.0, 105.0, 495.0, 180.0, 579.5, 180.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [ 189.5, 105.0, 495.0, 105.0, 495.0, 180.0, 534.5, 180.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 189.5, 105.0, 345.0, 105.0, 345.0, 180.0, 429.5, 180.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 189.5, 105.0, 345.0, 105.0, 345.0, 180.0, 384.5, 180.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 189.5, 180.0, 267.0, 180.0, 267.0, 177.0, 279.5, 177.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 189.5, 180.0, 153.0, 180.0, 153.0, 177.0, 129.5, 177.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-28", 2 ],
					"hidden" : 0,
					"midpoints" : [ 579.5, 225.0, 551.5, 225.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 3 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 589.5, 180.0, 510.0, 180.0, 510.0, 225.0, 519.5, 225.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 2 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 566.166687, 180.0, 510.0, 180.0, 510.0, 225.0, 519.5, 225.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 1 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 542.833313, 180.0, 510.0, 180.0, 510.0, 225.0, 519.5, 225.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 519.5, 180.0, 510.0, 180.0, 510.0, 225.0, 519.5, 225.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-28", 1 ],
					"hidden" : 0,
					"midpoints" : [ 534.5, 213.0, 535.5, 213.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 3 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 439.5, 180.0, 369.5, 180.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 2 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 416.166656, 180.0, 369.5, 180.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 392.833344, 180.0, 369.5, 180.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 369.5, 171.0, 369.5, 171.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-8", 2 ],
					"hidden" : 0,
					"midpoints" : [ 279.5, 210.0, 251.5, 210.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-8", 1 ],
					"hidden" : 0,
					"midpoints" : [ 317.5, 207.0, 235.5, 207.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 219.5, 195.0, 219.5, 195.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-10", 2 ],
					"hidden" : 0,
					"midpoints" : [ 429.5, 225.0, 401.5, 225.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 69.5, 105.0, 519.5, 105.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [ 69.5, 105.0, 369.5, 105.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [ 69.5, 105.0, 219.5, 105.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-3", 2 ],
					"hidden" : 0,
					"midpoints" : [ 129.5, 210.0, 101.5, 210.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-10", 1 ],
					"hidden" : 0,
					"midpoints" : [ 384.5, 213.0, 385.5, 213.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 69.5, 141.0, 45.0, 141.0, 45.0, 255.0, 69.5, 255.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 219.5, 141.0, 195.0, 141.0, 195.0, 255.0, 219.5, 255.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 369.5, 141.0, 345.0, 141.0, 345.0, 267.0, 369.5, 267.0 ]
				}

			}
 ]
	}

}
