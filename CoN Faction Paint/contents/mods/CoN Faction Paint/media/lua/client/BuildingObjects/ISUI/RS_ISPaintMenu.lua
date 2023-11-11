-------------------------------- Code by Tread ----- (Trealak on Steam) -------------------------------
---------------------------------- Developed For Tread's Paint Signs ----------------------------------

require "BuildingObjects\ISUI\ISPaintMenu"

function ISPaintMenu.addSignOption(subMenuPaint, name, wall, painting, r,g,b)
    local blueOption = subMenuPaint:addOption(name, nil, nil);
    local subMenuBlue = ISContextMenu:getNew(subMenuPaint);
    subMenuPaint:addSubMenu(blueOption, subMenuBlue);
	
	----------------------------- Add new submenu ----------------------------
	local subMenuVanilla = ISContextMenu:getNew(subMenuPaint);
    local vanillaSigns = subMenuBlue:addOption(getText("ContextMenu_RSSigns_Vanilla"))
	subMenuPaint:addSubMenu(vanillaSigns, subMenuVanilla);
	--------------------------------------------------------------------------
		---------- Vanilla Signs ----------
		subMenuVanilla:addOption(getText("ContextMenu_SignSkull"), wall, ISPaintMenu.onPaintSign, ISPaintMenu.player, painting, 36, r,g,b);
		subMenuVanilla:addOption(getText("ContextMenu_SignRightArrow"), wall, ISPaintMenu.onPaintSign, ISPaintMenu.player, painting, 32, r,g,b);
		subMenuVanilla:addOption(getText("ContextMenu_SignLeftArrow"), wall, ISPaintMenu.onPaintSign, ISPaintMenu.player, painting, 33, r,g,b);
		subMenuVanilla:addOption(getText("ContextMenu_SignDownArrow"), wall, ISPaintMenu.onPaintSign, ISPaintMenu.player, painting, 34, r,g,b);
		subMenuVanilla:addOption(getText("ContextMenu_SignUpArrow"), wall, ISPaintMenu.onPaintSign, ISPaintMenu.player, painting, 35, r,g,b);
		-----------------------------------
		
	-------------------------------------------------------------------------	
	--------------------------- Add custom submenu --------------------------
	----- Letters & Digits ----
	local subMenuLetters = ISContextMenu:getNew(subMenuPaint);
	local lettersSigns = subMenuBlue:addOption(getText("ContextMenu_RSSigns_Letters"))
	subMenuPaint:addSubMenu(lettersSigns, subMenuLetters);
		--FactionIcon
			local subSubMenuDigits = ISContextMenu:getNew(subMenuPaint);
			local IconSigns = subMenuLetters:addOption('Faction Icons')
			subMenuLetters:addSubMenu(digitsSigns, subSubMenuDigits);
				subSubMenuDigits:addOption('Atlas', wall, ISPaintMenu.onPaintSign, ISPaintMenu.player, painting, 01, r,g,b);
				subSubMenuDigits:addOption('Devoted', wall, ISPaintMenu.onPaintSign, ISPaintMenu.player, painting, 73, r,g,b);
				subSubMenuDigits:addOption('Reavers', wall, ISPaintMenu.onPaintSign, ISPaintMenu.player, painting, 105, r,g,b);
				subSubMenuDigits:addOption('XSS', wall, ISPaintMenu.onPaintSign, ISPaintMenu.player, painting, 49, r,g,b);

	
end