//
//  MapboxMapViewController.swift
//  TorchUI
//
//  Created by Parth Saxena on 9/20/23.
//

import Foundation
import MapboxMaps
import SwiftUI

class MapboxViewController: UIViewController {
    //    @ObservedObject var sessionManager = SessionManager.shared
    let jsonString =
    """
    {
        "version": 8,
        "name": "Torch App Map",
        "metadata": {
            "mapbox:type": "default",
            "mapbox:origin": "monochrome-dark-v1",
            "mapbox:sdk-support": {
                "js": "3.0.0",
                "android": "11.0.0",
                "ios": "11.0.0"
            },
            "mapbox:autocomposite": true,
            "mapbox:variation": "monochrome-light-v1",
            "mapbox:groups": {
                "Transit, transit-labels": {
                    "name": "Transit, transit-labels",
                    "collapsed": true
                },
                "Administrative boundaries, admin": {
                    "name": "Administrative boundaries, admin",
                    "collapsed": true
                },
                "Land & water, built": {
                    "name": "Land & water, built",
                    "collapsed": true
                },
                "Transit, bridges": {"name": "Transit, bridges", "collapsed": true},
                "Buildings, building-labels": {
                    "name": "Buildings, building-labels",
                    "collapsed": true
                },
                "Transit, surface": {"name": "Transit, surface", "collapsed": true},
                "Land & water, land": {
                    "name": "Land & water, land",
                    "collapsed": true
                },
                "Road network, bridges": {
                    "name": "Road network, bridges",
                    "collapsed": true
                },
                "Road network, tunnels": {
                    "name": "Road network, tunnels",
                    "collapsed": true
                },
                "Road network, road-labels": {
                    "name": "Road network, road-labels",
                    "collapsed": true
                },
                "Buildings, built": {"name": "Buildings, built", "collapsed": true},
                "Natural features, natural-labels": {
                    "name": "Natural features, natural-labels",
                    "collapsed": true
                },
                "Road network, surface": {
                    "name": "Road network, surface",
                    "collapsed": true
                },
                "Walking, cycling, etc., barriers-bridges": {
                    "name": "Walking, cycling, etc., barriers-bridges",
                    "collapsed": true
                },
                "Place labels, place-labels": {
                    "name": "Place labels, place-labels",
                    "collapsed": true
                },
                "Point of interest labels, poi-labels": {
                    "name": "Point of interest labels, poi-labels",
                    "collapsed": true
                },
                "Walking, cycling, etc., tunnels": {
                    "name": "Walking, cycling, etc., tunnels",
                    "collapsed": true
                },
                "Walking, cycling, etc., surface": {
                    "name": "Walking, cycling, etc., surface",
                    "collapsed": true
                },
                "Transit, built": {"name": "Transit, built", "collapsed": true},
                "Land & water, water": {
                    "name": "Land & water, water",
                    "collapsed": true
                }
            },
            "mapbox:uiParadigm": "layers",
            "mapbox:decompiler": {
                "id": "cllujjy2n00ak01r7abqo8tcb",
                "componentVersion": "18.0.0",
                "strata": [
                    {
                        "id": "monochrome-dark-v1",
                        "order": [
                            ["land-and-water", "land"],
                            ["land-and-water", "water"],
                            ["land-and-water", "built"],
                            ["transit", "built"],
                            ["buildings", "built"],
                            ["walking-cycling", "tunnels"],
                            ["road-network", "tunnels"],
                            ["walking-cycling", "surface"],
                            ["road-network", "surface"],
                            ["transit", "surface"],
                            ["walking-cycling", "barriers-bridges"],
                            ["road-network", "bridges"],
                            ["transit", "bridges"],
                            ["buildings", "extruded"],
                            ["admin-boundaries", "admin"],
                            ["land-and-water", "terrain-labels"],
                            ["buildings", "building-labels"],
                            ["road-network", "road-labels"],
                            ["walking-cycling", "walking-cycling-labels"],
                            ["transit", "ferry-aerialway-labels"],
                            ["natural-features", "natural-labels"],
                            ["point-of-interest-labels", "poi-labels"],
                            ["transit", "transit-labels"],
                            ["place-labels", "place-labels"]
                        ]
                    }
                ],
                "overrides": {
                    "buildings": {
                        "building": {
                            "paint": {
                                "fill-color": [
                                    "interpolate",
                                    ["linear"],
                                    ["zoom"],
                                    0,
                                    "hsl(220, 0%, 91%)",
                                    22,
                                    "hsl(220, 0%, 91%)"
                                ]
                            }
                        }
                    }
                },
                "components": {
                    "road-network": "18.0.0",
                    "natural-features": "18.0.0",
                    "place-labels": "18.0.0",
                    "admin-boundaries": "18.0.0",
                    "point-of-interest-labels": "18.0.0",
                    "walking-cycling": "18.0.0",
                    "transit": "18.0.0",
                    "land-and-water": "18.0.0",
                    "buildings": "18.0.0"
                },
                "propConfig": {
                    "road-network": {
                        "colorBase": "hsl(220, 3%, 99%)",
                        "roadNetwork": "Simple",
                        "roadWidth": 0.6,
                        "roadsFont": [
                            "Manrope Regular",
                            "Arial Unicode MS Regular"
                        ],
                        "shieldsFont": ["Manrope Bold", "Arial Unicode MS Bold"],
                        "fadeOutRoadsOnZoom": false,
                        "labelDensity": 5
                    },
                    "natural-features": {
                        "colorBase": "hsl(220, 3%, 99%)",
                        "labelStyle": "Text and icon",
                        "density": 1,
                        "poiEtcFont": [
                            "Manrope Medium",
                            "Arial Unicode MS Regular"
                        ],
                        "waterLabelsFont": [
                            "Manrope Light",
                            "Arial Unicode MS Regular"
                        ],
                        "poiIconBackground": "None"
                    },
                    "place-labels": {
                        "countriesFont": [
                            "Manrope Medium",
                            "Arial Unicode MS Regular"
                        ],
                        "settlementLabelStyle": "Text only",
                        "continentsFont": [
                            "Manrope Medium",
                            "Arial Unicode MS Regular"
                        ],
                        "statesFont": ["Manrope Bold", "Arial Unicode MS Bold"],
                        "colorBase": "hsl(220, 3%, 99%)",
                        "settlementSubdivisionsDensity": 3,
                        "settlementsMinorFont": [
                            "Manrope Regular",
                            "Arial Unicode MS Regular"
                        ],
                        "settlementsMajorFont": [
                            "Manrope Medium",
                            "Arial Unicode MS Regular"
                        ],
                        "settlementsDensity": 2,
                        "settlementSubdivisionsFont": [
                            "Manrope Regular",
                            "Arial Unicode MS Regular"
                        ]
                    },
                    "admin-boundaries": {
                        "colorBase": "hsl(220, 3%, 99%)",
                        "admin0Width": 1.3
                    },
                    "point-of-interest-labels": {
                        "colorBase": "hsl(220, 3%, 99%)",
                        "labelStyle": "Text only",
                        "density": 1,
                        "poiEtcFont": [
                            "Manrope Medium",
                            "Arial Unicode MS Regular"
                        ],
                        "controlDensityByClass": false
                    },
                    "walking-cycling": {
                        "walkingPathDashPattern": "Solid",
                        "roadsFont": [
                            "Manrope Regular",
                            "Arial Unicode MS Regular"
                        ],
                        "controlDashStyle": true,
                        "golfHoleLabelLine": false,
                        "colorGreenspace": "hsl(138, 91%, 81%)",
                        "walkingCyclingPisteBackground": false,
                        "colorBase": "hsl(220, 3%, 99%)",
                        "gatesFencesHedges": false,
                        "trailDashPattern": "Solid",
                        "poiEtcFont": [
                            "Manrope Medium",
                            "Arial Unicode MS Regular"
                        ],
                        "pedestrianPolygonFeatures": false,
                        "cyclewayPisteDashPattern": "Solid",
                        "labels": false
                    },
                    "transit": {
                        "colorBase": "hsl(220, 3%, 99%)",
                        "labelStyle": "Text only",
                        "iconColorScheme": "Monochrome",
                        "aerialways": false,
                        "ferries": false,
                        "transitLabels": false,
                        "poiEtcFont": [
                            "Manrope Medium",
                            "Arial Unicode MS Regular"
                        ],
                        "roadsFont": ["Manrope Regular", "Arial Unicode MS Regular"]
                    },
                    "land-and-water": {
                        "landType": "Landuse only",
                        "colorGreenspace": "hsl(138, 91%, 81%)",
                        "hillshade": true,
                        "landuseDensity": 8,
                        "colorBase": "hsl(220, 3%, 99%)",
                        "contours": false,
                        "poiEtcFont": [
                            "Manrope Medium",
                            "Arial Unicode MS Regular"
                        ],
                        "waterStyle": "Simple",
                        "bathymetry": false,
                        "contourUnit": "Meters"
                    },
                    "buildings": {
                        "colorBase": "hsl(220, 3%, 99%)",
                        "houseNumbers": true,
                        "houseNumbersFont": [
                            "Manrope Light",
                            "Arial Unicode MS Regular"
                        ],
                        "underground": false,
                        "buildingStyle": "2D"
                    }
                }
            }
        },
        "center": [-122.08314716933575, 37.86414750404458],
        "zoom": 13.905299165085252,
        "bearing": 0,
        "pitch": 0,
        "fog": {
            "range": [-1, 10],
            "color": "hsl(0, 0%, 100%)",
            "high-color": "hsl(0, 0%, 100%)",
            "space-color": "hsl(0, 0%, 100%)",
            "horizon-blend": 0.1,
            "star-intensity": 0
        },
        "sources": {
            "composite": {
                "url": "mapbox://mapbox.mapbox-streets-v8,mapbox.mapbox-terrain-v2",
                "type": "vector"
            }
        },
        "sprite": "mapbox://sprites/vtremsin/cllujjy2n00ak01r7abqo8tcb/2jjykge359i8f1h31pt0wky9i",
        "glyphs": "mapbox://fonts/mapbox/{fontstack}/{range}.pbf",
        "projection": {"name": "globe"},
        "layers": [
            {
                "id": "land",
                "type": "background",
                "metadata": {
                    "mapbox:featureComponent": "land-and-water",
                    "mapbox:group": "Land & water, land"
                },
                "layout": {},
                "paint": {
                    "background-color": [
                        "interpolate",
                        ["linear"],
                        ["zoom"],
                        9,
                        "hsl(220, 3%, 99%)",
                        11,
                        "hsl(220, 1%, 97%)"
                    ]
                }
            },
            {
                "id": "national-park",
                "type": "fill",
                "metadata": {
                    "mapbox:featureComponent": "land-and-water",
                    "mapbox:group": "Land & water, land"
                },
                "source": "composite",
                "source-layer": "landuse_overlay",
                "minzoom": 5,
                "filter": ["==", ["get", "class"], "national_park"],
                "layout": {},
                "paint": {
                    "fill-color": "hsl(138, 49%, 79%)",
                    "fill-opacity": [
                        "interpolate",
                        ["linear"],
                        ["zoom"],
                        5,
                        0,
                        6,
                        0.6,
                        12,
                        0.2
                    ]
                }
            },
            {
                "id": "landuse",
                "type": "fill",
                "metadata": {
                    "mapbox:featureComponent": "land-and-water",
                    "mapbox:group": "Land & water, land"
                },
                "source": "composite",
                "source-layer": "landuse",
                "minzoom": 5,
                "filter": [
                    "all",
                    [">=", ["to-number", ["get", "sizerank"]], 0],
                    [
                        "match",
                        ["get", "class"],
                        [
                            "agriculture",
                            "wood",
                            "grass",
                            "scrub",
                            "glacier",
                            "pitch",
                            "sand"
                        ],
                        ["step", ["zoom"], false, 11, true],
                        "residential",
                        ["step", ["zoom"], true, 10, false],
                        ["park", "airport"],
                        [
                            "step",
                            ["zoom"],
                            false,
                            8,
                            ["case", ["==", ["get", "sizerank"], 1], true, false],
                            10,
                            true
                        ],
                        "cemetery",
                        ["step", ["zoom"], false, 11, true],
                        false
                    ],
                    [
                        "<=",
                        [
                            "-",
                            ["to-number", ["get", "sizerank"]],
                            [
                                "interpolate",
                                ["exponential", 1.5],
                                ["zoom"],
                                12,
                                0,
                                18,
                                14
                            ]
                        ],
                        8
                    ]
                ],
                "layout": {},
                "paint": {
                    "fill-color": [
                        "match",
                        ["get", "class"],
                        "wood",
                        "hsla(143, 86%, 80%, 0.8)",
                        "scrub",
                        "hsla(138, 83%, 88%, 0.6)",
                        "agriculture",
                        "hsla(138, 86%, 94%, 0.6)",
                        "park",
                        "hsl(138, 91%, 81%)",
                        "grass",
                        "hsla(138, 86%, 94%, 0.6)",
                        "cemetery",
                        "hsl(138, 65%, 86%)",
                        "pitch",
                        "hsl(128, 100%, 86%)",
                        "sand",
                        "hsl(140, 96%, 92%)",
                        "hsl(220, 0%, 93%)"
                    ],
                    "fill-opacity": [
                        "interpolate",
                        ["linear"],
                        ["zoom"],
                        8,
                        ["match", ["get", "class"], "residential", 0.8, 0.2],
                        10,
                        ["match", ["get", "class"], "residential", 0, 1]
                    ],
                    "fill-antialias": false
                }
            },
            {
                "id": "hillshade",
                "type": "fill",
                "metadata": {
                    "mapbox:featureComponent": "land-and-water",
                    "mapbox:group": "Land & water, land"
                },
                "source": "composite",
                "source-layer": "hillshade",
                "maxzoom": 16,
                "filter": [
                    "all",
                    [
                        "step",
                        ["zoom"],
                        ["==", ["get", "class"], "shadow"],
                        11,
                        true
                    ],
                    [
                        "match",
                        ["get", "level"],
                        89,
                        true,
                        78,
                        ["step", ["zoom"], false, 5, true],
                        67,
                        ["step", ["zoom"], false, 9, true],
                        56,
                        ["step", ["zoom"], false, 6, true],
                        94,
                        ["step", ["zoom"], false, 11, true],
                        90,
                        ["step", ["zoom"], false, 12, true],
                        false
                    ]
                ],
                "layout": {},
                "paint": {
                    "fill-color": [
                        "interpolate",
                        ["linear"],
                        ["zoom"],
                        14,
                        [
                            "match",
                            ["get", "class"],
                            "shadow",
                            "hsla(141, 49%, 23%, 0.06)",
                            "hsla(220, 3%, 100%, 0.12)"
                        ],
                        16,
                        [
                            "match",
                            ["get", "class"],
                            "shadow",
                            "hsla(141, 49%, 23%, 0)",
                            "hsla(220, 3%, 100%, 0)"
                        ]
                    ],
                    "fill-antialias": false
                }
            },
            {
                "id": "pitch-outline",
                "type": "line",
                "metadata": {
                    "mapbox:featureComponent": "land-and-water",
                    "mapbox:group": "Land & water, land"
                },
                "source": "composite",
                "source-layer": "landuse",
                "minzoom": 15,
                "filter": ["==", ["get", "class"], "pitch"],
                "layout": {},
                "paint": {"line-color": "hsl(128, 96%, 76%)"}
            },
            {
                "id": "waterway",
                "type": "line",
                "metadata": {
                    "mapbox:featureComponent": "land-and-water",
                    "mapbox:group": "Land & water, water"
                },
                "source": "composite",
                "source-layer": "waterway",
                "minzoom": 8,
                "layout": {
                    "line-cap": ["step", ["zoom"], "butt", 11, "round"],
                    "line-join": ["step", ["zoom"], "miter", 11, "round"]
                },
                "paint": {
                    "line-color": "hsl(220, 1%, 86%)",
                    "line-width": [
                        "interpolate",
                        ["exponential", 1.3],
                        ["zoom"],
                        9,
                        ["match", ["get", "class"], ["canal", "river"], 0.1, 0],
                        20,
                        ["match", ["get", "class"], ["canal", "river"], 8, 3]
                    ],
                    "line-opacity": [
                        "interpolate",
                        ["linear"],
                        ["zoom"],
                        8,
                        0,
                        8.5,
                        1
                    ]
                }
            },
            {
                "id": "water",
                "type": "fill",
                "metadata": {
                    "mapbox:featureComponent": "land-and-water",
                    "mapbox:group": "Land & water, water"
                },
                "source": "composite",
                "source-layer": "water",
                "layout": {},
                "paint": {"fill-color": "hsl(220, 1%, 86%)"}
            },
            {
                "id": "land-structure-polygon",
                "type": "fill",
                "metadata": {
                    "mapbox:featureComponent": "land-and-water",
                    "mapbox:group": "Land & water, built"
                },
                "source": "composite",
                "source-layer": "structure",
                "minzoom": 13,
                "filter": [
                    "all",
                    ["==", ["get", "class"], "land"],
                    ["==", ["geometry-type"], "Polygon"]
                ],
                "layout": {},
                "paint": {
                    "fill-color": [
                        "interpolate",
                        ["linear"],
                        ["zoom"],
                        9,
                        "hsl(220, 3%, 99%)",
                        11,
                        "hsl(220, 1%, 97%)"
                    ]
                }
            },
            {
                "id": "land-structure-line",
                "type": "line",
                "metadata": {
                    "mapbox:featureComponent": "land-and-water",
                    "mapbox:group": "Land & water, built"
                },
                "source": "composite",
                "source-layer": "structure",
                "minzoom": 13,
                "filter": [
                    "all",
                    ["==", ["get", "class"], "land"],
                    ["==", ["geometry-type"], "LineString"]
                ],
                "layout": {"line-cap": "square"},
                "paint": {
                    "line-width": [
                        "interpolate",
                        ["exponential", 1.99],
                        ["zoom"],
                        14,
                        0.75,
                        20,
                        40
                    ],
                    "line-color": [
                        "interpolate",
                        ["linear"],
                        ["zoom"],
                        9,
                        "hsl(220, 3%, 99%)",
                        11,
                        "hsl(220, 1%, 97%)"
                    ]
                }
            },
            {
                "id": "aeroway-polygon",
                "type": "fill",
                "metadata": {
                    "mapbox:featureComponent": "transit",
                    "mapbox:group": "Transit, built"
                },
                "source": "composite",
                "source-layer": "aeroway",
                "minzoom": 11,
                "filter": [
                    "all",
                    [
                        "match",
                        ["get", "type"],
                        ["runway", "taxiway", "helipad"],
                        true,
                        false
                    ],
                    ["==", ["geometry-type"], "Polygon"]
                ],
                "paint": {
                    "fill-color": "hsl(220, 1%, 100%)",
                    "fill-opacity": [
                        "interpolate",
                        ["linear"],
                        ["zoom"],
                        10,
                        0,
                        11,
                        1
                    ]
                }
            },
            {
                "id": "aeroway-line",
                "type": "line",
                "metadata": {
                    "mapbox:featureComponent": "transit",
                    "mapbox:group": "Transit, built"
                },
                "source": "composite",
                "source-layer": "aeroway",
                "minzoom": 9,
                "filter": ["==", ["geometry-type"], "LineString"],
                "paint": {
                    "line-color": "hsl(220, 1%, 100%)",
                    "line-width": [
                        "interpolate",
                        ["exponential", 1.5],
                        ["zoom"],
                        9,
                        ["match", ["get", "type"], "runway", 1, 0.5],
                        18,
                        ["match", ["get", "type"], "runway", 80, 20]
                    ],
                    "line-opacity": [
                        "interpolate",
                        ["linear"],
                        ["zoom"],
                        10,
                        0,
                        11,
                        1
                    ]
                }
            },
            {
                "id": "building",
                "type": "fill",
                "metadata": {
                    "mapbox:featureComponent": "buildings",
                    "mapbox:group": "Buildings, built"
                },
                "source": "composite",
                "source-layer": "building",
                "minzoom": 15,
                "filter": [
                    "all",
                    ["!=", ["get", "type"], "building:part"],
                    ["==", ["get", "underground"], "false"]
                ],
                "layout": {},
                "paint": {
                    "fill-color": [
                        "interpolate",
                        ["linear"],
                        ["zoom"],
                        0,
                        "hsl(220, 0%, 91%)",
                        22,
                        "hsl(220, 0%, 91%)"
                    ],
                    "fill-opacity": [
                        "interpolate",
                        ["linear"],
                        ["zoom"],
                        15,
                        0,
                        16,
                        1
                    ],
                    "fill-outline-color": "hsla(220, 0%, 78%, 0.8)"
                }
            },
            {
                "id": "tunnel-path-trail",
                "type": "line",
                "metadata": {
                    "mapbox:featureComponent": "walking-cycling",
                    "mapbox:group": "Walking, cycling, etc., tunnels"
                },
                "source": "composite",
                "source-layer": "road",
                "minzoom": 15,
                "filter": [
                    "all",
                    ["==", ["get", "structure"], "tunnel"],
                    ["==", ["get", "class"], "path"],
                    [
                        "match",
                        ["get", "type"],
                        ["hiking", "mountain_bike", "trail"],
                        true,
                        false
                    ],
                    ["==", ["geometry-type"], "LineString"]
                ],
                "layout": {"line-cap": "round"},
                "paint": {
                    "line-width": [
                        "interpolate",
                        ["exponential", 1.5],
                        ["zoom"],
                        15,
                        1,
                        18,
                        4
                    ],
                    "line-color": "hsl(220, 0%, 87%)",
                    "line-dasharray": [10, 0]
                }
            },
            {
                "id": "tunnel-path-cycleway-piste",
                "type": "line",
                "metadata": {
                    "mapbox:featureComponent": "walking-cycling",
                    "mapbox:group": "Walking, cycling, etc., tunnels"
                },
                "source": "composite",
                "source-layer": "road",
                "minzoom": 12,
                "filter": [
                    "all",
                    ["==", ["get", "structure"], "tunnel"],
                    ["==", ["get", "class"], "path"],
                    ["match", ["get", "type"], ["cycleway", "piste"], true, false],
                    ["==", ["geometry-type"], "LineString"]
                ],
                "layout": {},
                "paint": {
                    "line-width": [
                        "interpolate",
                        ["exponential", 1.5],
                        ["zoom"],
                        15,
                        1,
                        18,
                        4
                    ],
                    "line-color": "hsl(220, 0%, 87%)",
                    "line-dasharray": [10, 0]
                }
            },
            {
                "id": "tunnel-path",
                "type": "line",
                "metadata": {
                    "mapbox:featureComponent": "walking-cycling",
                    "mapbox:group": "Walking, cycling, etc., tunnels"
                },
                "source": "composite",
                "source-layer": "road",
                "minzoom": 15,
                "filter": [
                    "all",
                    ["==", ["get", "structure"], "tunnel"],
                    ["==", ["get", "class"], "path"],
                    ["!=", ["get", "type"], "steps"],
                    ["==", ["geometry-type"], "LineString"]
                ],
                "layout": {"line-cap": "round"},
                "paint": {
                    "line-width": [
                        "interpolate",
                        ["exponential", 1.5],
                        ["zoom"],
                        15,
                        1,
                        18,
                        4
                    ],
                    "line-color": "hsl(220, 0%, 87%)",
                    "line-dasharray": [10, 0]
                }
            },
            {
                "id": "tunnel-steps",
                "type": "line",
                "metadata": {
                    "mapbox:featureComponent": "walking-cycling",
                    "mapbox:group": "Walking, cycling, etc., tunnels"
                },
                "source": "composite",
                "source-layer": "road",
                "minzoom": 15,
                "filter": [
                    "all",
                    ["==", ["get", "structure"], "tunnel"],
                    ["==", ["get", "type"], "steps"],
                    ["==", ["geometry-type"], "LineString"]
                ],
                "paint": {
                    "line-width": [
                        "interpolate",
                        ["exponential", 1.5],
                        ["zoom"],
                        15,
                        1,
                        16,
                        1.6,
                        18,
                        6
                    ],
                    "line-color": "hsl(220, 0%, 87%)",
                    "line-dasharray": [
                        "step",
                        ["zoom"],
                        ["literal", [1, 0]],
                        15,
                        ["literal", [1.75, 1]],
                        16,
                        ["literal", [1, 0.75]],
                        17,
                        ["literal", [0.3, 0.3]]
                    ]
                }
            },
            {
                "id": "tunnel-pedestrian",
                "type": "line",
                "metadata": {
                    "mapbox:featureComponent": "walking-cycling",
                    "mapbox:group": "Walking, cycling, etc., tunnels"
                },
                "source": "composite",
                "source-layer": "road",
                "minzoom": 15,
                "filter": [
                    "all",
                    ["==", ["get", "structure"], "tunnel"],
                    ["==", ["get", "class"], "pedestrian"],
                    ["==", ["geometry-type"], "LineString"]
                ],
                "paint": {
                    "line-width": [
                        "interpolate",
                        ["exponential", 1.5],
                        ["zoom"],
                        14,
                        0.5,
                        18,
                        12
                    ],
                    "line-color": "hsl(220, 0%, 87%)",
                    "line-dasharray": [10, 0]
                }
            },
            {
                "id": "tunnel-simple",
                "type": "line",
                "metadata": {
                    "mapbox:featureComponent": "road-network",
                    "mapbox:group": "Road network, tunnels"
                },
                "source": "composite",
                "source-layer": "road",
                "minzoom": 13,
                "filter": [
                    "all",
                    ["==", ["get", "structure"], "tunnel"],
                    [
                        "step",
                        ["zoom"],
                        [
                            "match",
                            ["get", "class"],
                            [
                                "motorway",
                                "motorway_link",
                                "trunk",
                                "trunk_link",
                                "primary",
                                "secondary",
                                "tertiary",
                                "street",
                                "street_limited",
                                "primary_link",
                                "track"
                            ],
                            true,
                            false
                        ],
                        14,
                        [
                            "match",
                            ["get", "class"],
                            [
                                "motorway",
                                "motorway_link",
                                "trunk",
                                "trunk_link",
                                "primary",
                                "primary_link",
                                "secondary",
                                "secondary_link",
                                "tertiary",
                                "tertiary_link",
                                "street",
                                "street_limited",
                                "service",
                                "track"
                            ],
                            true,
                            false
                        ]
                    ],
                    ["==", ["geometry-type"], "LineString"]
                ],
                "paint": {
                    "line-width": [
                        "interpolate",
                        ["exponential", 1.5],
                        ["zoom"],
                        13,
                        [
                            "match",
                            ["get", "class"],
                            ["motorway", "trunk", "primary"],
                            2.4,
                            ["secondary", "tertiary"],
                            1.5,
                            [
                                "motorway_link",
                                "trunk_link",
                                "street",
                                "street_limited",
                                "primary_link"
                            ],
                            0.6,
                            0.5
                        ],
                        18,
                        [
                            "match",
                            ["get", "class"],
                            ["motorway", "trunk", "primary"],
                            19.2,
                            ["secondary", "tertiary"],
                            15.6,
                            [
                                "motorway_link",
                                "trunk_link",
                                "street",
                                "street_limited",
                                "primary_link"
                            ],
                            10.799999999999999,
                            7.199999999999999
                        ],
                        22,
                        [
                            "match",
                            ["get", "class"],
                            ["motorway", "trunk", "primary"],
                            192,
                            ["secondary", "tertiary"],
                            156,
                            [
                                "motorway_link",
                                "trunk_link",
                                "primary_link",
                                "street",
                                "street_limited"
                            ],
                            108,
                            72
                        ]
                    ],
                    "line-color": "hsl(220, 1%, 100%)"
                }
            },
            {
                "id": "road-path-trail",
                "type": "line",
                "metadata": {
                    "mapbox:featureComponent": "walking-cycling",
                    "mapbox:group": "Walking, cycling, etc., surface"
                },
                "source": "composite",
                "source-layer": "road",
                "minzoom": 12,
                "filter": [
                    "all",
                    ["==", ["get", "class"], "path"],
                    [
                        "match",
                        ["get", "type"],
                        ["hiking", "mountain_bike", "trail"],
                        true,
                        false
                    ],
                    ["match", ["get", "structure"], ["none", "ford"], true, false],
                    ["==", ["geometry-type"], "LineString"]
                ],
                "layout": {
                    "line-cap": "round",
                    "line-join": ["step", ["zoom"], "miter", 14, "round"]
                },
                "paint": {
                    "line-width": [
                        "interpolate",
                        ["exponential", 1.5],
                        ["zoom"],
                        15,
                        1,
                        18,
                        4
                    ],
                    "line-color": "hsl(220, 1%, 100%)",
                    "line-dasharray": [10, 0]
                }
            },
            {
                "id": "road-path-cycleway-piste",
                "type": "line",
                "metadata": {
                    "mapbox:featureComponent": "walking-cycling",
                    "mapbox:group": "Walking, cycling, etc., surface"
                },
                "source": "composite",
                "source-layer": "road",
                "minzoom": 12,
                "filter": [
                    "all",
                    ["==", ["get", "class"], "path"],
                    ["match", ["get", "type"], ["cycleway", "piste"], true, false],
                    ["match", ["get", "structure"], ["none", "ford"], true, false],
                    ["==", ["geometry-type"], "LineString"]
                ],
                "layout": {"line-join": ["step", ["zoom"], "miter", 14, "round"]},
                "paint": {
                    "line-width": [
                        "interpolate",
                        ["exponential", 1.5],
                        ["zoom"],
                        15,
                        1,
                        18,
                        4
                    ],
                    "line-color": "hsl(220, 1%, 100%)",
                    "line-dasharray": [10, 0]
                }
            },
            {
                "id": "road-path",
                "type": "line",
                "metadata": {
                    "mapbox:featureComponent": "walking-cycling",
                    "mapbox:group": "Walking, cycling, etc., surface"
                },
                "source": "composite",
                "source-layer": "road",
                "minzoom": 12,
                "filter": [
                    "all",
                    ["==", ["get", "class"], "path"],
                    [
                        "step",
                        ["zoom"],
                        [
                            "!",
                            [
                                "match",
                                ["get", "type"],
                                ["steps", "sidewalk", "crossing"],
                                true,
                                false
                            ]
                        ],
                        16,
                        ["!=", ["get", "type"], "steps"]
                    ],
                    ["match", ["get", "structure"], ["none", "ford"], true, false],
                    ["==", ["geometry-type"], "LineString"]
                ],
                "layout": {
                    "line-cap": "round",
                    "line-join": ["step", ["zoom"], "miter", 14, "round"]
                },
                "paint": {
                    "line-width": [
                        "interpolate",
                        ["exponential", 1.5],
                        ["zoom"],
                        13,
                        0.5,
                        14,
                        1,
                        15,
                        1,
                        18,
                        4
                    ],
                    "line-color": "hsl(220, 1%, 100%)",
                    "line-dasharray": [10, 0]
                }
            },
            {
                "id": "road-steps",
                "type": "line",
                "metadata": {
                    "mapbox:featureComponent": "walking-cycling",
                    "mapbox:group": "Walking, cycling, etc., surface"
                },
                "source": "composite",
                "source-layer": "road",
                "minzoom": 14,
                "filter": [
                    "all",
                    ["==", ["get", "type"], "steps"],
                    ["match", ["get", "structure"], ["none", "ford"], true, false],
                    ["==", ["geometry-type"], "LineString"]
                ],
                "layout": {"line-join": "round"},
                "paint": {
                    "line-width": [
                        "interpolate",
                        ["exponential", 1.5],
                        ["zoom"],
                        15,
                        1,
                        16,
                        1.6,
                        18,
                        6
                    ],
                    "line-color": "hsl(220, 1%, 100%)",
                    "line-dasharray": [
                        "step",
                        ["zoom"],
                        ["literal", [1, 0]],
                        15,
                        ["literal", [1.75, 1]],
                        16,
                        ["literal", [1, 0.75]],
                        17,
                        ["literal", [0.3, 0.3]]
                    ]
                }
            },
            {
                "id": "road-pedestrian",
                "type": "line",
                "metadata": {
                    "mapbox:featureComponent": "walking-cycling",
                    "mapbox:group": "Walking, cycling, etc., surface"
                },
                "source": "composite",
                "source-layer": "road",
                "minzoom": 12,
                "filter": [
                    "all",
                    ["==", ["get", "class"], "pedestrian"],
                    ["match", ["get", "structure"], ["none", "ford"], true, false],
                    ["case", ["has", "layer"], [">=", ["get", "layer"], 0], true],
                    ["==", ["geometry-type"], "LineString"]
                ],
                "layout": {
                    "line-cap": "round",
                    "line-join": ["step", ["zoom"], "miter", 14, "round"]
                },
                "paint": {
                    "line-width": [
                        "interpolate",
                        ["exponential", 1.5],
                        ["zoom"],
                        14,
                        0.5,
                        18,
                        12
                    ],
                    "line-color": "hsl(220, 1%, 100%)",
                    "line-dasharray": [10, 0]
                }
            },
            {
                "id": "road-simple",
                "type": "line",
                "metadata": {
                    "mapbox:featureComponent": "road-network",
                    "mapbox:group": "Road network, surface"
                },
                "source": "composite",
                "source-layer": "road",
                "minzoom": 5,
                "filter": [
                    "all",
                    [
                        "step",
                        ["zoom"],
                        [
                            "match",
                            ["get", "class"],
                            ["motorway", "trunk"],
                            true,
                            false
                        ],
                        6,
                        [
                            "match",
                            ["get", "class"],
                            ["motorway", "trunk", "primary"],
                            true,
                            false
                        ],
                        8,
                        [
                            "match",
                            ["get", "class"],
                            ["motorway", "trunk", "primary", "secondary"],
                            true,
                            false
                        ],
                        10,
                        [
                            "match",
                            ["get", "class"],
                            [
                                "motorway",
                                "trunk",
                                "primary",
                                "secondary",
                                "tertiary",
                                "motorway_link",
                                "trunk_link"
                            ],
                            true,
                            false
                        ],
                        11,
                        [
                            "match",
                            ["get", "class"],
                            [
                                "motorway",
                                "motorway_link",
                                "trunk",
                                "trunk_link",
                                "primary",
                                "secondary",
                                "tertiary",
                                "street"
                            ],
                            true,
                            false
                        ],
                        12,
                        [
                            "match",
                            ["get", "class"],
                            [
                                "motorway",
                                "motorway_link",
                                "trunk",
                                "trunk_link",
                                "primary",
                                "secondary",
                                "tertiary",
                                "street",
                                "street_limited",
                                "primary_link"
                            ],
                            true,
                            false
                        ],
                        13,
                        [
                            "match",
                            ["get", "class"],
                            [
                                "motorway",
                                "motorway_link",
                                "trunk",
                                "trunk_link",
                                "primary",
                                "secondary",
                                "tertiary",
                                "street",
                                "street_limited",
                                "primary_link",
                                "track"
                            ],
                            true,
                            false
                        ],
                        14,
                        [
                            "match",
                            ["get", "class"],
                            [
                                "motorway",
                                "motorway_link",
                                "trunk",
                                "trunk_link",
                                "primary",
                                "primary_link",
                                "secondary",
                                "secondary_link",
                                "tertiary",
                                "tertiary_link",
                                "street",
                                "street_limited",
                                "service",
                                "track"
                            ],
                            true,
                            false
                        ]
                    ],
                    ["match", ["get", "structure"], ["none", "ford"], true, false],
                    ["==", ["geometry-type"], "LineString"]
                ],
                "layout": {
                    "line-cap": ["step", ["zoom"], "butt", 14, "round"],
                    "line-join": ["step", ["zoom"], "miter", 14, "round"]
                },
                "paint": {
                    "line-width": [
                        "interpolate",
                        ["exponential", 1.5],
                        ["zoom"],
                        5,
                        [
                            "match",
                            ["get", "class"],
                            ["motorway", "trunk", "primary"],
                            0.44999999999999996,
                            ["secondary", "tertiary"],
                            0.06,
                            0
                        ],
                        13,
                        [
                            "match",
                            ["get", "class"],
                            ["motorway", "trunk", "primary"],
                            2.4,
                            ["secondary", "tertiary"],
                            1.5,
                            [
                                "motorway_link",
                                "trunk_link",
                                "primary_link",
                                "street",
                                "street_limited"
                            ],
                            0.6,
                            0.3
                        ],
                        18,
                        [
                            "match",
                            ["get", "class"],
                            ["motorway", "trunk", "primary"],
                            19.2,
                            ["secondary", "tertiary"],
                            15.6,
                            [
                                "motorway_link",
                                "trunk_link",
                                "primary_link",
                                "street",
                                "street_limited"
                            ],
                            10.799999999999999,
                            6
                        ],
                        22,
                        [
                            "match",
                            ["get", "class"],
                            ["motorway", "trunk", "primary"],
                            192,
                            ["secondary", "tertiary"],
                            156,
                            [
                                "motorway_link",
                                "trunk_link",
                                "primary_link",
                                "street",
                                "street_limited"
                            ],
                            108,
                            60
                        ]
                    ],
                    "line-color": "hsl(220, 1%, 100%)"
                }
            },
            {
                "id": "road-rail",
                "type": "line",
                "metadata": {
                    "mapbox:featureComponent": "transit",
                    "mapbox:group": "Transit, surface"
                },
                "source": "composite",
                "source-layer": "road",
                "minzoom": 13,
                "filter": [
                    "all",
                    [
                        "match",
                        ["get", "class"],
                        ["major_rail", "minor_rail"],
                        true,
                        false
                    ],
                    ["match", ["get", "structure"], ["none", "ford"], true, false]
                ],
                "paint": {
                    "line-color": [
                        "interpolate",
                        ["linear"],
                        ["zoom"],
                        13,
                        "hsl(220, 0%, 93%)",
                        17,
                        "hsl(220, 0%, 87%)"
                    ],
                    "line-width": [
                        "interpolate",
                        ["exponential", 1.5],
                        ["zoom"],
                        14,
                        0.5,
                        20,
                        1
                    ]
                }
            },
            {
                "id": "road-rail-tracks",
                "type": "line",
                "metadata": {
                    "mapbox:featureComponent": "transit",
                    "mapbox:group": "Transit, surface"
                },
                "source": "composite",
                "source-layer": "road",
                "minzoom": 13,
                "filter": [
                    "all",
                    [
                        "match",
                        ["get", "class"],
                        ["major_rail", "minor_rail"],
                        true,
                        false
                    ],
                    ["match", ["get", "structure"], ["none", "ford"], true, false]
                ],
                "paint": {
                    "line-color": "hsl(220, 0%, 87%)",
                    "line-width": [
                        "interpolate",
                        ["exponential", 1.5],
                        ["zoom"],
                        14,
                        4,
                        20,
                        8
                    ],
                    "line-dasharray": [0.1, 15],
                    "line-opacity": [
                        "interpolate",
                        ["linear"],
                        ["zoom"],
                        13.75,
                        0,
                        14,
                        1
                    ]
                }
            },
            {
                "id": "bridge-path-trail",
                "type": "line",
                "metadata": {
                    "mapbox:featureComponent": "walking-cycling",
                    "mapbox:group": "Walking, cycling, etc., barriers-bridges"
                },
                "source": "composite",
                "source-layer": "road",
                "minzoom": 14,
                "filter": [
                    "all",
                    ["==", ["get", "structure"], "bridge"],
                    ["==", ["get", "class"], "path"],
                    [
                        "match",
                        ["get", "type"],
                        ["hiking", "mountain_bike", "trail"],
                        true,
                        false
                    ],
                    ["==", ["geometry-type"], "LineString"]
                ],
                "layout": {"line-cap": "round"},
                "paint": {
                    "line-width": [
                        "interpolate",
                        ["exponential", 1.5],
                        ["zoom"],
                        15,
                        1,
                        18,
                        4
                    ],
                    "line-color": "hsl(220, 1%, 100%)",
                    "line-dasharray": [10, 0]
                }
            },
            {
                "id": "bridge-path-cycleway-piste",
                "type": "line",
                "metadata": {
                    "mapbox:featureComponent": "walking-cycling",
                    "mapbox:group": "Walking, cycling, etc., barriers-bridges"
                },
                "source": "composite",
                "source-layer": "road",
                "minzoom": 14,
                "filter": [
                    "all",
                    ["==", ["get", "structure"], "bridge"],
                    ["==", ["get", "class"], "path"],
                    ["match", ["get", "type"], ["cycleway", "piste"], true, false],
                    ["==", ["geometry-type"], "LineString"]
                ],
                "layout": {},
                "paint": {
                    "line-width": [
                        "interpolate",
                        ["exponential", 1.5],
                        ["zoom"],
                        15,
                        1,
                        18,
                        4
                    ],
                    "line-color": "hsl(220, 1%, 100%)",
                    "line-dasharray": [10, 0]
                }
            },
            {
                "id": "bridge-path",
                "type": "line",
                "metadata": {
                    "mapbox:featureComponent": "walking-cycling",
                    "mapbox:group": "Walking, cycling, etc., barriers-bridges"
                },
                "source": "composite",
                "source-layer": "road",
                "minzoom": 14,
                "filter": [
                    "all",
                    ["==", ["get", "structure"], "bridge"],
                    ["==", ["get", "class"], "path"],
                    ["!=", ["get", "type"], "steps"],
                    ["==", ["geometry-type"], "LineString"]
                ],
                "layout": {"line-cap": "round"},
                "paint": {
                    "line-width": [
                        "interpolate",
                        ["exponential", 1.5],
                        ["zoom"],
                        15,
                        1,
                        18,
                        4
                    ],
                    "line-color": "hsl(220, 1%, 100%)",
                    "line-dasharray": [10, 0]
                }
            },
            {
                "id": "bridge-steps",
                "type": "line",
                "metadata": {
                    "mapbox:featureComponent": "walking-cycling",
                    "mapbox:group": "Walking, cycling, etc., barriers-bridges"
                },
                "source": "composite",
                "source-layer": "road",
                "minzoom": 14,
                "filter": [
                    "all",
                    ["==", ["get", "type"], "steps"],
                    ["==", ["get", "structure"], "bridge"],
                    ["==", ["geometry-type"], "LineString"]
                ],
                "paint": {
                    "line-width": [
                        "interpolate",
                        ["exponential", 1.5],
                        ["zoom"],
                        15,
                        1,
                        16,
                        1.6,
                        18,
                        6
                    ],
                    "line-color": "hsl(220, 1%, 100%)",
                    "line-dasharray": [
                        "step",
                        ["zoom"],
                        ["literal", [1, 0]],
                        15,
                        ["literal", [1.75, 1]],
                        16,
                        ["literal", [1, 0.75]],
                        17,
                        ["literal", [0.3, 0.3]]
                    ]
                }
            },
            {
                "id": "bridge-pedestrian",
                "type": "line",
                "metadata": {
                    "mapbox:featureComponent": "walking-cycling",
                    "mapbox:group": "Walking, cycling, etc., barriers-bridges"
                },
                "source": "composite",
                "source-layer": "road",
                "minzoom": 13,
                "filter": [
                    "all",
                    ["==", ["get", "structure"], "bridge"],
                    ["==", ["get", "class"], "pedestrian"],
                    ["==", ["geometry-type"], "LineString"]
                ],
                "paint": {
                    "line-width": [
                        "interpolate",
                        ["exponential", 1.5],
                        ["zoom"],
                        14,
                        0.5,
                        18,
                        12
                    ],
                    "line-color": "hsl(220, 1%, 100%)",
                    "line-dasharray": [10, 0]
                }
            },
            {
                "id": "bridge-case-simple",
                "type": "line",
                "metadata": {
                    "mapbox:featureComponent": "road-network",
                    "mapbox:group": "Road network, bridges"
                },
                "source": "composite",
                "source-layer": "road",
                "minzoom": 13,
                "filter": [
                    "all",
                    ["==", ["get", "structure"], "bridge"],
                    [
                        "step",
                        ["zoom"],
                        [
                            "match",
                            ["get", "class"],
                            [
                                "motorway",
                                "motorway_link",
                                "trunk",
                                "trunk_link",
                                "primary",
                                "secondary",
                                "tertiary",
                                "street",
                                "street_limited",
                                "primary_link",
                                "track"
                            ],
                            true,
                            false
                        ],
                        14,
                        [
                            "match",
                            ["get", "class"],
                            [
                                "motorway",
                                "motorway_link",
                                "trunk",
                                "trunk_link",
                                "primary",
                                "primary_link",
                                "secondary",
                                "secondary_link",
                                "tertiary",
                                "tertiary_link",
                                "street",
                                "street_limited",
                                "service",
                                "track"
                            ],
                            true,
                            false
                        ]
                    ],
                    ["==", ["geometry-type"], "LineString"]
                ],
                "paint": {
                    "line-width": [
                        "interpolate",
                        ["exponential", 1.5],
                        ["zoom"],
                        13,
                        [
                            "match",
                            ["get", "class"],
                            ["motorway", "trunk", "primary"],
                            3.5999999999999996,
                            ["secondary", "tertiary"],
                            2.4,
                            [
                                "motorway_link",
                                "trunk_link",
                                "street",
                                "street_limited",
                                "primary_link"
                            ],
                            1.5,
                            0.75
                        ],
                        18,
                        [
                            "match",
                            ["get", "class"],
                            ["motorway", "trunk", "primary"],
                            21.599999999999998,
                            ["secondary", "tertiary"],
                            18,
                            [
                                "motorway_link",
                                "trunk_link",
                                "street",
                                "street_limited",
                                "primary_link"
                            ],
                            13.2,
                            9.6
                        ],
                        22,
                        [
                            "match",
                            ["get", "class"],
                            ["motorway", "trunk", "primary"],
                            216,
                            ["secondary", "tertiary"],
                            180,
                            [
                                "motorway_link",
                                "trunk_link",
                                "primary_link",
                                "street",
                                "street_limited"
                            ],
                            132,
                            96
                        ]
                    ],
                    "line-color": "hsl(220, 1%, 97%)"
                }
            },
            {
                "id": "bridge-simple",
                "type": "line",
                "metadata": {
                    "mapbox:featureComponent": "road-network",
                    "mapbox:group": "Road network, bridges"
                },
                "source": "composite",
                "source-layer": "road",
                "minzoom": 13,
                "filter": [
                    "all",
                    ["==", ["get", "structure"], "bridge"],
                    [
                        "step",
                        ["zoom"],
                        [
                            "match",
                            ["get", "class"],
                            ["motorway", "trunk"],
                            true,
                            false
                        ],
                        13,
                        [
                            "match",
                            ["get", "class"],
                            [
                                "motorway",
                                "motorway_link",
                                "trunk",
                                "trunk_link",
                                "primary",
                                "secondary",
                                "tertiary",
                                "street",
                                "street_limited",
                                "primary_link",
                                "track"
                            ],
                            true,
                            false
                        ],
                        14,
                        [
                            "match",
                            ["get", "class"],
                            [
                                "motorway",
                                "motorway_link",
                                "trunk",
                                "trunk_link",
                                "primary",
                                "primary_link",
                                "secondary",
                                "secondary_link",
                                "tertiary",
                                "tertiary_link",
                                "street",
                                "street_limited",
                                "service",
                                "track"
                            ],
                            true,
                            false
                        ]
                    ],
                    ["==", ["geometry-type"], "LineString"]
                ],
                "layout": {"line-cap": ["step", ["zoom"], "butt", 14, "round"]},
                "paint": {
                    "line-width": [
                        "interpolate",
                        ["exponential", 1.5],
                        ["zoom"],
                        13,
                        [
                            "match",
                            ["get", "class"],
                            ["motorway", "trunk", "primary"],
                            2.4,
                            ["secondary", "tertiary"],
                            1.5,
                            [
                                "motorway_link",
                                "trunk_link",
                                "street",
                                "street_limited",
                                "primary_link"
                            ],
                            0.6,
                            0.5
                        ],
                        18,
                        [
                            "match",
                            ["get", "class"],
                            ["motorway", "trunk", "primary"],
                            19.2,
                            ["secondary", "tertiary"],
                            15.6,
                            [
                                "motorway_link",
                                "trunk_link",
                                "street",
                                "street_limited",
                                "primary_link"
                            ],
                            10.799999999999999,
                            7.199999999999999
                        ],
                        22,
                        [
                            "match",
                            ["get", "class"],
                            ["motorway", "trunk", "primary"],
                            192,
                            ["secondary", "tertiary"],
                            156,
                            [
                                "motorway_link",
                                "trunk_link",
                                "primary_link",
                                "street",
                                "street_limited"
                            ],
                            108,
                            72
                        ]
                    ],
                    "line-color": "hsl(220, 1%, 100%)"
                }
            },
            {
                "id": "bridge-rail",
                "type": "line",
                "metadata": {
                    "mapbox:featureComponent": "transit",
                    "mapbox:group": "Transit, bridges"
                },
                "source": "composite",
                "source-layer": "road",
                "minzoom": 13,
                "filter": [
                    "all",
                    ["==", ["get", "structure"], "bridge"],
                    [
                        "match",
                        ["get", "class"],
                        ["major_rail", "minor_rail"],
                        true,
                        false
                    ]
                ],
                "paint": {
                    "line-color": "hsl(220, 0%, 87%)",
                    "line-width": [
                        "interpolate",
                        ["exponential", 1.5],
                        ["zoom"],
                        14,
                        0.5,
                        20,
                        1
                    ]
                }
            },
            {
                "id": "bridge-rail-tracks",
                "type": "line",
                "metadata": {
                    "mapbox:featureComponent": "transit",
                    "mapbox:group": "Transit, bridges"
                },
                "source": "composite",
                "source-layer": "road",
                "minzoom": 13,
                "filter": [
                    "all",
                    ["==", ["get", "structure"], "bridge"],
                    [
                        "match",
                        ["get", "class"],
                        ["major_rail", "minor_rail"],
                        true,
                        false
                    ]
                ],
                "paint": {
                    "line-color": "hsl(220, 0%, 87%)",
                    "line-width": [
                        "interpolate",
                        ["exponential", 1.5],
                        ["zoom"],
                        14,
                        4,
                        20,
                        8
                    ],
                    "line-dasharray": [0.1, 15],
                    "line-opacity": [
                        "interpolate",
                        ["linear"],
                        ["zoom"],
                        13.75,
                        0,
                        14,
                        1
                    ]
                }
            },
            {
                "id": "admin-1-boundary-bg",
                "type": "line",
                "metadata": {
                    "mapbox:featureComponent": "admin-boundaries",
                    "mapbox:group": "Administrative boundaries, admin"
                },
                "source": "composite",
                "source-layer": "admin",
                "minzoom": 7,
                "filter": [
                    "all",
                    ["==", ["get", "admin_level"], 1],
                    ["==", ["get", "maritime"], "false"],
                    ["match", ["get", "worldview"], ["all", "US"], true, false]
                ],
                "paint": {
                    "line-color": "hsl(220, 0%, 87%)",
                    "line-width": [
                        "interpolate",
                        ["linear"],
                        ["zoom"],
                        3,
                        3,
                        12,
                        6
                    ],
                    "line-opacity": [
                        "interpolate",
                        ["linear"],
                        ["zoom"],
                        7,
                        0,
                        8,
                        0.5
                    ],
                    "line-dasharray": [1, 0],
                    "line-blur": ["interpolate", ["linear"], ["zoom"], 3, 0, 12, 3]
                }
            },
            {
                "id": "admin-0-boundary-bg",
                "type": "line",
                "metadata": {
                    "mapbox:featureComponent": "admin-boundaries",
                    "mapbox:group": "Administrative boundaries, admin"
                },
                "source": "composite",
                "source-layer": "admin",
                "minzoom": 1,
                "filter": [
                    "all",
                    ["==", ["get", "admin_level"], 0],
                    ["==", ["get", "maritime"], "false"],
                    ["match", ["get", "worldview"], ["all", "US"], true, false]
                ],
                "paint": {
                    "line-width": [
                        "interpolate",
                        ["linear"],
                        ["zoom"],
                        3,
                        5.2,
                        12,
                        10.4
                    ],
                    "line-color": "hsl(220, 0%, 87%)",
                    "line-opacity": [
                        "interpolate",
                        ["linear"],
                        ["zoom"],
                        3,
                        0,
                        4,
                        0.5
                    ],
                    "line-blur": [
                        "interpolate",
                        ["linear"],
                        ["zoom"],
                        3,
                        0,
                        12,
                        2.6
                    ]
                }
            },
            {
                "id": "admin-1-boundary",
                "type": "line",
                "metadata": {
                    "mapbox:featureComponent": "admin-boundaries",
                    "mapbox:group": "Administrative boundaries, admin"
                },
                "source": "composite",
                "source-layer": "admin",
                "minzoom": 2,
                "filter": [
                    "all",
                    ["==", ["get", "admin_level"], 1],
                    ["==", ["get", "maritime"], "false"],
                    ["match", ["get", "worldview"], ["all", "US"], true, false]
                ],
                "layout": {},
                "paint": {
                    "line-dasharray": [
                        "step",
                        ["zoom"],
                        ["literal", [2, 0]],
                        7,
                        ["literal", [2, 2, 6, 2]]
                    ],
                    "line-width": [
                        "interpolate",
                        ["linear"],
                        ["zoom"],
                        3,
                        0.3,
                        12,
                        1.5
                    ],
                    "line-opacity": [
                        "interpolate",
                        ["linear"],
                        ["zoom"],
                        2,
                        0,
                        3,
                        1
                    ],
                    "line-color": "hsl(220, 1%, 71%)"
                }
            },
            {
                "id": "admin-0-boundary",
                "type": "line",
                "metadata": {
                    "mapbox:featureComponent": "admin-boundaries",
                    "mapbox:group": "Administrative boundaries, admin"
                },
                "source": "composite",
                "source-layer": "admin",
                "minzoom": 1,
                "filter": [
                    "all",
                    ["==", ["get", "admin_level"], 0],
                    ["==", ["get", "disputed"], "false"],
                    ["==", ["get", "maritime"], "false"],
                    ["match", ["get", "worldview"], ["all", "US"], true, false]
                ],
                "layout": {},
                "paint": {
                    "line-color": "hsl(220, 0%, 70%)",
                    "line-width": [
                        "interpolate",
                        ["linear"],
                        ["zoom"],
                        3,
                        0.65,
                        12,
                        2.6
                    ],
                    "line-dasharray": [10, 0]
                }
            },
            {
                "id": "admin-0-boundary-disputed",
                "type": "line",
                "metadata": {
                    "mapbox:featureComponent": "admin-boundaries",
                    "mapbox:group": "Administrative boundaries, admin"
                },
                "source": "composite",
                "source-layer": "admin",
                "minzoom": 1,
                "filter": [
                    "all",
                    ["==", ["get", "disputed"], "true"],
                    ["==", ["get", "admin_level"], 0],
                    ["==", ["get", "maritime"], "false"],
                    ["match", ["get", "worldview"], ["all", "US"], true, false]
                ],
                "paint": {
                    "line-color": "hsl(220, 0%, 70%)",
                    "line-width": [
                        "interpolate",
                        ["linear"],
                        ["zoom"],
                        3,
                        0.65,
                        12,
                        2.6
                    ],
                    "line-dasharray": [
                        "step",
                        ["zoom"],
                        ["literal", [3, 2, 5]],
                        7,
                        ["literal", [2, 1.5]]
                    ]
                }
            },
            {
                "id": "building-entrance",
                "type": "symbol",
                "metadata": {
                    "mapbox:featureComponent": "buildings",
                    "mapbox:group": "Buildings, building-labels"
                },
                "source": "composite",
                "source-layer": "structure",
                "minzoom": 18,
                "filter": [
                    "all",
                    ["==", ["get", "class"], "entrance"],
                    [
                        "step",
                        ["pitch"],
                        true,
                        50,
                        ["<", ["distance-from-center"], 1],
                        60,
                        ["<", ["distance-from-center"], 1.5],
                        70,
                        ["<", ["distance-from-center"], 2]
                    ]
                ],
                "layout": {
                    "icon-image": "marker",
                    "text-field": ["get", "ref"],
                    "text-size": 10,
                    "text-offset": [0, -0.5],
                    "text-font": ["Manrope Light", "Arial Unicode MS Regular"]
                },
                "paint": {
                    "text-color": "hsl(220, 0%, 58%)",
                    "text-halo-color": "hsl(220, 0%, 98%)",
                    "text-halo-width": 1,
                    "icon-opacity": 0.4
                }
            },
            {
                "id": "building-number-label",
                "type": "symbol",
                "metadata": {
                    "mapbox:featureComponent": "buildings",
                    "mapbox:group": "Buildings, building-labels"
                },
                "source": "composite",
                "source-layer": "housenum_label",
                "minzoom": 17,
                "filter": [
                    "step",
                    ["pitch"],
                    true,
                    50,
                    ["<", ["distance-from-center"], 1],
                    60,
                    ["<", ["distance-from-center"], 1.5],
                    70,
                    ["<", ["distance-from-center"], 2]
                ],
                "layout": {
                    "text-field": ["get", "house_num"],
                    "text-font": ["Manrope Light", "Arial Unicode MS Regular"],
                    "text-padding": 4,
                    "text-max-width": 7,
                    "text-size": 10
                },
                "paint": {
                    "text-color": "hsl(220, 0%, 58%)",
                    "text-halo-color": "hsl(220, 0%, 98%)",
                    "text-halo-width": 1
                }
            },
            {
                "id": "block-number-label",
                "type": "symbol",
                "metadata": {
                    "mapbox:featureComponent": "buildings",
                    "mapbox:group": "Buildings, building-labels"
                },
                "source": "composite",
                "source-layer": "place_label",
                "minzoom": 16,
                "filter": [
                    "all",
                    ["==", ["get", "class"], "settlement_subdivision"],
                    ["==", ["get", "type"], "block"],
                    [
                        "step",
                        ["pitch"],
                        true,
                        50,
                        ["<", ["distance-from-center"], 1],
                        60,
                        ["<", ["distance-from-center"], 1.5],
                        70,
                        ["<", ["distance-from-center"], 2]
                    ]
                ],
                "layout": {
                    "text-field": ["get", "name"],
                    "text-font": ["Manrope Light", "Arial Unicode MS Regular"],
                    "text-max-width": 7,
                    "text-size": 11
                },
                "paint": {
                    "text-color": "hsl(220, 1%, 62%)",
                    "text-halo-color": "hsl(220, 0%, 100%)",
                    "text-halo-width": 0.5,
                    "text-halo-blur": 0.5
                }
            },
            {
                "id": "road-label-simple",
                "type": "symbol",
                "metadata": {
                    "mapbox:featureComponent": "road-network",
                    "mapbox:group": "Road network, road-labels"
                },
                "source": "composite",
                "source-layer": "road",
                "minzoom": 12,
                "filter": [
                    "all",
                    ["has", "name"],
                    [
                        "match",
                        ["get", "class"],
                        [
                            "motorway",
                            "trunk",
                            "primary",
                            "secondary",
                            "tertiary",
                            "street",
                            "street_limited"
                        ],
                        true,
                        false
                    ],
                    [
                        "step",
                        ["pitch"],
                        true,
                        50,
                        ["<", ["distance-from-center"], 2],
                        60,
                        ["<", ["distance-from-center"], 2.5],
                        70,
                        ["<", ["distance-from-center"], 3]
                    ]
                ],
                "layout": {
                    "text-size": [
                        "interpolate",
                        ["linear"],
                        ["zoom"],
                        10,
                        [
                            "match",
                            ["get", "class"],
                            [
                                "motorway",
                                "trunk",
                                "primary",
                                "secondary",
                                "tertiary"
                            ],
                            10,
                            9
                        ],
                        18,
                        [
                            "match",
                            ["get", "class"],
                            [
                                "motorway",
                                "trunk",
                                "primary",
                                "secondary",
                                "tertiary"
                            ],
                            16,
                            14
                        ]
                    ],
                    "text-max-angle": 30,
                    "symbol-spacing": 300,
                    "text-font": ["Manrope Regular", "Arial Unicode MS Regular"],
                    "symbol-placement": "line",
                    "text-padding": 10,
                    "text-rotation-alignment": "map",
                    "text-pitch-alignment": "viewport",
                    "text-field": ["coalesce", ["get", "name_en"], ["get", "name"]],
                    "text-letter-spacing": 0.01
                },
                "paint": {
                    "text-color": "hsl(220, 1%, 49%)",
                    "text-halo-color": "hsl(220, 0%, 100%)",
                    "text-halo-width": 1
                }
            },
            {
                "id": "waterway-label",
                "type": "symbol",
                "metadata": {
                    "mapbox:featureComponent": "natural-features",
                    "mapbox:group": "Natural features, natural-labels"
                },
                "source": "composite",
                "source-layer": "natural_label",
                "minzoom": 13,
                "filter": [
                    "all",
                    [
                        "match",
                        ["get", "class"],
                        [
                            "canal",
                            "river",
                            "stream",
                            "disputed_canal",
                            "disputed_river",
                            "disputed_stream"
                        ],
                        ["match", ["get", "worldview"], ["all", "US"], true, false],
                        false
                    ],
                    [
                        "step",
                        ["pitch"],
                        true,
                        50,
                        ["<", ["distance-from-center"], 1],
                        60,
                        ["<", ["distance-from-center"], 1.5],
                        70,
                        ["<", ["distance-from-center"], 2]
                    ],
                    ["==", ["geometry-type"], "LineString"]
                ],
                "layout": {
                    "text-font": ["Manrope Light", "Arial Unicode MS Regular"],
                    "text-max-angle": 30,
                    "symbol-spacing": [
                        "interpolate",
                        ["linear", 1],
                        ["zoom"],
                        15,
                        250,
                        17,
                        400
                    ],
                    "text-size": [
                        "interpolate",
                        ["linear"],
                        ["zoom"],
                        13,
                        12,
                        18,
                        18
                    ],
                    "symbol-placement": "line",
                    "text-pitch-alignment": "viewport",
                    "text-field": ["coalesce", ["get", "name_en"], ["get", "name"]]
                },
                "paint": {
                    "text-color": "hsl(220, 1%, 58%)",
                    "text-halo-color": "hsla(220, 0%, 100%, 0.5)"
                }
            },
            {
                "id": "natural-line-label",
                "type": "symbol",
                "metadata": {
                    "mapbox:featureComponent": "natural-features",
                    "mapbox:group": "Natural features, natural-labels"
                },
                "source": "composite",
                "source-layer": "natural_label",
                "minzoom": 4,
                "filter": [
                    "all",
                    [
                        "match",
                        ["get", "class"],
                        [
                            "glacier",
                            "landform",
                            "disputed_glacier",
                            "disputed_landform"
                        ],
                        ["match", ["get", "worldview"], ["all", "US"], true, false],
                        false
                    ],
                    ["<=", ["get", "filterrank"], 1],
                    [
                        "step",
                        ["pitch"],
                        true,
                        50,
                        ["<", ["distance-from-center"], 1],
                        60,
                        ["<", ["distance-from-center"], 1.5],
                        70,
                        ["<", ["distance-from-center"], 2]
                    ],
                    ["==", ["geometry-type"], "LineString"]
                ],
                "layout": {
                    "text-size": [
                        "step",
                        ["zoom"],
                        ["step", ["get", "sizerank"], 18, 5, 12],
                        17,
                        ["step", ["get", "sizerank"], 18, 13, 12]
                    ],
                    "text-max-angle": 30,
                    "text-field": ["coalesce", ["get", "name_en"], ["get", "name"]],
                    "text-font": ["Manrope Medium", "Arial Unicode MS Regular"],
                    "symbol-placement": "line-center",
                    "text-pitch-alignment": "viewport"
                },
                "paint": {
                    "text-halo-width": 0.5,
                    "text-halo-color": "hsl(220, 0%, 100%)",
                    "text-halo-blur": 0.5,
                    "text-color": "hsl(220, 1%, 62%)"
                }
            },
            {
                "id": "natural-point-label",
                "type": "symbol",
                "metadata": {
                    "mapbox:featureComponent": "natural-features",
                    "mapbox:group": "Natural features, natural-labels"
                },
                "source": "composite",
                "source-layer": "natural_label",
                "minzoom": 4,
                "filter": [
                    "all",
                    [
                        "match",
                        ["get", "class"],
                        [
                            "dock",
                            "glacier",
                            "landform",
                            "water_feature",
                            "wetland",
                            "disputed_dock",
                            "disputed_glacier",
                            "disputed_landform",
                            "disputed_water_feature",
                            "disputed_wetland"
                        ],
                        ["match", ["get", "worldview"], ["all", "US"], true, false],
                        false
                    ],
                    ["<=", ["get", "filterrank"], 1],
                    [
                        "step",
                        ["pitch"],
                        true,
                        50,
                        ["<", ["distance-from-center"], 1],
                        60,
                        ["<", ["distance-from-center"], 1.5],
                        70,
                        ["<", ["distance-from-center"], 2]
                    ],
                    ["==", ["geometry-type"], "Point"]
                ],
                "layout": {
                    "text-size": [
                        "step",
                        ["zoom"],
                        ["step", ["get", "sizerank"], 18, 5, 12],
                        17,
                        ["step", ["get", "sizerank"], 18, 13, 12]
                    ],
                    "icon-image": [
                        "case",
                        ["has", "maki_beta"],
                        [
                            "coalesce",
                            ["image", ["get", "maki_beta"]],
                            ["image", ["get", "maki"]]
                        ],
                        ["image", ["get", "maki"]]
                    ],
                    "text-font": ["Manrope Medium", "Arial Unicode MS Regular"],
                    "text-offset": [
                        "step",
                        ["zoom"],
                        [
                            "step",
                            ["get", "sizerank"],
                            ["literal", [0, 0]],
                            5,
                            ["literal", [0, 0.75]]
                        ],
                        17,
                        [
                            "step",
                            ["get", "sizerank"],
                            ["literal", [0, 0]],
                            13,
                            ["literal", [0, 0.75]]
                        ]
                    ],
                    "text-anchor": [
                        "step",
                        ["zoom"],
                        ["step", ["get", "sizerank"], "center", 5, "top"],
                        17,
                        ["step", ["get", "sizerank"], "center", 13, "top"]
                    ],
                    "text-field": ["coalesce", ["get", "name_en"], ["get", "name"]]
                },
                "paint": {
                    "icon-opacity": [
                        "step",
                        ["zoom"],
                        ["step", ["get", "sizerank"], 0, 5, 1],
                        17,
                        ["step", ["get", "sizerank"], 0, 13, 1]
                    ],
                    "text-halo-color": "hsl(220, 0%, 100%)",
                    "text-halo-width": 0.5,
                    "text-halo-blur": 0.5,
                    "text-color": "hsl(220, 1%, 62%)"
                }
            },
            {
                "id": "water-line-label",
                "type": "symbol",
                "metadata": {
                    "mapbox:featureComponent": "natural-features",
                    "mapbox:group": "Natural features, natural-labels"
                },
                "source": "composite",
                "source-layer": "natural_label",
                "minzoom": 1,
                "filter": [
                    "all",
                    [
                        "match",
                        ["get", "class"],
                        [
                            "bay",
                            "ocean",
                            "reservoir",
                            "sea",
                            "water",
                            "disputed_bay",
                            "disputed_ocean",
                            "disputed_reservoir",
                            "disputed_sea",
                            "disputed_water"
                        ],
                        ["match", ["get", "worldview"], ["all", "US"], true, false],
                        false
                    ],
                    [
                        "step",
                        ["pitch"],
                        true,
                        50,
                        ["<", ["distance-from-center"], 1],
                        60,
                        ["<", ["distance-from-center"], 1.5],
                        70,
                        ["<", ["distance-from-center"], 2]
                    ],
                    ["==", ["geometry-type"], "LineString"]
                ],
                "layout": {
                    "text-size": [
                        "interpolate",
                        ["linear"],
                        ["zoom"],
                        0,
                        ["*", ["-", 16, ["sqrt", ["get", "sizerank"]]], 1],
                        22,
                        ["*", ["-", 22, ["sqrt", ["get", "sizerank"]]], 1]
                    ],
                    "text-max-angle": 30,
                    "text-letter-spacing": [
                        "match",
                        ["get", "class"],
                        "ocean",
                        0.25,
                        ["sea", "bay"],
                        0.15,
                        0
                    ],
                    "text-font": ["Manrope Light", "Arial Unicode MS Regular"],
                    "symbol-placement": "line-center",
                    "text-pitch-alignment": "viewport",
                    "text-field": ["coalesce", ["get", "name_en"], ["get", "name"]]
                },
                "paint": {
                    "text-color": "hsl(220, 1%, 58%)",
                    "text-halo-color": "hsla(220, 0%, 100%, 0.5)"
                }
            },
            {
                "id": "water-point-label",
                "type": "symbol",
                "metadata": {
                    "mapbox:featureComponent": "natural-features",
                    "mapbox:group": "Natural features, natural-labels"
                },
                "source": "composite",
                "source-layer": "natural_label",
                "minzoom": 1,
                "filter": [
                    "all",
                    [
                        "match",
                        ["get", "class"],
                        [
                            "bay",
                            "ocean",
                            "reservoir",
                            "sea",
                            "water",
                            "disputed_bay",
                            "disputed_ocean",
                            "disputed_reservoir",
                            "disputed_sea",
                            "disputed_water"
                        ],
                        ["match", ["get", "worldview"], ["all", "US"], true, false],
                        false
                    ],
                    [
                        "step",
                        ["pitch"],
                        true,
                        50,
                        ["<", ["distance-from-center"], 1],
                        60,
                        ["<", ["distance-from-center"], 1.5],
                        70,
                        ["<", ["distance-from-center"], 2]
                    ],
                    ["==", ["geometry-type"], "Point"]
                ],
                "layout": {
                    "text-line-height": 1.3,
                    "text-size": [
                        "interpolate",
                        ["linear"],
                        ["zoom"],
                        0,
                        ["*", ["-", 16, ["sqrt", ["get", "sizerank"]]], 1],
                        22,
                        ["*", ["-", 22, ["sqrt", ["get", "sizerank"]]], 1]
                    ],
                    "text-font": ["Manrope Light", "Arial Unicode MS Regular"],
                    "text-field": ["coalesce", ["get", "name_en"], ["get", "name"]],
                    "text-letter-spacing": [
                        "match",
                        ["get", "class"],
                        "ocean",
                        0.25,
                        ["bay", "sea"],
                        0.15,
                        0.01
                    ],
                    "text-max-width": [
                        "match",
                        ["get", "class"],
                        "ocean",
                        4,
                        "sea",
                        5,
                        ["bay", "water"],
                        7,
                        10
                    ]
                },
                "paint": {
                    "text-color": "hsl(220, 1%, 58%)",
                    "text-halo-color": "hsla(220, 0%, 100%, 0.5)"
                }
            },
            {
                "id": "poi-label",
                "type": "symbol",
                "metadata": {
                    "mapbox:featureComponent": "point-of-interest-labels",
                    "mapbox:group": "Point of interest labels, poi-labels"
                },
                "source": "composite",
                "source-layer": "poi_label",
                "minzoom": 6,
                "filter": [
                    "all",
                    [
                        "<=",
                        ["get", "filterrank"],
                        ["+", ["step", ["zoom"], 0, 16, 1, 17, 2], 1]
                    ],
                    [
                        "step",
                        ["pitch"],
                        true,
                        50,
                        ["<", ["distance-from-center"], 2],
                        60,
                        ["<", ["distance-from-center"], 2.5],
                        70,
                        ["<", ["distance-from-center"], 3]
                    ]
                ],
                "layout": {
                    "text-size": [
                        "step",
                        ["zoom"],
                        ["step", ["get", "sizerank"], 18, 5, 12],
                        17,
                        ["step", ["get", "sizerank"], 18, 13, 12]
                    ],
                    "icon-image": "",
                    "text-font": ["Manrope Medium", "Arial Unicode MS Regular"],
                    "text-offset": [0, 0],
                    "text-anchor": [
                        "step",
                        ["zoom"],
                        ["step", ["get", "sizerank"], "center", 5, "top"],
                        17,
                        ["step", ["get", "sizerank"], "center", 13, "top"]
                    ],
                    "text-field": ["coalesce", ["get", "name_en"], ["get", "name"]]
                },
                "paint": {
                    "text-halo-color": "hsl(220, 0%, 100%)",
                    "text-halo-width": 0.5,
                    "text-halo-blur": 0.5,
                    "text-color": "hsl(220, 1%, 48%)"
                }
            },
            {
                "id": "airport-label",
                "type": "symbol",
                "metadata": {
                    "mapbox:featureComponent": "transit",
                    "mapbox:group": "Transit, transit-labels"
                },
                "source": "composite",
                "source-layer": "airport_label",
                "minzoom": 8,
                "filter": [
                    "all",
                    [
                        "match",
                        ["get", "class"],
                        [
                            "military",
                            "civil",
                            "disputed_military",
                            "disputed_civil"
                        ],
                        ["match", ["get", "worldview"], ["all", "US"], true, false],
                        false
                    ],
                    [
                        "step",
                        ["pitch"],
                        true,
                        50,
                        ["<", ["distance-from-center"], 3],
                        60,
                        ["<", ["distance-from-center"], 4],
                        70,
                        ["<", ["distance-from-center"], 5]
                    ]
                ],
                "layout": {
                    "text-line-height": 1.1,
                    "text-size": ["step", ["get", "sizerank"], 18, 9, 12],
                    "icon-image": "",
                    "text-font": ["Manrope Medium", "Arial Unicode MS Regular"],
                    "text-offset": [0, 0],
                    "text-rotation-alignment": "viewport",
                    "text-anchor": "top",
                    "text-field": [
                        "step",
                        ["get", "sizerank"],
                        [
                            "case",
                            ["has", "ref"],
                            [
                                "concat",
                                ["get", "ref"],
                                "",
                                ["coalesce", ["get", "name_en"], ["get", "name"]]
                            ],
                            ["coalesce", ["get", "name_en"], ["get", "name"]]
                        ],
                        15,
                        ["get", "ref"]
                    ],
                    "text-letter-spacing": 0.01,
                    "text-max-width": 9
                },
                "paint": {
                    "text-color": "hsl(220, 1%, 49%)",
                    "text-halo-color": "hsl(220, 0%, 100%)",
                    "text-halo-width": 1
                }
            },
            {
                "id": "settlement-subdivision-label",
                "type": "symbol",
                "metadata": {
                    "mapbox:featureComponent": "place-labels",
                    "mapbox:group": "Place labels, place-labels"
                },
                "source": "composite",
                "source-layer": "place_label",
                "minzoom": 10,
                "maxzoom": 15,
                "filter": [
                    "all",
                    [
                        "match",
                        ["get", "class"],
                        [
                            "settlement_subdivision",
                            "disputed_settlement_subdivision"
                        ],
                        ["match", ["get", "worldview"], ["all", "US"], true, false],
                        false
                    ],
                    ["<=", ["get", "filterrank"], 3],
                    [
                        "step",
                        ["pitch"],
                        true,
                        50,
                        ["<", ["distance-from-center"], 3],
                        60,
                        ["<", ["distance-from-center"], 4],
                        70,
                        ["<", ["distance-from-center"], 5]
                    ]
                ],
                "layout": {
                    "text-field": ["coalesce", ["get", "name_en"], ["get", "name"]],
                    "text-transform": "uppercase",
                    "text-font": ["Manrope Regular", "Arial Unicode MS Regular"],
                    "text-letter-spacing": [
                        "match",
                        ["get", "type"],
                        "suburb",
                        0.15,
                        0.05
                    ],
                    "text-max-width": 7,
                    "text-padding": 3,
                    "text-size": [
                        "interpolate",
                        ["cubic-bezier", 0.5, 0, 1, 1],
                        ["zoom"],
                        11,
                        ["match", ["get", "type"], "suburb", 11, 10.5],
                        15,
                        ["match", ["get", "type"], "suburb", 15, 14]
                    ]
                },
                "paint": {
                    "text-halo-color": "hsl(220, 0%, 100%)",
                    "text-halo-width": 1,
                    "text-color": "hsl(220, 1%, 69%)",
                    "text-halo-blur": 0.5
                }
            },
            {
                "id": "settlement-minor-label",
                "type": "symbol",
                "metadata": {
                    "mapbox:featureComponent": "place-labels",
                    "mapbox:group": "Place labels, place-labels"
                },
                "source": "composite",
                "source-layer": "place_label",
                "minzoom": 2,
                "maxzoom": 13,
                "filter": [
                    "all",
                    ["<=", ["get", "filterrank"], 2],
                    [
                        "match",
                        ["get", "class"],
                        ["settlement", "disputed_settlement"],
                        ["match", ["get", "worldview"], ["all", "US"], true, false],
                        false
                    ],
                    [
                        "step",
                        ["zoom"],
                        [">", ["get", "symbolrank"], 6],
                        4,
                        [">=", ["get", "symbolrank"], 7],
                        6,
                        [">=", ["get", "symbolrank"], 8],
                        7,
                        [">=", ["get", "symbolrank"], 10],
                        10,
                        [">=", ["get", "symbolrank"], 11],
                        11,
                        [">=", ["get", "symbolrank"], 13],
                        12,
                        [">=", ["get", "symbolrank"], 15]
                    ],
                    [
                        "step",
                        ["pitch"],
                        true,
                        50,
                        ["<", ["distance-from-center"], 3],
                        60,
                        ["<", ["distance-from-center"], 4],
                        70,
                        ["<", ["distance-from-center"], 5]
                    ]
                ],
                "layout": {
                    "text-line-height": 1.1,
                    "text-size": [
                        "interpolate",
                        ["cubic-bezier", 0.2, 0, 0.9, 1],
                        ["zoom"],
                        3,
                        ["step", ["get", "symbolrank"], 11, 9, 10],
                        6,
                        ["step", ["get", "symbolrank"], 14, 9, 12, 12, 10],
                        8,
                        ["step", ["get", "symbolrank"], 16, 9, 14, 12, 12, 15, 10],
                        13,
                        ["step", ["get", "symbolrank"], 22, 9, 20, 12, 16, 15, 14]
                    ],
                    "text-radial-offset": [
                        "step",
                        ["zoom"],
                        ["match", ["get", "capital"], 2, 0.6, 0.55],
                        8,
                        0
                    ],
                    "symbol-sort-key": ["get", "symbolrank"],
                    "icon-image": "",
                    "text-font": ["Manrope Regular", "Arial Unicode MS Regular"],
                    "text-anchor": ["step", ["zoom"], "center", 8, "center"],
                    "text-field": ["coalesce", ["get", "name_en"], ["get", "name"]],
                    "text-max-width": 7
                },
                "paint": {
                    "text-color": [
                        "step",
                        ["get", "symbolrank"],
                        "hsl(220, 1%, 49%)",
                        11,
                        "hsl(220, 1%, 62%)",
                        16,
                        "hsl(220, 1%, 71%)"
                    ],
                    "text-halo-color": "hsl(220, 0%, 100%)",
                    "text-halo-width": 1,
                    "icon-opacity": ["step", ["zoom"], 1, 8, 0],
                    "text-halo-blur": 1
                }
            },
            {
                "id": "settlement-major-label",
                "type": "symbol",
                "metadata": {
                    "mapbox:featureComponent": "place-labels",
                    "mapbox:group": "Place labels, place-labels"
                },
                "source": "composite",
                "source-layer": "place_label",
                "minzoom": 2,
                "maxzoom": 15,
                "filter": [
                    "all",
                    ["<=", ["get", "filterrank"], 2],
                    [
                        "match",
                        ["get", "class"],
                        ["settlement", "disputed_settlement"],
                        ["match", ["get", "worldview"], ["all", "US"], true, false],
                        false
                    ],
                    [
                        "step",
                        ["zoom"],
                        false,
                        2,
                        ["<=", ["get", "symbolrank"], 6],
                        4,
                        ["<", ["get", "symbolrank"], 7],
                        6,
                        ["<", ["get", "symbolrank"], 8],
                        7,
                        ["<", ["get", "symbolrank"], 10],
                        10,
                        ["<", ["get", "symbolrank"], 11],
                        11,
                        ["<", ["get", "symbolrank"], 13],
                        12,
                        ["<", ["get", "symbolrank"], 15],
                        13,
                        [">=", ["get", "symbolrank"], 11],
                        14,
                        [">=", ["get", "symbolrank"], 15]
                    ],
                    [
                        "step",
                        ["pitch"],
                        true,
                        50,
                        ["<", ["distance-from-center"], 3],
                        60,
                        ["<", ["distance-from-center"], 4],
                        70,
                        ["<", ["distance-from-center"], 5]
                    ]
                ],
                "layout": {
                    "text-line-height": 1.1,
                    "text-size": [
                        "interpolate",
                        ["cubic-bezier", 0.2, 0, 0.9, 1],
                        ["zoom"],
                        3,
                        ["step", ["get", "symbolrank"], 13, 6, 11],
                        6,
                        ["step", ["get", "symbolrank"], 18, 6, 16, 7, 14],
                        8,
                        ["step", ["get", "symbolrank"], 20, 9, 16, 10, 14],
                        15,
                        ["step", ["get", "symbolrank"], 24, 9, 20, 12, 16, 15, 14]
                    ],
                    "text-radial-offset": [
                        "step",
                        ["zoom"],
                        ["match", ["get", "capital"], 2, 0.6, 0.55],
                        8,
                        0
                    ],
                    "symbol-sort-key": ["get", "symbolrank"],
                    "icon-image": "",
                    "text-font": ["Manrope Medium", "Arial Unicode MS Regular"],
                    "text-anchor": ["step", ["zoom"], "center", 8, "center"],
                    "text-field": ["coalesce", ["get", "name_en"], ["get", "name"]],
                    "text-max-width": 7
                },
                "paint": {
                    "text-color": [
                        "step",
                        ["get", "symbolrank"],
                        "hsl(220, 1%, 49%)",
                        11,
                        "hsl(220, 1%, 62%)",
                        16,
                        "hsl(220, 1%, 71%)"
                    ],
                    "text-halo-color": "hsl(220, 0%, 100%)",
                    "text-halo-width": 1,
                    "icon-opacity": ["step", ["zoom"], 1, 8, 0],
                    "text-halo-blur": 1
                }
            },
            {
                "id": "state-label",
                "type": "symbol",
                "metadata": {
                    "mapbox:featureComponent": "place-labels",
                    "mapbox:group": "Place labels, place-labels"
                },
                "source": "composite",
                "source-layer": "place_label",
                "minzoom": 3,
                "maxzoom": 9,
                "filter": [
                    "all",
                    [
                        "match",
                        ["get", "class"],
                        ["state", "disputed_state"],
                        ["match", ["get", "worldview"], ["all", "US"], true, false],
                        false
                    ],
                    [
                        "step",
                        ["pitch"],
                        true,
                        50,
                        ["<", ["distance-from-center"], 3],
                        60,
                        ["<", ["distance-from-center"], 4],
                        70,
                        ["<", ["distance-from-center"], 5]
                    ]
                ],
                "layout": {
                    "text-size": [
                        "interpolate",
                        ["cubic-bezier", 0.85, 0.7, 0.65, 1],
                        ["zoom"],
                        4,
                        ["step", ["get", "symbolrank"], 9, 6, 8, 7, 7],
                        9,
                        ["step", ["get", "symbolrank"], 21, 6, 16, 7, 14]
                    ],
                    "text-transform": "uppercase",
                    "text-font": ["Manrope Bold", "Arial Unicode MS Bold"],
                    "text-field": ["coalesce", ["get", "name_en"], ["get", "name"]],
                    "text-letter-spacing": 0.15,
                    "text-max-width": 6
                },
                "paint": {
                    "text-color": "hsl(220, 1%, 49%)",
                    "text-halo-color": "hsl(220, 0%, 100%)",
                    "text-halo-width": 1,
                    "text-opacity": 0.5
                }
            },
            {
                "id": "country-label",
                "type": "symbol",
                "metadata": {
                    "mapbox:featureComponent": "place-labels",
                    "mapbox:group": "Place labels, place-labels"
                },
                "source": "composite",
                "source-layer": "place_label",
                "minzoom": 1,
                "maxzoom": 10,
                "filter": [
                    "all",
                    [
                        "match",
                        ["get", "class"],
                        ["country", "disputed_country"],
                        ["match", ["get", "worldview"], ["all", "US"], true, false],
                        false
                    ],
                    [
                        "step",
                        ["pitch"],
                        true,
                        50,
                        ["<", ["distance-from-center"], 3],
                        60,
                        ["<", ["distance-from-center"], 4],
                        70,
                        ["<", ["distance-from-center"], 5]
                    ]
                ],
                "layout": {
                    "icon-image": "",
                    "text-field": ["coalesce", ["get", "name_en"], ["get", "name"]],
                    "text-line-height": 1.1,
                    "text-max-width": 6,
                    "text-font": ["Manrope Medium", "Arial Unicode MS Regular"],
                    "text-radial-offset": ["step", ["zoom"], 0.6, 8, 0],
                    "text-size": [
                        "interpolate",
                        ["cubic-bezier", 0.2, 0, 0.7, 1],
                        ["zoom"],
                        1,
                        ["step", ["get", "symbolrank"], 11, 4, 9, 5, 8],
                        9,
                        ["step", ["get", "symbolrank"], 22, 4, 19, 5, 17]
                    ]
                },
                "paint": {
                    "icon-opacity": [
                        "step",
                        ["zoom"],
                        ["case", ["has", "text_anchor"], 1, 0],
                        7,
                        0
                    ],
                    "text-color": "hsl(220, 1%, 49%)",
                    "text-halo-color": "hsl(220, 0%, 100%)",
                    "text-halo-width": 1.25
                }
            },
            {
                "id": "continent-label",
                "type": "symbol",
                "metadata": {
                    "mapbox:featureComponent": "place-labels",
                    "mapbox:group": "Place labels, place-labels"
                },
                "source": "composite",
                "source-layer": "natural_label",
                "minzoom": 0.75,
                "maxzoom": 3,
                "filter": ["==", ["get", "class"], "continent"],
                "layout": {
                    "text-field": ["coalesce", ["get", "name_en"], ["get", "name"]],
                    "text-line-height": 1.1,
                    "text-max-width": 6,
                    "text-font": ["Manrope Medium", "Arial Unicode MS Regular"],
                    "text-size": [
                        "interpolate",
                        ["exponential", 0.5],
                        ["zoom"],
                        0,
                        10,
                        2.5,
                        15
                    ],
                    "text-transform": "uppercase",
                    "text-letter-spacing": 0.05
                },
                "paint": {
                    "text-color": "hsl(220, 1%, 49%)",
                    "text-halo-color": "hsl(220, 0%, 100%)",
                    "text-halo-width": 1.5,
                    "text-opacity": [
                        "interpolate",
                        ["linear"],
                        ["zoom"],
                        0,
                        0.8,
                        1.5,
                        0.5,
                        2.5,
                        0
                    ]
                }
            }
        ],
        "created": "2023-08-28T07:11:43.679Z",
        "modified": "2023-09-20T17:53:57.267Z",
        "id": "cllujjy2n00ak01r7abqo8tcb",
        "owner": "vtremsin",
        "visibility": "private",
        "protected": false,
        "draft": false
    }
    """
    
    var pinImageView: UIImageView!
    var mapView: MapView!
    var selectedProperty: Property!
    var selectedDetector: Detector!
    var zoomLevel: CGFloat!
    var annotationManager: PointAnnotationManager!
    var isShowingPin: Bool = false
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(mapView)
        self.pinImageView.frame = CGRectMake(self.view.center.x - 30, self.view.center.y - 210, 60, 69)
        self.view.addSubview(pinImageView)
    }
}
