return {
gravity = { 0, 0, -9.81,},
configuration = {
	axis_front = { 1, 0, 0,},
	axis_right = { 0, -1, 0,},
	axis_up = { 0, 0, 1,},
},
points = {
	{name = "SaCT", body = "Sacrum", point = {-0.051885, 0.000496, -0.076012,},},
	{name = "SaMC", body = "Sacrum", point = {-0.057791, -0.003780, 0.037818,},},
	{name = "SaRSN", body = "Sacrum", point = {-0.023999, -0.039850, 0.043078,},},
	{name = "RPASIS", body = "PelvisR", point = {0.097951, -0.075656, -0.036784,},},
	{name = "RPPSIS", body = "PelvisR", point = {-0.049953, 0.002864, -0.006293,},},
	{name = "RPIT", body = "PelvisR", point = {0.021808, 0.000220, -0.162744,},},
	{name = "LPASIS", body = "PelvisL", point = {0.097951, 0.075656, -0.036784,},},
	{name = "LPPSIS", body = "PelvisL", point = {-0.049953, -0.002864, -0.006293,},},
	{name = "LPIT", body = "PelvisL", point = {0.021808, -0.000220, -0.162744,},},
	{name = "RFmH", body = "FemurR", point = {0.009742, 0.007466, 0.007536,},},
	{name = "RFmGT", body = "FemurR", point = {-0.017302, -0.050417, -0.004401,},},
	{name = "RFmMC", body = "FemurR", point = {-0.052013, 0.005691, -0.383006,},},
	{name = "RFmLNP", body = "FemurR", point = {0.011643, -0.029350, -0.376975,},},
	{name = "RFmLC", body = "FemurR", point = {-0.051216, -0.038462, -0.382771,},},
	{name = "LFmH", body = "FemurL", point = {0.009742, -0.007466, 0.007536,},},
	{name = "LFmGT", body = "FemurL", point = {-0.017302, 0.050417, -0.004401,},},
	{name = "LFmMC", body = "FemurL", point = {-0.052013, -0.005691, -0.383006,},},
	{name = "LFmLNP", body = "FemurL", point = {0.011643, 0.029350, -0.376975,},},
	{name = "LFmLC", body = "FemurL", point = {-0.051216, 0.038462, -0.382771,},},
	{name = "RPaAP", body = "PatellaR", point = {0.000000, 0.000000, 0.000000,},},
	{name = "LPaAP", body = "PatellaL", point = {0.000000, 0.000000, 0.000000,},},
	{name = "RTMC", body = "TibiaR", point = {-0.026550, 0.020472, -0.037718,},},
	{name = "RTLT", body = "TibiaR", point = {0.024144, -0.019334, -0.059872,},},
	{name = "RTMM", body = "TibiaR", point = {-0.016178, 0.025860, -0.363674,},},
	{name = "RTLBE", body = "TibiaR", point = {-0.022207, -0.011216, -0.354653,},},
	{name = "RTLC", body = "TibiaR", point = {-0.022986, -0.028619, -0.050042,},},
	{name = "LTMC", body = "TibiaL", point = {-0.026550, -0.020472, -0.037718,},},
	{name = "LTLT", body = "TibiaL", point = {0.024144, 0.019334, -0.059872,},},
	{name = "LTMM", body = "TibiaL", point = {-0.016178, -0.025860, -0.363674,},},
	{name = "LTLBE", body = "TibiaL", point = {-0.022207, 0.011216, -0.354653,},},
	{name = "LTLC", body = "TibiaL", point = {-0.022986, 0.028619, -0.050042,},},
	{name = "RFbHM", body = "FibulaR", point = {0.000000, 0.000000, 0.000000,},},
	{name = "RFbH", body = "FibulaR", point = {-0.008957, -0.011801, 0.014704,},},
	{name = "RFbLM", body = "FibulaR", point = {-0.022698, 0.006999, -0.318549,},},
	{name = "RFbMM", body = "FibulaR", point = {-0.013274, 0.025111, -0.302596,},},
	{name = "LFbHM", body = "FibulaL", point = {0.000000, 0.000000, 0.000000,},},
	{name = "LFbH", body = "FibulaL", point = {-0.008957, 0.011801, 0.014704,},},
	{name = "LFbLM", body = "FibulaL", point = {-0.022698, -0.006999, -0.318549,},},
	{name = "LFbMM", body = "FibulaL", point = {-0.013274, -0.025111, -0.302596,},},
	{name = "RFtTIP", body = "TalusR", point = {-0.012487, 0.011580, -0.020182,},},
	{name = "LFtTIP", body = "TalusL", point = {-0.012487, -0.011580, -0.020182,},},
	{name = "RFtCMP", body = "CalcaneusR", point = {-0.008688, 0.028684, -0.073310,},},
	{name = "RFtCLP", body = "CalcaneusR", point = {-0.021336, 0.018179, -0.073376,},},
	{name = "LFtCMP", body = "CalcaneusL", point = {-0.008688, -0.028684, -0.073310,},},
	{name = "LFtCLP", body = "CalcaneusL", point = {-0.021336, -0.018179, -0.073376,},},
	{name = "RFt1MA", body = "FirstMetatarsalR", point = {0.031257, 0.002643, 0.001263,},},
	{name = "LFt1MA", body = "FirstMetatarsalL", point = {0.031257, -0.002643, 0.001263,},},
	{name = "RFt5MA", body = "FifthMetatarsalR", point = {0.038426, -0.008041, -0.007366,},},
	{name = "LFt5MA", body = "FifthMetatarsalL", point = {0.038426, 0.008041, -0.007366,},},
},
frames = {
	{name   = "Sacrum",
	parent = "ROOT",
	joint_frame = {
		r = 	{ 0.000000, 0.000000, -0.000000,},
		E = 
			{{ 0.979405, -0.000000, -0.201908,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.201908, -0.000000, 0.979405,},},
	},
	points = {
	SaCT = {coordinates = 	{ -0.051885, 0.000496, -0.076012,},color = {0.5, 0.5, 0.5,},},
	SaMC = {coordinates = 	{ -0.057791, -0.003780, 0.037818,},color = {0.5, 0.5, 0.5,},},
	SaRSN = {coordinates = 	{ -0.023999, -0.039850, 0.043078,},color = {0.5, 0.5, 0.5,},},
	},
	joint= 
		{{ 0.000000, 0.000000, 0.000000, 1.000000, 0.000000, 0.000000,},
		{ 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 0.000000,},
		{ 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000,},
		{ 1.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000,},
		{ 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000,},
		{ 0.000000, 0.000000, 1.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {
		SACR = 	{ -0.099938, 0.000000, 0.063677,},},
	visuals = {{
		src         = "meshes/obj/Sacrum.obj",
		dimensions  = 	{ 0.099938, 0.118994, 0.127353,},
		mesh_center = 	{ -0.040420, -0.000000, -0.004548,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "PelvisR",
	parent = "Sacrum",
	joint_frame = {
		r = 	{ -0.027854, -0.059775, 0.016250,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	RPASIS = {coordinates = 	{ 0.097951, -0.075656, -0.036784,},color = {0.5, 0.5, 0.5,},},
	RPPSIS = {coordinates = 	{ -0.049953, 0.002864, -0.006293,},color = {0.5, 0.5, 0.5,},},
	RPIT = {coordinates = 	{ 0.021808, 0.000220, -0.162744,},color = {0.5, 0.5, 0.5,},},
	},
	joint= 
		{},
	markers = {
		RASI = 	{ 0.135373, -0.102770, 0.031891,},},
	visuals = {{
		src         = "meshes/obj/PelvisR.obj",
		dimensions  = 	{ 0.150415, 0.146814, 0.212609,},
		mesh_center = 	{ 0.040563, -0.021757, -0.043279,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "PelvisL",
	parent = "Sacrum",
	joint_frame = {
		r = 	{ -0.027854, 0.059775, 0.016250,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	LPASIS = {coordinates = 	{ 0.097951, 0.075656, -0.036784,},color = {0.5, 0.5, 0.5,},},
	LPPSIS = {coordinates = 	{ -0.049953, -0.002864, -0.006293,},color = {0.5, 0.5, 0.5,},},
	LPIT = {coordinates = 	{ 0.021808, -0.000220, -0.162744,},color = {0.5, 0.5, 0.5,},},
	},
	joint= 
		{},
	markers = {
		LASI = 	{ 0.135373, 0.102770, 0.031891,},},
	visuals = {{
		src         = "meshes/obj/PelvisL.obj",
		dimensions  = 	{ 0.150415, 0.146814, 0.212609,},
		mesh_center = 	{ 0.040563, 0.021757, -0.043279,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "FemurR",
	parent = "PelvisR",
	joint_frame = {
		r = 	{ 0.055449, -0.030999, -0.085942,},
		E = 
			{{ 0.936256, -0.320466, 0.143968,},
			{ 0.320377, 0.946975, 0.024438,},
			{ -0.144166, 0.023243, 0.989280,},},
	},
	points = {
	RFmH = {coordinates = 	{ 0.009742, 0.007466, 0.007536,},color = {0.5, 0.5, 0.5,},},
	RFmGT = {coordinates = 	{ -0.017302, -0.050417, -0.004401,},color = {0.5, 0.5, 0.5,},},
	RFmMC = {coordinates = 	{ -0.052013, 0.005691, -0.383006,},color = {0.5, 0.5, 0.5,},},
	RFmLNP = {coordinates = 	{ 0.011643, -0.029350, -0.376975,},color = {0.5, 0.5, 0.5,},},
	RFmLC = {coordinates = 	{ -0.051216, -0.038462, -0.382771,},color = {0.5, 0.5, 0.5,},},
	},
	joint= 
		{{ 1.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000,},
		{ 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000,},
		{ 0.000000, 0.000000, 1.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {
		RTHI = 	{ 0.000000, -0.109146, -0.139800,},
		RKNE = 	{ 0.000000, -0.065487, -0.381273,},
		RKNE_md = 	{ 0.000000, 0.065487, -0.381273,},},
	visuals = {{
		src         = "meshes/obj/FemurR.obj",
		dimensions  = 	{ 0.082772, 0.109146, 0.423637,},
		mesh_center = 	{ -0.015053, -0.015024, -0.182050,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "FemurL",
	parent = "PelvisL",
	joint_frame = {
		r = 	{ 0.055449, 0.030999, -0.085942,},
		E = 
			{{ 0.936256, 0.320466, 0.143968,},
			{ -0.320377, 0.946975, -0.024438,},
			{ -0.144166, -0.023243, 0.989280,},},
	},
	points = {
	LFmH = {coordinates = 	{ 0.009742, -0.007466, 0.007536,},color = {0.5, 0.5, 0.5,},},
	LFmGT = {coordinates = 	{ -0.017302, 0.050417, -0.004401,},color = {0.5, 0.5, 0.5,},},
	LFmMC = {coordinates = 	{ -0.052013, -0.005691, -0.383006,},color = {0.5, 0.5, 0.5,},},
	LFmLNP = {coordinates = 	{ 0.011643, 0.029350, -0.376975,},color = {0.5, 0.5, 0.5,},},
	LFmLC = {coordinates = 	{ -0.051216, 0.038462, -0.382771,},color = {0.5, 0.5, 0.5,},},
	},
	joint= 
		{{ 1.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000,},
		{ 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000,},
		{ 0.000000, 0.000000, 1.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {
		LTHI = 	{ 0.000000, 0.109146, -0.139800,},
		LKNE = 	{ 0.000000, 0.065487, -0.381273,},
		LKNE_md = 	{ 0.000000, -0.065487, -0.381273,},},
	visuals = {{
		src         = "meshes/obj/FemurL.obj",
		dimensions  = 	{ 0.082772, 0.109146, 0.423637,},
		mesh_center = 	{ -0.015053, 0.015024, -0.182050,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "PatellaR",
	parent = "FemurR",
	joint_frame = {
		r = 	{ 0.016793, -0.020545, -0.403506,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	RPaAP = {coordinates = 	{ 0.000000, 0.000000, 0.000000,},color = {0.5, 0.5, 0.5,},},
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/PatellaR.obj",
		dimensions  = 	{ 0.026075, 0.045319, 0.046379,},
		mesh_center = 	{ 0.006110, 0.004505, 0.022110,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "PatellaL",
	parent = "FemurL",
	joint_frame = {
		r = 	{ 0.016793, 0.020545, -0.403506,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	LPaAP = {coordinates = 	{ 0.000000, 0.000000, 0.000000,},color = {0.5, 0.5, 0.5,},},
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/PatellaL.obj",
		dimensions  = 	{ 0.026075, 0.045319, 0.046379,},
		mesh_center = 	{ 0.006110, -0.004559, 0.022110,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "TibiaR",
	parent = "FemurR",
	joint_frame = {
		r = 	{ -0.022571, -0.008961, -0.384752,},
		E = 
			{{ 0.999025, -0.000000, -0.044150,},
			{ -0.000000, 1.000000, 0.000000,},
			{ 0.044150, 0.000000, 0.999025,},},
	},
	points = {
	RTMC = {coordinates = 	{ -0.026550, 0.020472, -0.037718,},color = {0.5, 0.5, 0.5,},},
	RTLT = {coordinates = 	{ 0.024144, -0.019334, -0.059872,},color = {0.5, 0.5, 0.5,},},
	RTMM = {coordinates = 	{ -0.016178, 0.025860, -0.363674,},color = {0.5, 0.5, 0.5,},},
	RTLBE = {coordinates = 	{ -0.022207, -0.011216, -0.354653,},color = {0.5, 0.5, 0.5,},},
	RTLC = {coordinates = 	{ -0.022986, -0.028619, -0.050042,},color = {0.5, 0.5, 0.5,},},
	},
	joint= 
{		{ 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {
		RTIB = 	{ 0.000000, -0.053987, -0.114637,},
		RANK = 	{ 0.000000, -0.038562, -0.347385,},
		RANK_md = 	{ 0.000000, 0.038562, -0.347385,},},
	visuals = {{
		src         = "meshes/obj/TibiaR.obj",
		dimensions  = 	{ 0.074259, 0.077124, 0.347385,},
		mesh_center = 	{ 0.000000, 0.000000, -0.185487,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "TibiaL",
	parent = "FemurL",
	joint_frame = {
		r = 	{ -0.022571, 0.008961, -0.384752,},
		E = 
			{{ 0.999025, 0.000000, -0.044150,},
			{ -0.000000, 1.000000, 0.000000,},
			{ 0.044150, -0.000000, 0.999025,},},
	},
	points = {
	LTMC = {coordinates = 	{ -0.026550, -0.020472, -0.037718,},color = {0.5, 0.5, 0.5,},},
	LTLT = {coordinates = 	{ 0.024144, 0.019334, -0.059872,},color = {0.5, 0.5, 0.5,},},
	LTMM = {coordinates = 	{ -0.016178, -0.025860, -0.363674,},color = {0.5, 0.5, 0.5,},},
	LTLBE = {coordinates = 	{ -0.022207, 0.011216, -0.354653,},color = {0.5, 0.5, 0.5,},},
	LTLC = {coordinates = 	{ -0.022986, 0.028619, -0.050042,},color = {0.5, 0.5, 0.5,},},
	},
	joint= 
{		{ 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {
		LTIB = 	{ 0.000000, 0.053987, -0.114637,},
		LANK = 	{ 0.000000, 0.038562, -0.347385,},
		LANK_md = 	{ 0.000000, -0.038562, -0.347385,},},
	visuals = {{
		src         = "meshes/obj/TibiaL.obj",
		dimensions  = 	{ 0.074259, 0.077124, 0.347385,},
		mesh_center = 	{ 0.000000, 0.000000, -0.185487,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "FibulaR",
	parent = "TibiaR",
	joint_frame = {
		r = 	{ -0.030259, -0.025927, -0.049871,},
		E = 
			{{ 1.000000, -0.000000, 0.000000,},
			{ -0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	RFbHM = {coordinates = 	{ 0.000000, 0.000000, 0.000000,},color = {0.5, 0.5, 0.5,},},
	RFbH = {coordinates = 	{ -0.008957, -0.011801, 0.014704,},color = {0.5, 0.5, 0.5,},},
	RFbLM = {coordinates = 	{ -0.022698, 0.006999, -0.318549,},color = {0.5, 0.5, 0.5,},},
	RFbMM = {coordinates = 	{ -0.013274, 0.025111, -0.302596,},color = {0.5, 0.5, 0.5,},},
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/FibulaR.obj",
		dimensions  = 	{ 0.032758, 0.051166, 0.340988,},
		mesh_center = 	{ 0.000000, 0.000000, -0.150678,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "FibulaL",
	parent = "TibiaL",
	joint_frame = {
		r = 	{ -0.030259, 0.025927, -0.049871,},
		E = 
			{{ 1.000000, 0.000000, -0.000000,},
			{ 0.000000, 1.000000, -0.000000,},
			{ -0.000000, -0.000000, 1.000000,},},
	},
	points = {
	LFbHM = {coordinates = 	{ 0.000000, 0.000000, 0.000000,},color = {0.5, 0.5, 0.5,},},
	LFbH = {coordinates = 	{ -0.008957, 0.011801, 0.014704,},color = {0.5, 0.5, 0.5,},},
	LFbLM = {coordinates = 	{ -0.022698, -0.006999, -0.318549,},color = {0.5, 0.5, 0.5,},},
	LFbMM = {coordinates = 	{ -0.013274, -0.025111, -0.302596,},color = {0.5, 0.5, 0.5,},},
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/FibulaL.obj",
		dimensions  = 	{ 0.032758, 0.051166, 0.340988,},
		mesh_center = 	{ 0.000000, 0.000000, -0.150678,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "TalusR",
	parent = "TibiaR",
	joint_frame = {
		r = 	{ -0.034568, 0.003466, -0.366047,},
		E = 
			{{ 0.884018, -0.261953, -0.387161,},
			{ 0.341274, 0.927660, 0.151590,},
			{ 0.319444, -0.266136, 0.909465,},},
	},
	points = {
	RFtTIP = {coordinates = 	{ -0.012487, 0.011580, -0.020182,},color = {0.5, 0.5, 0.5,},},
	},
	joint= 
{		{ 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {},
	visuals = {{
		src         = "meshes/obj/TalusR.obj",
		dimensions  = 	{ 0.059968, 0.044397, 0.035148,},
		mesh_center = 	{ 0.022181, 0.012352, 0.003168,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "TalusL",
	parent = "TibiaL",
	joint_frame = {
		r = 	{ -0.034568, -0.003466, -0.366047,},
		E = 
			{{ 0.884018, 0.261953, -0.387161,},
			{ -0.341274, 0.927660, -0.151590,},
			{ 0.319444, 0.266136, 0.909465,},},
	},
	points = {
	LFtTIP = {coordinates = 	{ -0.012487, -0.011580, -0.020182,},color = {0.5, 0.5, 0.5,},},
	},
	joint= 
{		{ 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {},
	visuals = {{
		src         = "meshes/obj/TalusL.obj",
		dimensions  = 	{ 0.059968, 0.044397, 0.035148,},
		mesh_center = 	{ 0.022181, -0.012352, 0.003168,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "CalcaneusR",
	parent = "TalusR",
	joint_frame = {
		r = 	{ 0.000000, 0.000000, 0.000000,},
		E = 
			{{ 0.880251, 0.367594, 0.300055,},
			{ -0.347935, 0.929986, -0.118602,},
			{ -0.322644, 0.000000, 0.946520,},},
	},
	points = {
	RFtCMP = {coordinates = 	{ -0.008688, 0.028684, -0.073310,},color = {0.5, 0.5, 0.5,},},
	RFtCLP = {coordinates = 	{ -0.021336, 0.018179, -0.073376,},color = {0.5, 0.5, 0.5,},},
	},
	joint= 
{		{ 1.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {
		RANK = 	{ 0.000000, -0.043242, 0.000000,},
		RANK_md = 	{ 0.000000, 0.043242, 0.000000,},
		RTOE = 	{ 0.142460, 0.003061, -0.042410,},
		RHEE = 	{ -0.035120, 0.018532, -0.051972,},},
	visuals = {{
		src         = "meshes/obj/CalcaneusR.obj",
		dimensions  = 	{ 0.070240, 0.061774, 0.057747,},
		mesh_center = 	{ 0.000000, 0.005534, -0.039194,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "CalcaneusL",
	parent = "TalusL",
	joint_frame = {
		r = 	{ 0.000000, 0.000000, 0.000000,},
		E = 
			{{ 0.880251, -0.367594, 0.300055,},
			{ 0.000000, 1.000000, -0.000000,},
			{ -0.322644, -0.000000, 0.946520,},},
	},
	points = {
	LFtCMP = {coordinates = 	{ -0.008688, -0.028684, -0.073310,},color = {0.5, 0.5, 0.5,},},
	LFtCLP = {coordinates = 	{ -0.021336, -0.018179, -0.073376,},color = {0.5, 0.5, 0.5,},},
	},
	joint= 
{		{ 1.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {
		LANK = 	{ 0.000000, 0.043242, 0.000000,},
		LANK_md = 	{ 0.000000, -0.043242, 0.000000,},
		LTOE = 	{ 0.142460, -0.003061, -0.042410,},
		LHEE = 	{ -0.035120, -0.018532, -0.051972,},},
	visuals = {{
		src         = "meshes/obj/CalcaneusL.obj",
		dimensions  = 	{ 0.070240, 0.061774, 0.057747,},
		mesh_center = 	{ 0.000000, -0.006821, -0.039194,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "NavicularR",
	parent = "CalcaneusR",
	joint_frame = {
		r = 	{ 0.048802, -0.003424, -0.017220,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/NavicularR.obj",
		dimensions  = 	{ 0.025273, 0.038374, 0.030514,},
		mesh_center = 	{ 0.006927, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "NavicularL",
	parent = "CalcaneusL",
	joint_frame = {
		r = 	{ 0.048802, 0.003424, -0.017220,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/NavicularL.obj",
		dimensions  = 	{ 0.025273, 0.038374, 0.030514,},
		mesh_center = 	{ 0.006927, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "CuboidR",
	parent = "NavicularR",
	joint_frame = {
		r = 	{ -0.005453, -0.016763, -0.022629,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/CuboidR.obj",
		dimensions  = 	{ 0.030032, 0.038253, 0.031574,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "CuboidL",
	parent = "NavicularL",
	joint_frame = {
		r = 	{ -0.005453, 0.016763, -0.022629,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/CuboidL.obj",
		dimensions  = 	{ 0.030032, 0.038253, 0.031574,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "MedialCuneiformR",
	parent = "NavicularR",
	joint_frame = {
		r = 	{ 0.025113, 0.007304, -0.013783,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/MedialCuneiformR.obj",
		dimensions  = 	{ 0.033261, 0.023485, 0.032704,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "MedialCuneiformL",
	parent = "NavicularL",
	joint_frame = {
		r = 	{ 0.025113, -0.007304, -0.013783,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/MedialCuneiformL.obj",
		dimensions  = 	{ 0.033261, 0.023485, 0.032704,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "IntermediateCuneiformR",
	parent = "MedialCuneiformR",
	joint_frame = {
		r = 	{ -0.005881, -0.009853, 0.008494,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/IntermediateCuneiformR.obj",
		dimensions  = 	{ 0.021203, 0.019242, 0.023051,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "IntermediateCuneiformL",
	parent = "MedialCuneiformL",
	joint_frame = {
		r = 	{ -0.005881, 0.009853, 0.008494,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/IntermediateCuneiformL.obj",
		dimensions  = 	{ 0.021203, 0.019242, 0.023051,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "LateralCuneiformR",
	parent = "IntermediateCuneiformR",
	joint_frame = {
		r = 	{ -0.005572, -0.010343, -0.005839,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/LateralCuneiformR.obj",
		dimensions  = 	{ 0.024797, 0.024058, 0.025157,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "LateralCuneiformL",
	parent = "IntermediateCuneiformL",
	joint_frame = {
		r = 	{ -0.005572, 0.010343, -0.005839,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/LateralCuneiformL.obj",
		dimensions  = 	{ 0.024797, 0.024058, 0.025157,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "FirstMetatarsalR",
	parent = "LateralCuneiformR",
	joint_frame = {
		r = 	{ 0.048741, 0.016734, -0.015324,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	RFt1MA = {coordinates = 	{ 0.031257, 0.002643, 0.001263,},color = {0.5, 0.5, 0.5,},},
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/FirstMetatarsalR.obj",
		dimensions  = 	{ 0.066095, 0.023196, 0.039139,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "FirstMetatarsalL",
	parent = "LateralCuneiformL",
	joint_frame = {
		r = 	{ 0.048741, -0.016734, -0.015324,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	LFt1MA = {coordinates = 	{ 0.031257, -0.002643, 0.001263,},color = {0.5, 0.5, 0.5,},},
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/FirstMetatarsalL.obj",
		dimensions  = 	{ 0.066095, 0.023196, 0.039139,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "SecondMetatarsalR",
	parent = "FirstMetatarsalR",
	joint_frame = {
		r = 	{ -0.010457, -0.016237, 0.004521,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/SecondMetatarsalR.obj",
		dimensions  = 	{ 0.068783, 0.020566, 0.046081,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "SecondMetatarsalL",
	parent = "FirstMetatarsalL",
	joint_frame = {
		r = 	{ -0.010457, 0.016237, 0.004521,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/SecondMetatarsalL.obj",
		dimensions  = 	{ 0.068783, 0.020566, 0.046081,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "ThirdMetatarsalR",
	parent = "SecondMetatarsalR",
	joint_frame = {
		r = 	{ -0.006606, -0.010293, -0.004541,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/ThirdMetatarsalR.obj",
		dimensions  = 	{ 0.066267, 0.023988, 0.039719,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "ThirdMetatarsalL",
	parent = "SecondMetatarsalL",
	joint_frame = {
		r = 	{ -0.006606, 0.010293, -0.004541,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/ThirdMetatarsalL.obj",
		dimensions  = 	{ 0.066267, 0.023988, 0.039719,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "FourthMetatarsalR",
	parent = "ThirdMetatarsalR",
	joint_frame = {
		r = 	{ -0.007057, -0.006919, -0.006681,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/FourthMetatarsalR.obj",
		dimensions  = 	{ 0.064701, 0.023809, 0.036725,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "FourthMetatarsalL",
	parent = "ThirdMetatarsalL",
	joint_frame = {
		r = 	{ -0.007057, 0.006919, -0.006681,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/FourthMetatarsalL.obj",
		dimensions  = 	{ 0.064701, 0.023809, 0.036725,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "FifthMetatarsalR",
	parent = "FourthMetatarsalR",
	joint_frame = {
		r = 	{ -0.015409, -0.008199, -0.005520,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	RFt5MA = {coordinates = 	{ 0.038426, -0.008041, -0.007366,},color = {0.5, 0.5, 0.5,},},
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/FifthMetatarsalR.obj",
		dimensions  = 	{ 0.069793, 0.028634, 0.028586,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "FifthMetatarsalL",
	parent = "FourthMetatarsalL",
	joint_frame = {
		r = 	{ -0.015409, 0.008199, -0.005520,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	LFt5MA = {coordinates = 	{ 0.038426, 0.008041, -0.007366,},color = {0.5, 0.5, 0.5,},},
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/FifthMetatarsalL.obj",
		dimensions  = 	{ 0.069793, 0.028634, 0.028586,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "FirstProxPhalanxR",
	parent = "FifthMetatarsalR",
	joint_frame = {
		r = 	{ 0.083999, 0.043528, 0.000862,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/FirstProxPhalanxR.obj",
		dimensions  = 	{ 0.034730, 0.025307, 0.022414,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "FirstProxPhalanxL",
	parent = "FifthMetatarsalL",
	joint_frame = {
		r = 	{ 0.083999, -0.043528, 0.000862,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/FirstProxPhalanxL.obj",
		dimensions  = 	{ 0.034730, 0.025307, 0.022414,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "SecondProxPhalanxR",
	parent = "FirstProxPhalanxR",
	joint_frame = {
		r = 	{ -0.002644, -0.022259, -0.003235,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/SecondProxPhalanxR.obj",
		dimensions  = 	{ 0.032443, 0.013692, 0.014821,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "SecondProxPhalanxL",
	parent = "FirstProxPhalanxL",
	joint_frame = {
		r = 	{ -0.002644, 0.022259, -0.003235,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/SecondProxPhalanxL.obj",
		dimensions  = 	{ 0.032443, 0.013692, 0.014821,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "ThirdProxPhalanxR",
	parent = "SecondProxPhalanxR",
	joint_frame = {
		r = 	{ -0.005173, -0.013316, -0.000360,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/ThirdProxPhalanxR.obj",
		dimensions  = 	{ 0.029094, 0.015180, 0.012961,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "ThirdProxPhalanxL",
	parent = "SecondProxPhalanxL",
	joint_frame = {
		r = 	{ -0.005173, 0.013316, -0.000360,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/ThirdProxPhalanxL.obj",
		dimensions  = 	{ 0.029094, 0.015180, 0.012961,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "FourthProxPhalanxR",
	parent = "ThirdProxPhalanxR",
	joint_frame = {
		r = 	{ -0.015667, -0.009429, -0.005781,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/FourthProxPhalanxR.obj",
		dimensions  = 	{ 0.028759, 0.014941, 0.011995,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "FourthProxPhalanxL",
	parent = "ThirdProxPhalanxL",
	joint_frame = {
		r = 	{ -0.015667, 0.009429, -0.005781,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/FourthProxPhalanxL.obj",
		dimensions  = 	{ 0.028759, 0.014941, 0.011995,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "FifthProxPhalanxR",
	parent = "FourthProxPhalanxR",
	joint_frame = {
		r = 	{ -0.007547, -0.012936, 0.000641,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/FifthProxPhalanxR.obj",
		dimensions  = 	{ 0.026094, 0.016212, 0.011172,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "FifthProxPhalanxL",
	parent = "FourthProxPhalanxL",
	joint_frame = {
		r = 	{ -0.007547, 0.012936, 0.000641,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/FifthProxPhalanxL.obj",
		dimensions  = 	{ 0.026094, 0.016212, 0.011172,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "SecondMidPhalanxR",
	parent = "FifthProxPhalanxR",
	joint_frame = {
		r = 	{ 0.059400, 0.055491, 0.001901,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/SecondMidPhalanxR.obj",
		dimensions  = 	{ 0.028541, 0.019218, 0.018097,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "SecondMidPhalanxL",
	parent = "FifthProxPhalanxL",
	joint_frame = {
		r = 	{ 0.059400, -0.055491, 0.001901,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/SecondMidPhalanxL.obj",
		dimensions  = 	{ 0.028541, 0.019218, 0.018097,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "ThirdMidPhalanxR",
	parent = "SecondMidPhalanxR",
	joint_frame = {
		r = 	{ -0.004598, -0.019570, -0.000589,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/ThirdMidPhalanxR.obj",
		dimensions  = 	{ 0.015816, 0.010886, 0.011400,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "ThirdMidPhalanxL",
	parent = "SecondMidPhalanxL",
	joint_frame = {
		r = 	{ -0.004598, 0.019570, -0.000589,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/ThirdMidPhalanxL.obj",
		dimensions  = 	{ 0.015816, 0.010886, 0.011400,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "FourthMidPhalanxR",
	parent = "ThirdMidPhalanxR",
	joint_frame = {
		r = 	{ -0.011740, -0.015002, -0.000381,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/FourthMidPhalanxR.obj",
		dimensions  = 	{ 0.013087, 0.011829, 0.010880,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "FourthMidPhalanxL",
	parent = "ThirdMidPhalanxL",
	joint_frame = {
		r = 	{ -0.011740, 0.015002, -0.000381,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/FourthMidPhalanxL.obj",
		dimensions  = 	{ 0.013087, 0.011829, 0.010880,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "FifthMidPhalanxR",
	parent = "FourthMidPhalanxR",
	joint_frame = {
		r = 	{ -0.013215, -0.010710, -0.005865,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/FifthMidPhalanxR.obj",
		dimensions  = 	{ 0.012635, 0.010739, 0.009085,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "FifthMidPhalanxL",
	parent = "FourthMidPhalanxL",
	joint_frame = {
		r = 	{ -0.013215, 0.010710, -0.005865,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/FifthMidPhalanxL.obj",
		dimensions  = 	{ 0.012635, 0.010739, 0.009085,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "FirstDistPhalanxR",
	parent = "FifthMidPhalanxR",
	joint_frame = {
		r = 	{ -0.010480, -0.014965, -0.000953,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/FirstDistPhalanxR.obj",
		dimensions  = 	{ 0.011148, 0.010335, 0.007890,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "FirstDistPhalanxL",
	parent = "FifthMidPhalanxL",
	joint_frame = {
		r = 	{ -0.010480, 0.014965, -0.000953,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/FirstDistPhalanxL.obj",
		dimensions  = 	{ 0.011148, 0.010335, 0.007890,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "SecondDistPhalanxR",
	parent = "FirstDistPhalanxR",
	joint_frame = {
		r = 	{ 0.048822, 0.040351, 0.005296,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/SecondDistPhalanxR.obj",
		dimensions  = 	{ 0.012253, 0.010414, 0.009366,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "SecondDistPhalanxL",
	parent = "FirstDistPhalanxL",
	joint_frame = {
		r = 	{ 0.048822, -0.040351, 0.005296,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/SecondDistPhalanxL.obj",
		dimensions  = 	{ 0.012253, 0.010414, 0.009366,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "ThirdDistPhalanxR",
	parent = "SecondDistPhalanxR",
	joint_frame = {
		r = 	{ -0.013422, -0.015095, -0.004296,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/ThirdDistPhalanxR.obj",
		dimensions  = 	{ 0.014030, 0.008754, 0.010141,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "ThirdDistPhalanxL",
	parent = "SecondDistPhalanxL",
	joint_frame = {
		r = 	{ -0.013422, 0.015095, -0.004296,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/ThirdDistPhalanxL.obj",
		dimensions  = 	{ 0.014030, 0.008754, 0.010141,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "FourthDistPhalanxR",
	parent = "ThirdDistPhalanxR",
	joint_frame = {
		r = 	{ -0.012342, -0.013211, -0.004665,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/FourthDistPhalanxR.obj",
		dimensions  = 	{ 0.014030, 0.008754, 0.010141,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "FourthDistPhalanxL",
	parent = "ThirdDistPhalanxL",
	joint_frame = {
		r = 	{ -0.012342, 0.013211, -0.004665,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/FourthDistPhalanxL.obj",
		dimensions  = 	{ 0.014030, 0.008754, 0.010141,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "FifthDistPhalanxR",
	parent = "FourthDistPhalanxR",
	joint_frame = {
		r = 	{ -0.010237, -0.014695, 0.001960,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/FifthDistPhalanxR.obj",
		dimensions  = 	{ 0.012253, 0.010414, 0.009366,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	{name   = "FifthDistPhalanxL",
	parent = "FourthDistPhalanxL",
	joint_frame = {
		r = 	{ -0.010237, 0.014695, 0.001960,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	points = {
	},
	joint= 
		{},
	markers = {},
	visuals = {{
		src         = "meshes/obj/FifthDistPhalanxL.obj",
		dimensions  = 	{ 0.012253, 0.010414, 0.009366,},
		mesh_center = 	{ 0.000000, 0.000000, 0.000000,},
		color       = 	{ 0.400000, 0.800000, 0.400000,},
		},},
	},
	},
}