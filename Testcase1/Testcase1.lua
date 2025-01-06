Testcase1 = LibStub("AceAddon-3.0"):NewAddon("Testcase1", "AceConsole-3.0", "AceEvent-3.0" );

function Testcase1:OnInitialize()
	self:RegisterChatCommand("testcase", "ShowFrame")
	self:RegisterChatCommand("tc", "ShowFrame")
    self:Print("Testcase is work")
end

function Testcase1:ShowFrame()
    MainFrame:Show()
end


function Testcase1:Search()
    local FirstPart = "Interface/ICONS/"
    local SecondPart = SearchBox:GetText()
    local ImagePath = (FirstPart .. SecondPart )
    Testcase1:ChangeImage(ImagePath)
end


function Testcase1:Selection(TextureName)
    _G.selector = _G[TextureName]
    self:Print("Picked")
end


function Testcase1:ChangeImage(ImagePath)
    local texture = _G.selector
    texture:SetTexture(ImagePath)
    texture:Show()
end
