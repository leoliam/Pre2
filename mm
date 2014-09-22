digraph model_graph {
	graph [bb="0,0,1637,1040",
		fontname=Helvetica,
		fontsize=8,
		splines=true
	];
	node [fontname=Helvetica,
		fontsize=8,
		label="\N",
		shape=plaintext
	];
	edge [fontname=Helvetica,
		fontsize=8
	];
	subgraph cluster_django_contrib_sessions_models {
		graph [bb="0,896,271,1008",
			color=olivedrab4,
			label=<
          <TABLE BORDER="0" CELLBORDER="0" CELLSPACING="0">
          <TR><TD COLSPAN="2" CELLPADDING="4" ALIGN="CENTER">
          <FONT FACE="Helvetica Bold" COLOR="Black" POINT-SIZE="12">
          django.contrib.sessions
          </FONT>
          </TD></TR>
          </TABLE>
          >,
			lheight=0.31,
			lp="135.5,993",
			lwidth=3.54,
			style=rounded
		];
		django_contrib_sessions_models_Session		 [height=0.90278,
			label=<
      <TABLE BGCOLOR="palegoldenrod" BORDER="0" CELLBORDER="0" CELLSPACING="0">
      <TR><TD COLSPAN="2" CELLPADDING="4" ALIGN="CENTER" BGCOLOR="olivedrab4">
      <FONT FACE="Helvetica Bold" COLOR="white">
      Session
      </FONT></TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica Bold">session_key</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica Bold">CharField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica ">expire_date</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica ">DateTimeField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica ">session_data</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica ">TextField</FONT>
      </TD></TR>
    
      </TABLE>
      >,
			pos="135,937",
			width=2.5417];
	}
	subgraph cluster_django_contrib_admin_models {
		graph [bb="1186,864,1439,1040",
			color=olivedrab4,
			label=<
          <TABLE BORDER="0" CELLBORDER="0" CELLSPACING="0">
          <TR><TD COLSPAN="2" CELLPADDING="4" ALIGN="CENTER">
          <FONT FACE="Helvetica Bold" COLOR="Black" POINT-SIZE="12">
          django.contrib.admin
          </FONT>
          </TD></TR>
          </TABLE>
          >,
			lheight=0.31,
			lp="1312.5,1025",
			lwidth=3.29,
			style=rounded
		];
		django_contrib_admin_models_LogEntry		 [height=1.8056,
			label=<
      <TABLE BGCOLOR="palegoldenrod" BORDER="0" CELLBORDER="0" CELLSPACING="0">
      <TR><TD COLSPAN="2" CELLPADDING="4" ALIGN="CENTER" BGCOLOR="olivedrab4">
      <FONT FACE="Helvetica Bold" COLOR="white">
      LogEntry
      </FONT></TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica Bold">id</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica Bold">AutoField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT COLOR="#7B7B7B" FACE="Helvetica Bold">content_type</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT COLOR="#7B7B7B" FACE="Helvetica Bold">ForeignKey (id)</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica Bold">user</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica Bold">ForeignKey (id)</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica ">action_flag</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica ">PositiveSmallIntegerField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT COLOR="#7B7B7B" FACE="Helvetica ">action_time</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT COLOR="#7B7B7B" FACE="Helvetica ">DateTimeField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT COLOR="#7B7B7B" FACE="Helvetica ">change_message</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT COLOR="#7B7B7B" FACE="Helvetica ">TextField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT COLOR="#7B7B7B" FACE="Helvetica ">object_id</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT COLOR="#7B7B7B" FACE="Helvetica ">TextField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica ">object_repr</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica ">CharField</FONT>
      </TD></TR>
    
      </TABLE>
      >,
			pos="1312,937",
			width=3.2639];
	}
	subgraph cluster_apps_logistica_models {
		graph [bb="236,6,664,302",
			color=olivedrab4,
			label=<
          <TABLE BORDER="0" CELLBORDER="0" CELLSPACING="0">
          <TR><TD COLSPAN="2" CELLPADDING="4" ALIGN="CENTER">
          <FONT FACE="Helvetica Bold" COLOR="Black" POINT-SIZE="12">
          apps.logistica
          </FONT>
          </TD></TR>
          </TABLE>
          >,
			lheight=0.31,
			lp="450,287",
			lwidth=2.71,
			style=rounded
		];
		apps_logistica_models_Cargo		 [height=0.90278,
			label=<
      <TABLE BGCOLOR="palegoldenrod" BORDER="0" CELLBORDER="0" CELLSPACING="0">
      <TR><TD COLSPAN="2" CELLPADDING="4" ALIGN="CENTER" BGCOLOR="olivedrab4">
      <FONT FACE="Helvetica Bold" COLOR="white">
      Cargo
      </FONT></TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica Bold">id</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica Bold">AutoField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT COLOR="#7B7B7B" FACE="Helvetica ">cargo_descripcion</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT COLOR="#7B7B7B" FACE="Helvetica ">TextField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica ">cargo_nom</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica ">CharField</FONT>
      </TD></TR>
    
      </TABLE>
      >,
			pos="337,212",
			width=2.5833];
		apps_logistica_models_Area		 [height=0.90278,
			label=<
      <TABLE BGCOLOR="palegoldenrod" BORDER="0" CELLBORDER="0" CELLSPACING="0">
      <TR><TD COLSPAN="2" CELLPADDING="4" ALIGN="CENTER" BGCOLOR="olivedrab4">
      <FONT FACE="Helvetica Bold" COLOR="white">
      Area
      </FONT></TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica Bold">id</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica Bold">AutoField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT COLOR="#7B7B7B" FACE="Helvetica ">area_descripcion</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT COLOR="#7B7B7B" FACE="Helvetica ">TextField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica ">area_nom</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica ">CharField</FONT>
      </TD></TR>
    
      </TABLE>
      >,
			pos="552,47",
			width=2.5278];
		apps_logistica_models_Servicio		 [height=1.4444,
			label=<
      <TABLE BGCOLOR="palegoldenrod" BORDER="0" CELLBORDER="0" CELLSPACING="0">
      <TR><TD COLSPAN="2" CELLPADDING="4" ALIGN="CENTER" BGCOLOR="olivedrab4">
      <FONT FACE="Helvetica Bold" COLOR="white">
      Servicio
      </FONT></TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica Bold">id</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica Bold">AutoField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica Bold">area</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica Bold">ForeignKey (id)</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica ">servi_costo</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica ">DecimalField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT COLOR="#7B7B7B" FACE="Helvetica ">servi_descripcion</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT COLOR="#7B7B7B" FACE="Helvetica ">TextField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica ">servi_nom</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica ">CharField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT COLOR="#7B7B7B" FACE="Helvetica ">tiempo_requerido</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT COLOR="#7B7B7B" FACE="Helvetica ">IntegerField</FONT>
      </TD></TR>
    
      </TABLE>
      >,
			pos="552,212",
			width=2.875];
		apps_logistica_models_Servicio -> apps_logistica_models_Area		 [arrowhead=none,
			arrowtail=dot,
			dir=both,
			label="area (servicio)",
			lp="578,137",
			pos="s,552,159.87 552,151.71 552,127.28 552,99.97 552,79.505"];
	}
	subgraph cluster_django_contrib_auth_models {
		graph [bb="672,165,1151,836",
			color=olivedrab4,
			label=<
          <TABLE BORDER="0" CELLBORDER="0" CELLSPACING="0">
          <TR><TD COLSPAN="2" CELLPADDING="4" ALIGN="CENTER">
          <FONT FACE="Helvetica Bold" COLOR="Black" POINT-SIZE="12">
          django.contrib.auth
          </FONT>
          </TD></TR>
          </TABLE>
          >,
			lheight=0.31,
			lp="911.5,821",
			lwidth=3.15,
			style=rounded
		];
		django_contrib_auth_models_AbstractUser		 [height=2.2639,
			label=<
      <TABLE BGCOLOR="palegoldenrod" BORDER="0" CELLBORDER="0" CELLSPACING="0">
      <TR><TD COLSPAN="2" CELLPADDING="4" ALIGN="CENTER" BGCOLOR="olivedrab4">
      <FONT FACE="Helvetica Bold" COLOR="white">
      AbstractUser<BR/>&lt;<FONT FACE="Helvetica Italic">AbstractBaseUser,PermissionsMixin</FONT>&gt;
      </FONT></TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica ">date_joined</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica ">DateTimeField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT COLOR="#7B7B7B" FACE="Helvetica ">email</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT COLOR="#7B7B7B" FACE="Helvetica ">EmailField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT COLOR="#7B7B7B" FACE="Helvetica ">first_name</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT COLOR="#7B7B7B" FACE="Helvetica ">CharField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT COLOR="#7B7B7B" FACE="Helvetica ">is_active</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT COLOR="#7B7B7B" FACE="Helvetica ">BooleanField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT COLOR="#7B7B7B" FACE="Helvetica ">is_staff</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT COLOR="#7B7B7B" FACE="Helvetica ">BooleanField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT COLOR="#7B7B7B" FACE="Helvetica Italic">is_superuser</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT COLOR="#7B7B7B" FACE="Helvetica Italic">BooleanField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica Italic">last_login</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica Italic">DateTimeField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT COLOR="#7B7B7B" FACE="Helvetica ">last_name</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT COLOR="#7B7B7B" FACE="Helvetica ">CharField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica Italic">password</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica Italic">CharField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica ">username</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica ">CharField</FONT>
      </TD></TR>
    
      </TABLE>
      >,
			pos="1053,457",
			width=2.5];
		django_contrib_auth_models_Permission		 [height=1.0833,
			label=<
      <TABLE BGCOLOR="palegoldenrod" BORDER="0" CELLBORDER="0" CELLSPACING="0">
      <TR><TD COLSPAN="2" CELLPADDING="4" ALIGN="CENTER" BGCOLOR="olivedrab4">
      <FONT FACE="Helvetica Bold" COLOR="white">
      Permission
      </FONT></TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica Bold">id</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica Bold">AutoField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica Bold">content_type</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica Bold">ForeignKey (id)</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica ">codename</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica ">CharField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica ">name</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica ">CharField</FONT>
      </TD></TR>
    
      </TABLE>
      >,
			pos="874,212",
			width=2.7222];
		django_contrib_auth_models_Group		 [height=0.72222,
			label=<
      <TABLE BGCOLOR="palegoldenrod" BORDER="0" CELLBORDER="0" CELLSPACING="0">
      <TR><TD COLSPAN="2" CELLPADDING="4" ALIGN="CENTER" BGCOLOR="olivedrab4">
      <FONT FACE="Helvetica Bold" COLOR="white">
      Group
      </FONT></TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica Bold">id</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica Bold">AutoField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica ">name</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica ">CharField</FONT>
      </TD></TR>
    
      </TABLE>
      >,
			pos="874,457",
			width=1.9722];
		django_contrib_auth_models_Group -> django_contrib_auth_models_Permission		 [arrowhead=dot,
			arrowtail=dot,
			dir=both,
			label="permissions (group)",
			lp="910,319",
			pos="s,874,430.91 e,874,251.04 874,422.69 874,380.28 874,306.8 874,259.05"];
		django_contrib_auth_models_User		 [height=2.4444,
			label=<
      <TABLE BGCOLOR="palegoldenrod" BORDER="0" CELLBORDER="0" CELLSPACING="0">
      <TR><TD COLSPAN="2" CELLPADDING="4" ALIGN="CENTER" BGCOLOR="olivedrab4">
      <FONT FACE="Helvetica Bold" COLOR="white">
      User<BR/>&lt;<FONT FACE="Helvetica Italic">AbstractUser</FONT>&gt;
      </FONT></TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica Bold">id</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica Bold">AutoField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica Italic">date_joined</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica Italic">DateTimeField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT COLOR="#7B7B7B" FACE="Helvetica Italic">email</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT COLOR="#7B7B7B" FACE="Helvetica Italic">EmailField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT COLOR="#7B7B7B" FACE="Helvetica Italic">first_name</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT COLOR="#7B7B7B" FACE="Helvetica Italic">CharField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT COLOR="#7B7B7B" FACE="Helvetica Italic">is_active</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT COLOR="#7B7B7B" FACE="Helvetica Italic">BooleanField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT COLOR="#7B7B7B" FACE="Helvetica Italic">is_staff</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT COLOR="#7B7B7B" FACE="Helvetica Italic">BooleanField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT COLOR="#7B7B7B" FACE="Helvetica Italic">is_superuser</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT COLOR="#7B7B7B" FACE="Helvetica Italic">BooleanField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica Italic">last_login</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica Italic">DateTimeField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT COLOR="#7B7B7B" FACE="Helvetica Italic">last_name</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT COLOR="#7B7B7B" FACE="Helvetica Italic">CharField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica Italic">password</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica Italic">CharField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica Italic">username</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica Italic">CharField</FONT>
      </TD></TR>
    
      </TABLE>
      >,
			pos="1000,710",
			width=2.5];
		django_contrib_auth_models_User -> django_contrib_auth_models_AbstractUser		 [arrowhead=empty,
			arrowtail=none,
			dir=both,
			label="abstract\ninheritance",
			lp="1045,595",
			pos="e,1036,538.61 1018.4,621.92 1023.4,598.25 1028.8,572.57 1033.8,548.71"];
		django_contrib_auth_models_User -> django_contrib_auth_models_Permission		 [arrowhead=dot,
			arrowtail=dot,
			dir=both,
			label="user_permissions (user)",
			lp="750.5,457",
			pos="s,909.9,692.29 e,794.79,251.1 902.17,690.22 834.59,671.6 749.52,635.65 707,568 652.6,481.45 661.24,429.41 707,338 724.33,303.38 \
756.32,275.87 787.69,255.58"];
		django_contrib_auth_models_User -> django_contrib_auth_models_Group		 [arrowhead=dot,
			arrowtail=dot,
			dir=both,
			label="groups (user)",
			lp="969.5,595",
			pos="s,956.28,621.92 e,886.58,483.07 952.65,614.68 930.66,570.87 905.95,521.65 890.2,490.26"];
	}
	subgraph cluster_django_contrib_contenttypes_models {
		graph [bb="1135,0,1428,124",
			color=olivedrab4,
			label=<
          <TABLE BORDER="0" CELLBORDER="0" CELLSPACING="0">
          <TR><TD COLSPAN="2" CELLPADDING="4" ALIGN="CENTER">
          <FONT FACE="Helvetica Bold" COLOR="Black" POINT-SIZE="12">
          django.contrib.contenttypes
          </FONT>
          </TD></TR>
          </TABLE>
          >,
			lheight=0.31,
			lp="1281.5,109",
			lwidth=3.85,
			style=rounded
		];
		django_contrib_contenttypes_models_ContentType		 [height=1.0833,
			label=<
      <TABLE BGCOLOR="palegoldenrod" BORDER="0" CELLBORDER="0" CELLSPACING="0">
      <TR><TD COLSPAN="2" CELLPADDING="4" ALIGN="CENTER" BGCOLOR="olivedrab4">
      <FONT FACE="Helvetica Bold" COLOR="white">
      ContentType
      </FONT></TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica Bold">id</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica Bold">AutoField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica ">app_label</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica ">CharField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica ">model</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica ">CharField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica ">name</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica ">CharField</FONT>
      </TD></TR>
    
      </TABLE>
      >,
			pos="1281,47",
			width=2.1667];
	}
	subgraph cluster_south_models {
		graph [bb="1447,890,1637,1014",
			color=olivedrab4,
			label=<
          <TABLE BORDER="0" CELLBORDER="0" CELLSPACING="0">
          <TR><TD COLSPAN="2" CELLPADDING="4" ALIGN="CENTER">
          <FONT FACE="Helvetica Bold" COLOR="Black" POINT-SIZE="12">
          south
          </FONT>
          </TD></TR>
          </TABLE>
          >,
			lheight=0.31,
			lp="1542,999",
			lwidth=2.07,
			style=rounded
		];
		south_models_MigrationHistory		 [height=1.0833,
			label=<
      <TABLE BGCOLOR="palegoldenrod" BORDER="0" CELLBORDER="0" CELLSPACING="0">
      <TR><TD COLSPAN="2" CELLPADDING="4" ALIGN="CENTER" BGCOLOR="olivedrab4">
      <FONT FACE="Helvetica Bold" COLOR="white">
      MigrationHistory
      </FONT></TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica Bold">id</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica Bold">AutoField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica ">app_name</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica ">CharField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT COLOR="#7B7B7B" FACE="Helvetica ">applied</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT COLOR="#7B7B7B" FACE="Helvetica ">DateTimeField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica ">migration</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica ">CharField</FONT>
      </TD></TR>
    
      </TABLE>
      >,
			pos="1542,937",
			width=2.4028];
	}
	subgraph cluster_apps_rr_hh_models {
		graph [bb="279,338,501,1040",
			color=olivedrab4,
			label=<
          <TABLE BORDER="0" CELLBORDER="0" CELLSPACING="0">
          <TR><TD COLSPAN="2" CELLPADDING="4" ALIGN="CENTER">
          <FONT FACE="Helvetica Bold" COLOR="Black" POINT-SIZE="12">
          apps.rr_hh
          </FONT>
          </TD></TR>
          </TABLE>
          >,
			lheight=0.31,
			lp="390,1025",
			lwidth=2.49,
			style=rounded
		];
		apps_rr_hh_models_Empleado		 [height=3.0694,
			label=<
      <TABLE BGCOLOR="palegoldenrod" BORDER="0" CELLBORDER="0" CELLSPACING="0">
      <TR><TD COLSPAN="2" CELLPADDING="4" ALIGN="CENTER" BGCOLOR="olivedrab4">
      <FONT FACE="Helvetica Bold" COLOR="white">
      Empleado
      </FONT></TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica Bold">id</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica Bold">AutoField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT COLOR="#7B7B7B" FACE="Helvetica Bold">cargo</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT COLOR="#7B7B7B" FACE="Helvetica Bold">ForeignKey (id)</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica ">emp_ape</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica ">CharField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT COLOR="#7B7B7B" FACE="Helvetica ">emp_clave</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT COLOR="#7B7B7B" FACE="Helvetica ">CharField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica ">emp_direccion</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica ">CharField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT COLOR="#7B7B7B" FACE="Helvetica ">emp_dni</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT COLOR="#7B7B7B" FACE="Helvetica ">CharField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica ">emp_esta</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica ">IntegerField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica ">emp_fecing</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica ">DateField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica ">emp_fecnac</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica ">DateField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT COLOR="#7B7B7B" FACE="Helvetica ">emp_fecreg</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT COLOR="#7B7B7B" FACE="Helvetica ">DateField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT COLOR="#7B7B7B" FACE="Helvetica ">emp_foto</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT COLOR="#7B7B7B" FACE="Helvetica ">CharField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica ">emp_nom</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica ">CharField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica ">emp_sexo</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica ">CharField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT COLOR="#7B7B7B" FACE="Helvetica ">emp_tel</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT COLOR="#7B7B7B" FACE="Helvetica ">CharField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT COLOR="#7B7B7B" FACE="Helvetica ">emp_usu</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT COLOR="#7B7B7B" FACE="Helvetica ">CharField</FONT>
      </TD></TR>
    
      </TABLE>
      >,
			pos="387,457",
			width=2.7083];
		apps_rr_hh_models_ServicioEmpleado		 [height=1.0833,
			label=<
      <TABLE BGCOLOR="palegoldenrod" BORDER="0" CELLBORDER="0" CELLSPACING="0">
      <TR><TD COLSPAN="2" CELLPADDING="4" ALIGN="CENTER" BGCOLOR="olivedrab4">
      <FONT FACE="Helvetica Bold" COLOR="white">
      ServicioEmpleado
      </FONT></TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica Bold">id</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica Bold">AutoField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica Bold">emp</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica Bold">ForeignKey (id)</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica Bold">servi</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica Bold">ForeignKey (id)</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica ">progra_estado</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica ">IntegerField</FONT>
      </TD></TR>
    
      </TABLE>
      >,
			pos="390,710",
			width=2.7222];
		apps_rr_hh_models_ServicioEmpleado -> apps_rr_hh_models_Empleado		 [arrowhead=none,
			arrowtail=dot,
			dir=both,
			label="emp (servicioempleado)",
			lp="432,595",
			pos="s,389.54,670.88 389.45,662.84 389.13,636.07 388.71,601.12 388.31,567.7"];
		apps_rr_hh_models_Programacion		 [height=1.8056,
			label=<
      <TABLE BGCOLOR="palegoldenrod" BORDER="0" CELLBORDER="0" CELLSPACING="0">
      <TR><TD COLSPAN="2" CELLPADDING="4" ALIGN="CENTER" BGCOLOR="olivedrab4">
      <FONT FACE="Helvetica Bold" COLOR="white">
      Programacion
      </FONT></TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica Bold">prog_id</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica Bold">AutoField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica Bold">servi_id</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica Bold">ForeignKey (id)</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT COLOR="#7B7B7B" FACE="Helvetica ">hor_anotacion</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT COLOR="#7B7B7B" FACE="Helvetica ">TextField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica ">hor_fecha</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica ">DateField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT COLOR="#7B7B7B" FACE="Helvetica ">hor_ing</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT COLOR="#7B7B7B" FACE="Helvetica ">TimeField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT COLOR="#7B7B7B" FACE="Helvetica ">hor_sal</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT COLOR="#7B7B7B" FACE="Helvetica ">TimeField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica ">hor_turno</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica ">CharField</FONT>
      </TD></TR>
    
      <TR><TD ALIGN="LEFT" BORDER="0">
      <FONT FACE="Helvetica ">minutosdatencion</FONT>
      </TD><TD ALIGN="LEFT">
      <FONT FACE="Helvetica ">IntegerField</FONT>
      </TD></TR>
    
      </TABLE>
      >,
			pos="390,937",
			width=2.8611];
		apps_rr_hh_models_Programacion -> apps_rr_hh_models_ServicioEmpleado		 [arrowhead=none,
			arrowtail=dot,
			dir=both,
			label="servi_id (programacion)",
			lp="432.5,849",
			pos="s,390,871.83 390,863.81 390,825.71 390,780.49 390,749.18"];
	}
	django_contrib_admin_models_LogEntry -> django_contrib_auth_models_User	 [arrowhead=none,
		arrowtail=dot,
		dir=both,
		label="user (logentry)",
		lp="1220.5,849",
		pos="s,1223,871.83 1216.1,866.85 1176,837.94 1129.7,804.51 1090.2,776.04"];
	django_contrib_admin_models_LogEntry -> django_contrib_contenttypes_models_ContentType	 [arrowhead=none,
		arrowtail=dot,
		dir=both,
		label="content_type (logentry)",
		lp="1458.5,457",
		pos="s,1360.2,871.72 1364.6,864.76 1390.8,822.32 1417,766.13 1417,711 1417,711 1417,711 1417,211 1417,159.4 1376.3,115.49 1339.5,86.291"];
	django_contrib_auth_models_AbstractBaseUser	 [height=0.5,
		label=<
  <TABLE BGCOLOR="palegoldenrod" BORDER="0" CELLBORDER="0" CELLSPACING="0">
  <TR><TD COLSPAN="2" CELLPADDING="4" ALIGN="CENTER" BGCOLOR="olivedrab4">
  <FONT FACE="Helvetica Bold" COLOR="white">AbstractBaseUser</FONT>
  </TD></TR>
  </TABLE>
  >,
		pos="1212,212",
		width=1.4861];
	django_contrib_auth_models_AbstractUser -> django_contrib_auth_models_AbstractBaseUser	 [arrowhead=empty,
		arrowtail=none,
		dir=both,
		label="abstract\ninheritance",
		lp="1169,319",
		pos="e,1200.9,230.07 1106,375.3 1121.5,351.69 1138.4,325.82 1154,302 1167.9,280.7 1183.7,256.52 1195.3,238.74"];
	django_contrib_auth_models_PermissionsMixin	 [height=0.5,
		label=<
  <TABLE BGCOLOR="palegoldenrod" BORDER="0" CELLBORDER="0" CELLSPACING="0">
  <TR><TD COLSPAN="2" CELLPADDING="4" ALIGN="CENTER" BGCOLOR="olivedrab4">
  <FONT FACE="Helvetica Bold" COLOR="white">PermissionsMixin</FONT>
  </TD></TR>
  </TABLE>
  >,
		pos="1336,212",
		width=1.4583];
	django_contrib_auth_models_AbstractUser -> django_contrib_auth_models_PermissionsMixin	 [arrowhead=empty,
		arrowtail=none,
		dir=both,
		label="abstract\ninheritance",
		lp="1284,319",
		pos="e,1326.6,230.07 1143.2,403.49 1185.6,376.34 1235.2,340.77 1274,302 1293,283 1310.1,257.54 1321.5,238.72"];
	django_contrib_auth_models_Permission -> django_contrib_contenttypes_models_ContentType	 [arrowhead=none,
		arrowtail=dot,
		dir=both,
		label="content_type (permission)",
		lp="1112.5,137",
		pos="s,968.91,172.99 976.49,169.95 1046.7,141.84 1138.3,105.13 1202.7,79.361"];
	apps_rr_hh_models_Empleado -> apps_logistica_models_Cargo	 [arrowhead=none,
		arrowtail=dot,
		dir=both,
		label="cargo (empleado)",
		lp="393,319",
		pos="s,364.41,346.23 362.8,338.39 355.68,303.76 348.46,268.72 343.48,244.52"];
	apps_rr_hh_models_ServicioEmpleado -> apps_logistica_models_Servicio	 [arrowhead=none,
		arrowtail=dot,
		dir=both,
		label="servi (servicioempleado)",
		lp="594.5,457",
		pos="s,427.57,671 433.33,664.6 449.15,646.77 466.26,625.4 479,604 543.56,495.56 553.15,342.69 553.35,264.08"];
}
