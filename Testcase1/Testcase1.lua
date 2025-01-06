Testcase1 = LibStub("AceAddon-3.0"):NewAddon("Testcase1", "AceConsole-3.0", "AceEvent-3.0" );

function Testcase1:OnInitialize()
	self:RegisterChatCommand("testcase", "ShowFrame")
	self:RegisterChatCommand("tc", "ShowFrame")
    self:Print("Testcase is work")
end

function Testcase1:ShowFrame()
    MainFrame:Show()
end


function Testcase1:InputText(self)
    local prefix = "Interface/ICONS/"
    local postfix = MainFrame.searchBox:GetText()
    local path_to_change = (prefix .. postfix)
    Testcase1:ChangeImage(path_to_change)
    
end

function Testcase1:IsSelected(self)
    selector = self
    print("Selected", selector)
end

function Testcase1:ChangeImage(path_to_change)
    selector:SetTexture(path_to_change)
    selector:Show()
end

function Testcase1:GenerateTooltips(self)
    local pictureId = self:GetTexture()
    GameTooltip:SetOwner(self, "ANCHOR_CURSOR")
    GameTooltip:AddLine(pictureId)
    GameTooltip:Show()


end