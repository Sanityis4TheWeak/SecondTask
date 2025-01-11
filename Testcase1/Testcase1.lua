Testcase1 = LibStub("AceAddon-3.0"):NewAddon("Testcase1", "AceConsole-3.0", "AceEvent-3.0" );

function Testcase1:OnInitialize()
	self:RegisterChatCommand("testcase", "ShowFrame")
	self:RegisterChatCommand("tc", "ShowFrame")
    self:RegisterChatCommand("tp", "ShowFrame")
    self:Print("Testcase is work")
end

function Testcase1:ShowFrame()
    MainFrame:Show()
    MainFrame.Header.FAQ.Text:SetText("FAQ")
    MainFrame.Header.MAIN.Text:SetText("ОСНОВНОЕ")
    MainFrame.Header.Community.Text:SetText("СООБЩЕСТВО")
    MainFrame.Header.SBIR.Text:SetText("СИСТЕМА БОЯ И РАЗВИТИЯ")
    MainFrame.Header.Guidelines.Text:SetText("РУКОВОДСТВА")

    local TextWidth
    TextWidth = (MainFrame.Header.FAQ.Text:GetWidth())
    MainFrame.Header.FAQ:SetWidth(TextWidth)
    TextWidth = (MainFrame.Header.MAIN.Text:GetWidth())
    MainFrame.Header.MAIN:SetWidth(TextWidth)
    TextWidth = (MainFrame.Header.Community.Text:GetWidth())
    MainFrame.Header.Community:SetWidth(TextWidth)
    TextWidth = (MainFrame.Header.SBIR.Text:GetWidth())
    MainFrame.Header.SBIR:SetWidth(TextWidth)
    TextWidth = (MainFrame.Header.Guidelines.Text:GetWidth())
    MainFrame.Header.Guidelines:SetWidth(TextWidth)
end




