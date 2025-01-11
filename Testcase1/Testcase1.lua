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


    MainFrame.Breadcrumbs.BreadcrumbForumThread.Text:SetText("Пользователи")
    MainFrame.Breadcrumbs.BreadcrumbsForumThreadName.Text:SetText("SanityIs4TheWeak")
    
    MainFrame.Body.ContextUsername.Text:SetText("SanityIs4TheWeak")
    TextWidth = (MainFrame.Body.ContextUsername.Text:GetWidth())
    MainFrame.Body.ContextUsername:SetWidth(TextWidth)


    MainFrame.Body.FriendsFrame.FriendsTag.Text:SetText("Друзья")
    TextWidth = (MainFrame.Body.FriendsFrame.FriendsTag.Text:GetWidth())
    MainFrame.Body.FriendsFrame.FriendsTag:SetWidth(TextWidth)

    MainFrame.Body.CharactersFrame.CharactersTag.Text:SetText("Анкеты")
    TextWidth = (MainFrame.Body.CharactersFrame.CharactersTag.Text:GetWidth())
    MainFrame.Body.CharactersFrame.CharactersTag:SetWidth(TextWidth)

    MainFrame.Body.EventsFrame.EventsTag.Text:SetText("События")
    TextWidth = (MainFrame.Body.EventsFrame.EventsTag.Text:GetWidth())
    MainFrame.Body.EventsFrame.EventsTag:SetWidth(TextWidth)

    MainFrame.Body.PageWriteTag.Text:SetText("СТЕНА ПОЛЬЗОВАТЕЛЯ")
    TextWidth = (MainFrame.Body.PageWriteTag.Text:GetWidth())
    MainFrame.Body.PageWriteTag:SetWidth(TextWidth)



    TextWidth = (MainFrame.Breadcrumbs.BreadcrumbForumThread.Text:GetWidth())
    MainFrame.Breadcrumbs.BreadcrumbForumThread:SetWidth(TextWidth)
    TextWidth = (MainFrame.Breadcrumbs.BreadcrumbsForumThreadName.Text:GetWidth())
    MainFrame.Breadcrumbs.BreadcrumbsForumThreadName:SetWidth(TextWidth)


    MainFrame.Body.ProfileInformation.ProfileInformation.MyProfileRegistration.Text:SetText("Регистрация")
    TextWidth = (MainFrame.Body.ProfileInformation.ProfileInformation.MyProfileRegistration.Text:GetWidth())
    MainFrame.Body.ProfileInformation.ProfileInformation.MyProfileRegistration:SetWidth(TextWidth)
    
    MainFrame.Body.ProfileInformation.ProfileInformation.MyProfileRegistrationText.Text:SetText("6 лет назад")
    TextWidth = (MainFrame.Body.ProfileInformation.ProfileInformation.MyProfileRegistrationText.Text:GetWidth())
    MainFrame.Body.ProfileInformation.ProfileInformation.MyProfileRegistrationText:SetWidth(TextWidth)


    MainFrame.Body.ProfileInformation.ProfileInformation.MyProfileGroups.Text:SetText("Группы")
    TextWidth = (MainFrame.Body.ProfileInformation.ProfileInformation.MyProfileGroups.Text:GetWidth())
    MainFrame.Body.ProfileInformation.ProfileInformation.MyProfileGroups:SetWidth(TextWidth)

    MainFrame.Body.ProfileInformation.ProfileInformation.MyProfileGroupsText.Text:SetText("Ролевики")
    TextWidth = (MainFrame.Body.ProfileInformation.ProfileInformation.MyProfileGroupsText.Text:GetWidth())
    MainFrame.Body.ProfileInformation.ProfileInformation.MyProfileGroupsText:SetWidth(TextWidth)

    MainFrame.Body.ProfileInformation.ProfileInformation.MyProfileCity.Text:SetText("Город")
    TextWidth = (MainFrame.Body.ProfileInformation.ProfileInformation.MyProfileCity.Text:GetWidth())
    MainFrame.Body.ProfileInformation.ProfileInformation.MyProfileCity:SetWidth(TextWidth)


    MainFrame.Body.ProfileInformation.ProfileInformation.MyProfileCityText.Text:SetText("Брилл")
    TextWidth = (MainFrame.Body.ProfileInformation.ProfileInformation.MyProfileCityText.Text:GetWidth())
    MainFrame.Body.ProfileInformation.ProfileInformation.MyProfileCityText:SetWidth(TextWidth)

    MainFrame.Body.ProfileInformation.ProfileInformation.MyProfileSex.Text:SetText("Пол")
    TextWidth = (MainFrame.Body.ProfileInformation.ProfileInformation.MyProfileSex.Text:GetWidth())
    MainFrame.Body.ProfileInformation.ProfileInformation.MyProfileSex:SetWidth(TextWidth)

    MainFrame.Body.ProfileInformation.ProfileInformation.MyProfileSexText.Text:SetText("Мужской")
    TextWidth = (MainFrame.Body.ProfileInformation.ProfileInformation.MyProfileSexText.Text:GetWidth())
    MainFrame.Body.ProfileInformation.ProfileInformation.MyProfileSexText:SetWidth(TextWidth)

    MainFrame.Body.ProfileInformation.ProfileInformation.MyProfileSkype.Text:SetText("Skype")
    TextWidth = (MainFrame.Body.ProfileInformation.ProfileInformation.MyProfileSkype.Text:GetWidth())
    MainFrame.Body.ProfileInformation.ProfileInformation.MyProfileSkype:SetWidth(TextWidth)

    MainFrame.Body.ProfileInformation.ProfileInformation.MyProfileSkypeText.Text:SetText("123123123")
    TextWidth = (MainFrame.Body.ProfileInformation.ProfileInformation.MyProfileSkypeText.Text:GetWidth())
    MainFrame.Body.ProfileInformation.ProfileInformation.MyProfileSkypeText:SetWidth(TextWidth)

    MainFrame.Body.ProfileNavigation.MyProfile.Text:SetText("ПРОФИЛЬ")
    MainFrame.Body.ProfileNavigation.MyThread.Text:SetText("МОЯ ЛЕНТА")
    MainFrame.Body.ProfileNavigation.MyFriends.Text:SetText("ДРУЗЬЯ")
    MainFrame.Body.ProfileNavigation.MyComments.Text:SetText("КОММЕНТАРИИ")
    MainFrame.Body.ProfileNavigation.MyReputation.Text:SetText("РЕПУТАЦИЯ")
    MainFrame.Body.ProfileNavigation.MyIntegrations.Text:SetText("ИНТЕГРАЦИИ")

    local TextWidth
    TextWidth = (MainFrame.Body.ProfileNavigation.MyProfile.Text:GetWidth())
    MainFrame.Body.ProfileNavigation.MyProfile:SetWidth(TextWidth)

    local TextWidth
    TextWidth = (MainFrame.Body.ProfileNavigation.MyThread.Text:GetWidth())
    MainFrame.Body.ProfileNavigation.MyThread:SetWidth(TextWidth)

    local TextWidth
    TextWidth = (MainFrame.Body.ProfileNavigation.MyFriends.Text:GetWidth())
    MainFrame.Body.ProfileNavigation.MyFriends:SetWidth(TextWidth)

    local TextWidth
    TextWidth = (MainFrame.Body.ProfileNavigation.MyComments.Text:GetWidth())
    MainFrame.Body.ProfileNavigation.MyComments:SetWidth(TextWidth)

    local TextWidth
    TextWidth = (MainFrame.Body.ProfileNavigation.MyReputation.Text:GetWidth())
    MainFrame.Body.ProfileNavigation.MyReputation:SetWidth(TextWidth)

    local TextWidth
    TextWidth = (MainFrame.Body.ProfileNavigation.MyIntegrations.Text:GetWidth())
    MainFrame.Body.ProfileNavigation.MyIntegrations:SetWidth(TextWidth)


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


-- function FrameWidthSetter(PathToElement)
-- local PathToText = PathToElement .. ".Text"
-- local TextWidth = (PathToText:GetWidth())
-- PathToElement:SetWidth(TextWidth)
-- end



