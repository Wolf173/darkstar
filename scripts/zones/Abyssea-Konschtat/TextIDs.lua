-- Variable TextID   Description text

-- General Texts
ITEM_CANNOT_BE_OBTAINED = 6378; -- You cannot obtain the item <item> come back again after sorting your inventory
          ITEM_OBTAINED = 6381; -- Obtained: <item>
           GIL_OBTAINED = 6382; -- Obtained <number> gil
       KEYITEM_OBTAINED = 6384; -- Obtained key item: <keyitem>
         CRUOR_OBTAINED = 6979; -- <Possible Special Code: 1F>y<Player Name> obtains <Numeric Parameter 0> cruor.
		    SHOW_LIGHTS = 7284; -- ≻Visitant Light Intensity≺Set Color #1≻ Pearlescent: ≺Numeric Parameter 0≻ / Ebon: ≺Numeric Parameter 1≻ Golden: ≺Numeric Parameter 2≻ / Silvery: ≺Numeric Parameter 3≻≺Prompt≻
           SHOW_LIGHTS2 = 7285;
			   NO_STONE = 7308; -- If you wish to journey within Abyssea, bring me ≺Possible Special Code: 01≻≺Possible Special Code: 05≻5≺BAD CHAR: 8280≻≺BAD CHAR: 80≻≺BAD CHAR: 80≻ and I will grant you visitant status.≺Prompt≻
             SHOW_CRUOR = 7719; -- Cruor: ≺Numeric Parameter 0≻P (1P = ≺Numeric Parameter 1≻ cruor)≺Prompt≻
	        NO_VISITANT = 7362; 
		 
		 

-- Abyssea Weakness Targeting
               STAGGERED = 7286; -- ?Player/Chocobo Parameter 0?'s attack staggers the fiend!?Prompt?
          YELLOW_STAGGER = 7287; -- The fiend is unable to cast magic.?Prompt?
            BLUE_STAGGER = 7288; -- The fiend is unable to use special attacks.?Prompt?
             RED_STAGGER = 7289; -- The fiend is frozen in its tracks.?Prompt?
         YELLOW_WEAKNESS = 7290; -- The fiend appears vulnerable to ?Multiple Choice (Parameter 0)?[/fire/ice/wind/earth/lightning/water/light/darkness] elemental magic!?Prompt?
           BLUE_WEAKNESS = 7291; -- The fiend appears vulnerable to ?Multiple Choice (Parameter 0)?[/hand-to-hand/dagger/sword/great sword/axe/great axe/scythe/polearm/katana/great katana/club/staff/archery/marksmanship] weapon skills!?Prompt?
            RED_WEAKNESS = 7292; -- The fiend appears vulnerable to ?Multiple Choice (Parameter 0)?[/fire/ice/wind/earth/lightning/water/light/darkness] elemental weapon skills!?Prompt?

-- Visitant Related Messages
            ADD_VISITANT = 7307; -- What would you like to do?≺Selection Dialog ≻Nothing. Learn about visitant status. Request visitant status. Extend visitant status.≺Prompt≻
    EXACT_TIME_REMAINING = 7293; -- Your visitant status will wear off in ?Numeric Parameter 0? ?Multiple Choice (Parameter 1)?[second/minute].?Prompt?
          TIME_REMAINING = 7294; -- Your visitant status will wear off in ?Numeric Parameter 0? ?Multiple Choice (Parameter 1)?[seconds/minutes].?Prompt?
    LOST_VISITANT_STATUS = 7295; -- Your visitant status has worn off.?Prompt?
    TIME_SET_OR_EXTENDED = 7327  -- You expend ≺Numeric Parameter 0≻ ≺Possible Special Code: 01≻≺Possible Special Code: 05≻3ａ≺BAD CHAR: 80≻≺BAD CHAR: 80≻.Your visitant status has been ≺Multiple Choice (Parameter 3)≻[set to/extended by] ≺Numeric Parameter 2≻ ≺Singular/Plural Choice (Parameter 2)≻[minute/minutes].≺Prompt≻
	   VISITANT_EXTENDED = 7296; -- ?Possible Special Code: 1F?yYour visitant status has been extended by ?Numeric Parameter 0? ?Singular/Plural Choice (Parameter 0)?[minute/minutes].?Prompt?
          EXIT_WARNING_1 = 7297; -- Exiting in ?Numeric Parameter 0? ?Singular/Plural Choice (Parameter 0)?[minute/minutes].?Prompt?
          EXIT_WARNING_2 = 7298; -- Those without visitant status will be ejected from the area in ?Numeric Parameter 0? ?Singular/Plural Choice (Parameter 0)?[minute/minutes]. To learn about this status, please consult a Conflux Surveyor.?Prompt?
          EXIT_WARNING_3 = 7299; -- Exiting in ?Numeric Parameter 0? ?Multiple Choice (Parameter 1)?[second/minute].?Prompt?
          EXIT_WARNING_4 = 7300; -- Exiting in ?Numeric Parameter 0? ?Multiple Choice (Parameter 1)?[seconds/minutes].?Prompt?
             EXITING_NOW = 7301; -- Exiting now.?Prompt?
          WARD_WARNING_1 = 7302; -- Returning to the Searing Ward in ?Numeric Parameter 0? ?Singular/Plural Choice (Parameter 0)?[second/seconds].?Prompt?
          WARD_WARNING_2 = 7303; -- You do not have visitant status. Returning to the Searing Ward in ?Numeric Parameter 0? ?Singular/Plural Choice (Parameter 0)?[second/seconds].?Prompt?
          WARD_WARNING_3 = 7304; -- Returning to the Searing Ward in ?Numeric Parameter 0? ?Singular/Plural Choice (Parameter 0)?[second/seconds].?Prompt?
       SEARING_WARD_TELE = 7305; -- Returning to the Searing Ward now.?Prompt?
	  CANNOT_EXTEND_TIME = 7330; -- You could not extend your visitant status.≺Prompt≻

-- Abyssea ??? Targets
          BOUNDLESS_RAGE = 7542; -- You sense an aura of boundless rage...?Prompt?
                 INFO_KI = 7543; -- Your keen senses tell you that something may happen if only you had ?Multiple Choice (Parameter 0)?[this item/these items].?Prompt?
                  USE_KI = 7546; -- Use the ?Multiple Choice (Parameter 0)?[key item/key items]? ?Selection Dialog?Yes. No.?Prompt?
