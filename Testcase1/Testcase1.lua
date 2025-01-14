Testcase1 = LibStub("AceAddon-3.0"):NewAddon("Testcase1", "AceConsole-3.0", "AceEvent-3.0" );

Testcase1.framePool = nil

function Testcase1:OnInitialize()
	self:RegisterChatCommand("testcase", "ShowFrame")
	self:RegisterChatCommand("tc", "ShowFrame")
    self:RegisterChatCommand("tp", "ShowFrame")
    self:Print("Testcase is work")
    self.framePool = CreateFramePool("Frame", nil, "FriendsItemTemplate");

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


function Testcase1:CreateFriendsItem(PreviousItem, isRoot)
    local FriendsContainer = MainFrame.Body.FriendsFrame.FriendsItemContainer
    local Item = self.framePool:Acquire()
      if isRoot then
          Item:SetPoint("TOPLEFT", FriendsContainer, "TOPLEFT", 0, 0);
      elseif PreviousItem then
           Item:SetPoint("LEFT", PreviousItem, "RIGHT", 20, 0);
      end
      print(Item)
      return Item
  end
  
  function Testcase1:CreateRootItem()
      local RootItem = self:CreateFriendsItem(nil,true)
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
          self.RootItem = RootItem
      end
  
      local ColumnCounter = 0;
      local PreviousItem = RootItem;
      local ItemsCounter = 0;
      for i = 1, n-1 do
        local Item = self:CreateFriendsItem(PreviousItem)
           if not Item then
              break
          end
  
           if i == 1 then
            PreviousItem = Item
           end
          ItemsCounter = ItemsCounter + 1
          print(ItemsCounter)
  
          if ItemsCounter %5 == 0 then
              ColumnCounter = ColumnCounter +1
              Item:SetPoint("TOPLEFT", FriendsContainer, "TOPLEFT", 0, -30*ColumnCounter);
              PreviousItem = Item;
              local CurrentHeight = MainFrame.Body.FriendsFrame:GetHeight()
              MainFrame.Body.FriendsFrame:SetHeight(CurrentHeight+35)
              MainFrame.Body.FriendsFrame.Border:SetHeight(CurrentHeight+35)
          end
       PreviousItem = Item
      end
  end