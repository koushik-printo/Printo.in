(function (g, j, h, d) {
	var f;
	if (g.Uint8Array && g.ArrayBuffer && !XMLHttpRequest.prototype.sendAsBinary) {
		XMLHttpRequest.prototype.sendAsBinary = function (o) {
			var m = new Uint8Array(o.length);
			for (var n = 0; n < o.length; n++) {
				m[n] = (o.charCodeAt(n) & 255)
			}
			this.send(m.buffer)
		}
	}
	function l(n, o) {
		var m;
		if ("FileReader" in g) {
			m = new FileReader();
			m.readAsDataURL(n);
			m.onload = function () {
				o(m.result)
			}
		} else {
			return o(n.getAsDataURL())
		}
	}
	function k(n, o) {
		var m;
		if ("FileReader" in g) {
			m = new FileReader();
			m.readAsBinaryString(n);
			m.onload = function () {
				o(m.result)
			}
		} else {
			return o(n.getAsBinary())
		}
	}
	function c(q, o, r, t) {
		var n, p, m, s;
		l(q, function (u) {
			n = j.createElement("canvas");
			n.style.display = "none";
			j.body.appendChild(n);
			p = n.getContext("2d");
			m = new Image();
			m.onerror = m.onabort = function () {
				t({
					success: false
				})
			};
			m.onload = function () {
				var z, v, x, w, y;
				if (!o.width) {
					o.width = m.width
				}
				if (!o.height) {
					o.height = m.height
				}
				s = Math.min(o.width / m.width, o.height / m.height);
				if (s < 1 || (s === 1 && r === "image/jpeg")) {
					z = Math.round(m.width * s);
					v = Math.round(m.height * s);
					n.width = z;
					n.height = v;
					p.drawImage(m, 0, 0, z, v);
					if (r === "image/jpeg") {
						w = new e(atob(u.substring(u.indexOf("base64,") + 7)));
						if (w.headers && w.headers.length) {
							y = new a();
							if (y.init(w.get("exif")[0])) {
								y.setExif("PixelXDimension", z);
								y.setExif("PixelYDimension", v);
								w.set("exif", y.getBinary())
							}
						}
						if (o.quality) {
							try {
								u = n.toDataURL(r, o.quality / 100)
							} catch(A) {
								u = n.toDataURL(r)
							}
						}
					} else {
						u = n.toDataURL(r)
					}
					u = u.substring(u.indexOf("base64,") + 7);
					u = atob(u);
					if (w.headers && w.headers.length) {
						u = w.restore(u);
						w.purge()
					}
					n.parentNode.removeChild(n);
					t({
						success: true,
						data: u
					})
				} else {
					t({
						success: false
					})
				}
			};
			m.src = u
		})
	}
	h.runtimes.Html5 = h.addRuntime("html5", {
		getFeatures: function () {
			var r, n, q, o, m, p = g;
			n = q = o = m = false;
			if (p.XMLHttpRequest) {
				r = new XMLHttpRequest();
				q = !!r.upload;
				n = !!(r.sendAsBinary || r.upload)
			}
			if (n) {
				o = !!(File && (File.prototype.getAsDataURL || p.FileReader) && r.sendAsBinary);
				m = !!(File && File.prototype.slice)
			}
			f = navigator.userAgent.indexOf("Safari") > 0 && navigator.vendor.indexOf("Apple") !== -1;
			return {
				html5: n,
				dragdrop: p.mozInnerScreenX !== d || m || f,
				jpgresize: o,
				pngresize: o,
				multipart: o || !!p.FileReader || !!p.FormData,
				progress: q,
				chunks: m || o,
				canOpenDialog: navigator.userAgent.indexOf("WebKit") !== -1
			}
		},
		init: function (p, q) {
			var m = {},
			n;
			function o(v) {
				var t, s, u = [],
				w,
				r = {};
				for (s = 0; s < v.length; s++) {
					t = v[s];
					if (r[t.name]) {
						continue
					}
					r[t.name] = true;
					w = h.guid();
					m[w] = t;
					//u.push(new h.File(w, t.fileName, t.fileSize || t.size))
					u.push(new h.File(w,t.name,t.size) || t.size)
				}
				if (u.length) {
					p.trigger("FilesAdded", u)
				}
			}
			n = this.getFeatures();
			if (!n.html5) {
				q({
					success: false
				});
				return
			}
			p.bind("Init", function (v) {
				var F, E, B = [],
				u,
				C,
				s = v.settings.filters,
				t,
				A,
				r = j.body,
				D;
				F = j.createElement("div");
				F.id = v.id + "_html5_container";
				h.extend(F.style, {
					position: "absolute",
					background: p.settings.shim_bgcolor || "transparent",
					width: "100px",
					height: "100px",
					overflow: "hidden",
					zIndex: 99999,
					opacity: p.settings.shim_bgcolor ? "": 0
				});
				F.className = "plupload html5";
				if (p.settings.container) {
					r = j.getElementById(p.settings.container);
					if (h.getStyle(r, "position") === "static") {
						r.style.position = "relative"
					}
				}
				r.appendChild(F);
				no_type_restriction: for (u = 0; u < s.length; u++) {
					t = s[u].extensions.split(/,/);
					for (C = 0; C < t.length; C++) {
						if (t[C] === "*") {
							B = [];
							break no_type_restriction
						}
						A = h.mimeTypes[t[C]];
						if (A) {
							B.push(A)
						}
					}
				}
				F.innerHTML = '<input id="' + p.id + '_html5" style="width:100%;height:100%;font-size:99px" type="file" accept="' + B.join(",") + '" ' + (p.settings.multi_selection ? 'multiple="multiple"': "") + " />";
				D = j.getElementById(p.id + "_html5");
				D.onchange = function () {
					o(this.files);
					this.value = ""
				};
				E = j.getElementById(v.settings.browse_button);
				if (E) {
					var x = v.settings.browse_button_hover,
					z = v.settings.browse_button_active,
					w = v.features.canOpenDialog ? E: F;
					if (x) {
						h.addEvent(w, "mouseover", function () {
							h.addClass(E, x)
						},
						v.id);
						h.addEvent(w, "mouseout", function () {
							h.removeClass(E, x)
						},
						v.id)
					}
					if (z) {
						h.addEvent(w, "mousedown", function () {
							h.addClass(E, z)
						},
						v.id);
						h.addEvent(j.body, "mouseup", function () {
							h.removeClass(E, z)
						},
						v.id)
					}
					if (v.features.canOpenDialog) {
						h.addEvent(E, "click", function (y) {
							j.getElementById(v.id + "_html5").click();
							y.preventDefault()
						},
						v.id)
					}
				}
			});
			p.bind("PostInit", function () {
				var r = j.getElementById(p.settings.drop_element);
				if (r) {
					if (f) {
						h.addEvent(r, "dragenter", function (v) {
							var u, s, t;
							u = j.getElementById(p.id + "_drop");
							if (!u) {
								u = j.createElement("input");
								u.setAttribute("type", "file");
								u.setAttribute("id", p.id + "_drop");
								u.setAttribute("multiple", "multiple");
								h.addEvent(u, "change", function () {
									o(this.files);
									h.removeEvent(u, "change", p.id);
									u.parentNode.removeChild(u)
								},
								p.id);
								r.appendChild(u)
							}
							s = h.getPos(r, j.getElementById(p.settings.container));
							t = h.getSize(r);
							if (h.getStyle(r, "position") === "static") {
								h.extend(r.style, {
									position: "relative"
								})
							}
							h.extend(u.style, {
								position: "absolute",
								display: "block",
								top: 0,
								left: 0,
								width: t.w + "px",
								height: t.h + "px",
								opacity: 0
							})
						},
						p.id);
						return
					}
					h.addEvent(r, "dragover", function (s) {
						s.preventDefault()
					},
					p.id);
					h.addEvent(r, "drop", function (t) {
						var s = t.dataTransfer;
						if (s && s.files) {
							o(s.files)
						}
						t.preventDefault()
					},
					p.id)
				}
			});
			p.bind("Refresh", function (r) {
				var s, u, v, w, t;
				s = j.getElementById(p.settings.browse_button);
				if (s) {
					u = h.getPos(s, j.getElementById(r.settings.container));
					v = h.getSize(s);
					w = j.getElementById(p.id + "_html5_container");
					h.extend(w.style, {
						top: u.y + "px",
						left: u.x + "px",
						width: v.w + "px",
						height: v.h + "px"
					});
					if (p.features.canOpenDialog) {
						t = parseInt(s.parentNode.style.zIndex, 10);
						if (isNaN(t)) {
							t = 0
						}
						h.extend(s.style, {
							zIndex: t
						});
						if (h.getStyle(s, "position") === "static") {
							h.extend(s.style, {
								position: "relative"
							})
						}
						h.extend(w.style, {
							zIndex: t - 1
						})
					}
				}
			});
			p.bind("UploadFile", function (r, t) {
				var u = r.settings,
				w, s;
				function v(x) {
					var A = 0,
					z = 0;
					function y() {
						var H = x,
						O, P, K, L, M = 0,
						D = "----pluploadboundary" + h.guid(),
						G,
						I,
						E,
						F = "--",
						N = "\r\n",
						J = "",
						C,
						B = r.settings.url;
						if (t.status == h.DONE || t.status == h.FAILED || r.state == h.STOPPED) {
							return
						}
						L = {
							name: t.target_name || t.name
						};
						if (u.chunk_size && n.chunks) {
							G = u.chunk_size;
							K = Math.ceil(t.size / G);
							I = Math.min(G, t.size - (A * G));
							if (typeof(x) == "string") {
								H = x.substring(A * G, A * G + I)
							} else {
								H = x.slice(A * G, I)
							}
							L.chunk = A;
							L.chunks = K
						} else {
							I = t.size
						}
						O = new XMLHttpRequest();
						P = O.upload;
						if (P) {
							P.onprogress = function (Q) {
								t.loaded = Math.min(t.size, z + Q.loaded - M);
								r.trigger("UploadProgress", t)
							}
						}
						if (!r.settings.multipart || !n.multipart) {
							B = h.buildUrl(r.settings.url, L)
						} else {
							L.name = t.target_name || t.name
						}
						O.open("post", B, true);
						O.onreadystatechange = function () {
							var Q, S;
							if (O.readyState == 4) {
								try {
									Q = O.status
								} catch(R) {
									Q = 0
								}
								if (Q >= 400) {
									r.trigger("Error", {
										code: h.HTTP_ERROR,
										message: h.translate("HTTP Error."),
										file: t,
										status: Q
									})
								} else {
									if (K) {
										S = {
											chunk: A,
											chunks: K,
											response: O.responseText,
											status: Q
										};
										r.trigger("ChunkUploaded", t, S);
										z += I;
										if (S.cancelled) {
											t.status = h.FAILED;
											return
										}
										t.loaded = Math.min(t.size, (A + 1) * G)
									} else {
										t.loaded = t.size
									}
									r.trigger("UploadProgress", t);
									if (!K || ++A >= K) {
										t.status = h.DONE;
										r.trigger("FileUploaded", t, {
											response: O.responseText,
											status: Q
										});
										w = x = m[t.id] = null
									} else {
										y()
									}
								}
								O = H = E = J = null
							}
						};
						h.each(r.settings.headers, function (R, Q) {
							O.setRequestHeader(Q, R)
						});
						if (r.settings.multipart && n.multipart) {
							if (!O.sendAsBinary) {
								E = new FormData();
								h.each(h.extend(L, r.settings.multipart_params), function (R, Q) {
									E.append(Q, R)
								});
								E.append(r.settings.file_data_name, H);
								O.send(E);
								return
							}
							O.setRequestHeader("Content-Type", "multipart/form-data; boundary=" + D);
							h.each(h.extend(L, r.settings.multipart_params), function (R, Q) {
								J += F + D + N + 'Content-Disposition: form-data; name="' + Q + '"' + N + N;
								J += unescape(encodeURIComponent(R)) + N
							});
							C = h.mimeTypes[t.name.replace(/^.+\.([^.]+)/, "$1").toLowerCase()] || "application/octet-stream";
							J += F + D + N + 'Content-Disposition: form-data; name="' + r.settings.file_data_name + '"; filename="' + unescape(encodeURIComponent(t.name)) + '"' + N + "Content-Type: " + C + N + N + H + N + F + D + F + N;
							M = J.length - H.length;
							H = J
						} else {
							O.setRequestHeader("Content-Type", "application/octet-stream")
						}
						if (O.sendAsBinary) {
							O.sendAsBinary(H)
						} else {
							O.send(H)
						}
					}
					y()
				}
				w = m[t.id];
				s = r.settings.resize;
				if (n.jpgresize) {
					if (s && /\.(png|jpg|jpeg)$/i.test(t.name)) {
						c(w, s, /\.png$/i.test(t.name) ? "image/png": "image/jpeg", function (x) {
							if (x.success) {
								t.size = x.data.length;
								v(x.data)
							} else {
								k(w, v)
							}
						})
					} else {
						k(w, v)
					}
				} else {
					v(w)
				}
			});
			p.bind("Destroy", function (r) {
				var t, u, s = j.body,
				v = {
					inputContainer: r.id + "_html5_container",
					inputFile: r.id + "_html5",
					browseButton: r.settings.browse_button,
					dropElm: r.settings.drop_element
				};
				for (t in v) {
					u = j.getElementById(v[t]);
					if (u) {
						h.removeAllEvents(u, r.id)
					}
				}
				h.removeAllEvents(j.body, r.id);
				if (r.settings.container) {
					s = j.getElementById(r.settings.container)
				}
				s.removeChild(j.getElementById(v.inputContainer))
			});
			q({
				success: true
			})
		}
	});
	function b() {
		var p = false,
		n;
		function q(s, u) {
			var r = p ? 0 : -8 * (u - 1),
			v = 0,
			t;
			for (t = 0; t < u; t++) {
				v |= (n.charCodeAt(s + t) << Math.abs(r + t * 8))
			}
			return v
		}
		function m(t, r, s) {
			var s = arguments.length === 3 ? s: n.length - r - 1;
			n = n.substr(0, r) + t + n.substr(s + r)
		}
		function o(s, t, v) {
			var w = "",
			r = p ? 0 : -8 * (v - 1),
			u;
			for (u = 0; u < v; u++) {
				w += String.fromCharCode((t >> Math.abs(r + u * 8)) & 255)
			}
			m(w, s, v)
		}
		return {
			II: function (r) {
				if (r === d) {
					return p
				} else {
					p = r
				}
			},
			init: function (r) {
				p = false;
				n = r
			},
			SEGMENT: function (r, t, s) {
				switch (arguments.length) {
				case 1:
					return n.substr(r, n.length - r - 1);
				case 2:
					return n.substr(r, t);
				case 3:
					m(s, r, t);
					break;
				default:
					return n
				}
			},
			BYTE: function (r) {
				return q(r, 1)
			},
			SHORT: function (r) {
				return q(r, 2)
			},
			LONG: function (r, s) {
				if (s === d) {
					return q(r, 4)
				} else {
					o(r, s, 4)
				}
			},
			SLONG: function (r) {
				var s = q(r, 4);
				return (s > 2147483647 ? s - 4294967296 : s)
			},
			STRING: function (r, s) {
				var t = "";
				for (s += r; r < s; r++) {
					t += String.fromCharCode(q(r, 1))
				}
				return t
			}
		}
	}
	function e(r) {
		var t = {
			65505 : {
				app: "EXIF",
				name: "APP1",
				signature: "Exif\0"
			},
			65506 : {
				app: "ICC",
				name: "APP2",
				signature: "ICC_PROFILE\0"
			},
			65517 : {
				app: "IPTC",
				name: "APP13",
				signature: "Photoshop 3.0\0"
			}
		},
		s = [],
		q,
		m,
		o = d,
		p = 0,
		n;
		q = new b();
		q.init(r);
		if (q.SHORT(0) !== 65496) {
			return
		}
		m = 2;
		n = Math.min(1048576, r.length);
		while (m <= n) {
			o = q.SHORT(m);
			if (o >= 65488 && o <= 65495) {
				m += 2;
				continue
			}
			if (o === 65498 || o === 65497) {
				break
			}
			p = q.SHORT(m + 2) + 2;
			if (t[o] && q.STRING(m + 4, t[o].signature.length) === t[o].signature) {
				s.push({
					hex: o,
					app: t[o].app.toUpperCase(),
					name: t[o].name.toUpperCase(),
					start: m,
					length: p,
					segment: q.SEGMENT(m, p)
				})
			}
			m += p
		}
		q.init(null);
		return {
			headers: s,
			restore: function (w) {
				q.init(w);
				if (q.SHORT(0) !== 65496) {
					return false
				}
				m = q.SHORT(2) == 65504 ? 4 + q.SHORT(4) : 2;
				for (var v = 0, u = s.length; v < u; v++) {
					q.SEGMENT(m, 0, s[v].segment);
					m += s[v].length
				}
				return q.SEGMENT()
			},
			get: function (w) {
				var x = [];
				for (var v = 0, u = s.length; v < u; v++) {
					if (s[v].app === w.toUpperCase()) {
						x.push(s[v].segment)
					}
				}
				return x
			},
			set: function (x, w) {
				var y = [];
				if (typeof(w) === "string") {
					y.push(w)
				} else {
					y = w
				}
				for (var v = ii = 0, u = s.length; v < u; v++) {
					if (s[v].app === x.toUpperCase()) {
						s[v].segment = y[ii];
						s[v].length = y[ii].length;
						ii++
					}
					if (ii >= y.length) {
						break
					}
				}
			},
			purge: function () {
				s = [];
				q.init(null)
			}
		}
	}
	function a() {
		var p, m, n = {},
		s;
		p = new b();
		m = {
			tiff: {
				274 : "Orientation",
				34665 : "ExifIFDPointer",
				34853 : "GPSInfoIFDPointer"
			},
			exif: {
				36864 : "ExifVersion",
				40961 : "ColorSpace",
				40962 : "PixelXDimension",
				40963 : "PixelYDimension",
				36867 : "DateTimeOriginal",
				33434 : "ExposureTime",
				33437 : "FNumber",
				34855 : "ISOSpeedRatings",
				37377 : "ShutterSpeedValue",
				37378 : "ApertureValue",
				37383 : "MeteringMode",
				37384 : "LightSource",
				37385 : "Flash",
				41986 : "ExposureMode",
				41987 : "WhiteBalance",
				41990 : "SceneCaptureType",
				41988 : "DigitalZoomRatio",
				41992 : "Contrast",
				41993 : "Saturation",
				41994 : "Sharpness"
			},
			gps: {
				0 : "GPSVersionID",
				1 : "GPSLatitudeRef",
				2 : "GPSLatitude",
				3 : "GPSLongitudeRef",
				4 : "GPSLongitude"
			}
		};
		s = {
			ColorSpace: {
				1 : "sRGB",
				0 : "Uncalibrated"
			},
			MeteringMode: {
				0 : "Unknown",
				1 : "Average",
				2 : "CenterWeightedAverage",
				3 : "Spot",
				4 : "MultiSpot",
				5 : "Pattern",
				6 : "Partial",
				255 : "Other"
			},
			LightSource: {
				1 : "Daylight",
				2 : "Fliorescent",
				3 : "Tungsten",
				4 : "Flash",
				9 : "Fine weather",
				10 : "Cloudy weather",
				11 : "Shade",
				12 : "Daylight fluorescent (D 5700 - 7100K)",
				13 : "Day white fluorescent (N 4600 -5400K)",
				14 : "Cool white fluorescent (W 3900 - 4500K)",
				15 : "White fluorescent (WW 3200 - 3700K)",
				17 : "Standard light A",
				18 : "Standard light B",
				19 : "Standard light C",
				20 : "D55",
				21 : "D65",
				22 : "D75",
				23 : "D50",
				24 : "ISO studio tungsten",
				255 : "Other"
			},
			Flash: {
				0 : "Flash did not fire.",
				1 : "Flash fired.",
				5 : "Strobe return light not detected.",
				7 : "Strobe return light detected.",
				9 : "Flash fired, compulsory flash mode",
				13 : "Flash fired, compulsory flash mode, return light not detected",
				15 : "Flash fired, compulsory flash mode, return light detected",
				16 : "Flash did not fire, compulsory flash mode",
				24 : "Flash did not fire, auto mode",
				25 : "Flash fired, auto mode",
				29 : "Flash fired, auto mode, return light not detected",
				31 : "Flash fired, auto mode, return light detected",
				32 : "No flash function",
				65 : "Flash fired, red-eye reduction mode",
				69 : "Flash fired, red-eye reduction mode, return light not detected",
				71 : "Flash fired, red-eye reduction mode, return light detected",
				73 : "Flash fired, compulsory flash mode, red-eye reduction mode",
				77 : "Flash fired, compulsory flash mode, red-eye reduction mode, return light not detected",
				79 : "Flash fired, compulsory flash mode, red-eye reduction mode, return light detected",
				89 : "Flash fired, auto mode, red-eye reduction mode",
				93 : "Flash fired, auto mode, return light not detected, red-eye reduction mode",
				95 : "Flash fired, auto mode, return light detected, red-eye reduction mode"
			},
			ExposureMode: {
				0 : "Auto exposure",
				1 : "Manual exposure",
				2 : "Auto bracket"
			},
			WhiteBalance: {
				0 : "Auto white balance",
				1 : "Manual white balance"
			},
			SceneCaptureType: {
				0 : "Standard",
				1 : "Landscape",
				2 : "Portrait",
				3 : "Night scene"
			},
			Contrast: {
				0 : "Normal",
				1 : "Soft",
				2 : "Hard"
			},
			Saturation: {
				0 : "Normal",
				1 : "Low saturation",
				2 : "High saturation"
			},
			Sharpness: {
				0 : "Normal",
				1 : "Soft",
				2 : "Hard"
			},
			GPSLatitudeRef: {
				N: "North latitude",
				S: "South latitude"
			},
			GPSLongitudeRef: {
				E: "East longitude",
				W: "West longitude"
			}
		};
		function o(t, B) {
			var v = p.SHORT(t),
			y,
			E,
			F,
			A,
			z,
			u,
			w,
			C,
			D = [],
			x = {};
			for (y = 0; y < v; y++) {
				w = u = t + 12 * y + 2;
				F = B[p.SHORT(w)];
				if (F === d) {
					continue
				}
				A = p.SHORT(w += 2);
				z = p.LONG(w += 2);
				w += 4;
				D = [];

				switch (A) {
				case 1:
				case 7:
					if (z > 4) {
						w = p.LONG(w) + n.tiffHeader
					}
					for (E = 0; E < z; E++) {
						D[E] = p.BYTE(w + E)
					}
					break;
				case 2:
					if (z > 4) {
						w = p.LONG(w) + n.tiffHeader
					}
					x[F] = p.STRING(w, z - 1);
					continue;
				case 3:
					if (z > 2) {
						w = p.LONG(w) + n.tiffHeader
					}
					for (E = 0; E < z; E++) {
						D[E] = p.SHORT(w + E * 2)
					}
					break;
				case 4:
					if (z > 1) {
						w = p.LONG(w) + n.tiffHeader
					}
					for (E = 0; E < z; E++) {
						D[E] = p.LONG(w + E * 4)
					}
					break;
				case 5:
					w = p.LONG(w) + n.tiffHeader;
					for (E = 0; E < z; E++) {
						D[E] = p.LONG(w + E * 4) / p.LONG(w + E * 4 + 4)
					}
					break;
				case 9:
					w = p.LONG(w) + n.tiffHeader;
					for (E = 0; E < z; E++) {
						D[E] = p.SLONG(w + E * 4)
					}
					break;
				case 10:
					w = p.LONG(w) + n.tiffHeader;
					for (E = 0; E < z; E++) {
						D[E] = p.SLONG(w + E * 4) / p.SLONG(w + E * 4 + 4)
					}
					break;
				default:
					continue
				}
				C = (z == 1 ? D[0] : D);
				if (s.hasOwnProperty(F) && typeof C != "object") {
					x[F] = s[F][C]
				} else {
					x[F] = C
				}
			}
			return x
		}
		function r() {
			var u = d,
			t = n.tiffHeader;
			p.II(p.SHORT(t) == 18761);
			if (p.SHORT(t += 2) !== 42) {
				return false
			}
			n.IFD0 = n.tiffHeader + p.LONG(t += 2);
			u = o(n.IFD0, m.tiff);
			n.exifIFD = ("ExifIFDPointer" in u ? n.tiffHeader + u.ExifIFDPointer: d);
			n.gpsIFD = ("GPSInfoIFDPointer" in u ? n.tiffHeader + u.GPSInfoIFDPointer: d);
			return true
		}
		function q(v, t, y) {
			var A, x, w, z = 0;
			if (typeof(t) === "string") {
				var u = m[v.toLowerCase()];
				for (hex in u) {
					if (u[hex] === t) {
						t = hex;
						break
					}
				}
			}
			A = n[v.toLowerCase() + "IFD"];
			x = p.SHORT(A);
			for (i = 0; i < x; i++) {
				w = A + 12 * i + 2;
				if (p.SHORT(w) == t) {
					z = w + 8;
					break
				}
			}
			if (!z) {
				return false
			}
			p.LONG(z, y);
			return true
		}
		return {
			init: function (t) {
				n = {
					tiffHeader: 10
				};
				if (t === d || !t.length) {
					return false
				}
				p.init(t);
				if (p.SHORT(0) === 65505 && p.STRING(4, 5).toUpperCase() === "EXIF\0") {
					return r()
				}
				return false
			},
			EXIF: function () {
				var t;
				t = o(n.exifIFD, m.exif);
				t.ExifVersion = String.fromCharCode(t.ExifVersion[0], t.ExifVersion[1], t.ExifVersion[2], t.ExifVersion[3]);
				return t
			},
			GPS: function () {
				var t;
				t = o(n.gpsIFD, m.gps);
				t.GPSVersionID = t.GPSVersionID.join(".");
				return t
			},
			setExif: function (t, u) {
				if (t !== "PixelXDimension" && t !== "PixelYDimension") {
					return false
				}
				return q("exif", t, u)
			},
			getBinary: function () {
				return p.SEGMENT()
			}
		}
	}
})(window, document, plupload);// JavaScript Document