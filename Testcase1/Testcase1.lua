Testcase1 = LibStub("AceAddon-3.0"):NewAddon("Testcase1", "AceConsole-3.0", "AceEvent-3.0" );

function Testcase1:OnInitialize()
	self:RegisterChatCommand("testcase", "ShowFrame")
	self:RegisterChatCommand("tc", "ShowFrame")
    self:RegisterChatCommand("tp", "ShowFrame")
    self:Print("Testcase is work")


end

function ChangeText(object, Text)
    object.Text:SetText(Text)
    TextWidth = (object.Text:GetWidth())
    object:SetWidth(TextWidth)
end

function Testcase1:ShowFrame()
    MainFrame:Show()

    ChangeText(MainFrame.Header.FAQ, "FAQ")
    ChangeText(MainFrame.Header.MAIN, "ОСНОВНОЕ")
    ChangeText(MainFrame.Header.Community, "СООБЩЕСТВО")
    ChangeText(MainFrame.Header.SBIR, "СИСТЕМА БОЯ И РАЗВИТИЯ")
    ChangeText(MainFrame.Header.Guidelines, "РУКОВОДСТВА")


    ChangeText(MainFrame.Breadcrumbs.BreadcrumbForumThread, "Пользователи")
    ChangeText(MainFrame.Breadcrumbs.BreadcrumbsForumThreadName, "SanityIs4TheWeak")
    ChangeText(MainFrame.Body.ContextUsername, "SanityIs4TheWeak")
    ChangeText(MainFrame.Body.FriendsFrame.FriendsTag, "Друзья")
    ChangeText(MainFrame.Body.CharactersFrame.CharactersTag, "Анкеты")
    ChangeText(MainFrame.Body.EventsFrame.EventsTag, "События")
    ChangeText(MainFrame.Body.PageWriteTag, "СТЕНА ПОЛЬЗОВАТЕЛЯ")
    ChangeText(MainFrame.Body.ProfileInformation.ProfileInformation.MyProfileRegistration, "Регистрация")
    ChangeText(MainFrame.Body.ProfileInformation.ProfileInformation.MyProfileRegistrationText, "6 лет назад")
    ChangeText(MainFrame.Body.ProfileInformation.ProfileInformation.MyProfileGroups, "Группы")
    ChangeText(MainFrame.Body.ProfileInformation.ProfileInformation.MyProfileGroupsText, "Ролевики")
    ChangeText(MainFrame.Body.ProfileInformation.ProfileInformation.MyProfileCity, "Город")
    ChangeText(MainFrame.Body.ProfileInformation.ProfileInformation.MyProfileCityText, "Брилл")
    ChangeText(MainFrame.Body.ProfileInformation.ProfileInformation.MyProfileSex, "Пол")
    ChangeText(MainFrame.Body.ProfileInformation.ProfileInformation.MyProfileSexText, "Мужской")
    ChangeText(MainFrame.Body.ProfileInformation.ProfileInformation.MyProfileSkype, "Skype")
    ChangeText(MainFrame.Body.ProfileInformation.ProfileInformation.MyProfileSkypeText, "123123123")
    ChangeText(MainFrame.Body.ProfileNavigation.MyProfile, "ПРОФИЛЬ")
    ChangeText(MainFrame.Body.ProfileNavigation.MyThread, "МОЯ ЛЕНТА")
    ChangeText(MainFrame.Body.ProfileNavigation.MyFriends, "ДРУЗЬЯ")
    ChangeText(MainFrame.Body.ProfileNavigation.MyComments, "КОММЕНТАРИИ")
    ChangeText(MainFrame.Body.ProfileNavigation.MyReputation, "РЕПУТАЦИЯ")
    ChangeText(MainFrame.Body.ProfileNavigation.MyIntegrations, "ИНТЕГРАЦИИ")



end


function Testcase1:CreateRootItem()
    local FriendsContainer = MainFrame.Body.FriendsFrame.FriendsItemContainer

    local RootItem = CreateFrame("Frame", "Root", FriendsContainer, "FriendsItemTemplate")
    RootItem:SetPoint("TOPLEFT", FriendsContainer, "TOPLEFT", 0, 0);
    self.RootItem = RootItem
    return RootItem
end
function Testcase1:GetItemCount(object)
    local n = tonumber(object:GetText())
    if n then
        self:CreateFramesFromTemplate(n)
    else
        return nil
    end
end

function Testcase1:CreateFramesFromTemplate(n)
    local FriendsContainer = MainFrame.Body.FriendsFrame.FriendsItemContainer

     local RootItem = self.RootItem
    if not RootItem then
        RootItem = self:CreateRootItem()
    end


    local ColumnCounter = 0;
    local previousItem = RootItem;
    local ItemsCounter = 0;
    for i = 1, n-1 do
        local Item = CreateFrame("Frame", "Item" .. i, FriendsContainer, "FriendsItemTemplate")

        if i == 1 then
            Item:SetPoint("LEFT", RootItem,"RIGHT", 20,0);
             previousItem = Item;
        else
             Item:SetPoint("LEFT", previousItem, "RIGHT", 20, 0);
              Item:SetPoint("TOP",previousItem,"TOP",0,0);
              previousItem = Item;
         end


        ItemsCounter = ItemsCounter + 1
        print(ItemsCounter)


        if ItemsCounter %5 == 0 then
        ColumnCounter = ColumnCounter +1
        Item:SetPoint("TOPLEFT", FriendsContainer, "TOPLEFT", 0, -30*ColumnCounter);
        previousItem = Item;
        local currentHeight = MainFrame.Body.FriendsFrame:GetHeight()
        MainFrame.Body.FriendsFrame:SetHeight(currentHeight+35)
        MainFrame.Body.FriendsFrame.Border:SetHeight(currentHeight+35)

        end


    end
end