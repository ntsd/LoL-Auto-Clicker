#IfWinActive, DOTA 2
;Spells
spell_k_1 = {numpad4} ;QQQ
spell_k_2 = {numpad7} ;EEE
spell_k_3 = {numpad9} ;EEW
spell_k_4 = {numpad8} ;EEQ
spell_k_5 = {numpad3} ;WWQ
getaway_k_1 = {numpad5} ;QQW
getaway_k_2 = {numpad2} ;WWQ
getaway_k_3 = {numpad0} ;QWE
getaway_k_4 = {numpad6} ;QQE
getaway_k_5 = {numpad1} ;WWW

spell_%cur_spell% = 0
spell_cd_%cur_spell% = 0
getaway_%cur_getaway% = 0
getaway_cd_%cur_getaway% = 0

;----------------Start of Spell Script Global Variables---------------------
/*
Cooldowns and priorities are defined below.
The key bindings for this script are defined in the Key Bindings section at
the start of script.
*/

;Set the number of spells you have here
num_spell = 5

;Tweak cooldowns here
spell_cd_1 = 5000
spell_cd_2 = 4000
spell_cd_3 = 3000
spell_cd_4 = 2000
spell_cd_5 = 1000

;Set your spell priority here, 1 being highest, 10 being lowest
spell_p_1 = 1
spell_p_2 = 2
spell_p_3 = 3
spell_p_4 = 4
spell_p_5 = 5

;Initializes spell availability array to 1 (off cooldown)
While A_Index <= num_spell
{
r_spell_%A_Index% = 1
}
;----------------End of Spell Global Variables---------------------

;----------------Get Away Script Global Variables---------------------
/*
Cooldowns and priorities are defined below.
The key bindings for this script are defined in the Key Bindings section at
the start of script.
*/

;Set the number of getaways you have here
num_getaway = 5

;Tweak cooldowns here
getaway_cd_1 = 5000
getaway_cd_2 = 4000
getaway_cd_3 = 3000
getaway_cd_4 = 2000
getaway_cd_3 = 1000

;Set your getaways priority here, 1 being highest, 3 being lowest
getaway_p_1 = 1
getaway_p_2 = 2
getaway_p_3 = 3
getaway_p_4 = 4
getaway_p_5 = 5

;Initializes getaways availability array to 1 (off cooldown)
While A_Index <= num_getaway
{
r_getaway_%A_Index% = 1
}
;----------------End of Get Away Global Variables---------------------

IsLabel(spell_)

;-----------Start of Spell 1 Script--------------------

;Set your Spell HotKey here
tab::
cur_spell := spellLogic(cur_spell, cur_key, cur_cool)
Send , %cur_key%

r_spell_%cur_spell% = 0
neg_cur_cool := -cur_cool
SetTimer , spell_%cur_spell% , %neg_cur_cool%
Return

;---------------Subroutine group to reset cooldowns--------------------

spell_1:
spell_2:
spell_3:
spell_4:
spell_5:
r_%A_ThisLabel% = 1
Return

;--------------End of subroutine group to reset cooldowns---------------

spellLogic(cur_spell, ByRef cur_key, ByRef cur_cool)
{
global

/*Initiates cur_spell to your highest priority spell
in the case of all spells being off cooldown
*/
cur_spell := spell_p_1

/*Assigns the value of cur_spell to the first available
spell according to priority
*/
While A_Index <= num_spell
{
spell_number := spell_p_%A_Index%
if (r_spell_%spell_number% = 1)
{
cur_spell := spell_number
Break
}
}

;Sets the spell's corresponding key and cooldown
cur_key := spell_k_%cur_spell%
cur_cool := spell_cd_%cur_spell%

Return cur_spell
}
;------------End of Spell Script-----------------



;-----------Start of Get Away Script--------------------

;Set your Heal Other HotKey here (currently set to ctrl + r)
CapsLock::
cur_getaway := getawayLogic(cur_getaway, cur_key, cur_cool)
Send , %cur_key%

r_getaway_%cur_getaway% = 0
neg_cur_cool := -cur_cool
SetTimer , getaway_%cur_getaway% , %neg_cur_cool%
Return

;---------------Subroutine group to reset cooldowns--------------------
getaway_1:
getaway_2:
getaway_3:
getaway_4:
getaway_5:
r_%A_ThisLabel% = 1
Return

;--------------End of subroutine group to reset cooldowns---------------

getawayLogic(cur_getaway, ByRef cur_key, ByRef cur_cool)
{
global

/*Initiates cur_getaway to your highest priority getaway
in the case of all getaways being off cooldown
*/
cur_getaway := getaway_p_1

/*Assigns the value of cur_getaway to the first available
getaway according to priority
*/
While A_Index <= num_getaway
{
getaway_number := getaway_p_%A_Index%
if (r_getaway_%getaway_number% = 1)
{
cur_getaway := getaway_number
Break
}
}

;Sets the getaway's corresponding key and cooldown
cur_key := getaway_k_%cur_getaway%
cur_cool := getaway_cd_%cur_getaway%

Return cur_getaway
}
;------------End of Get Away Script-----------------