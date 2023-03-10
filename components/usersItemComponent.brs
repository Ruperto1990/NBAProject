sub init()
    m.userProfile = m.top.findNode("userProfile")
    m.dataUserProfile = m.top.findNode("dataUserProfile")
    m.userName = m.top.findNode("userName")
    m.firstScreen = m.top.findNode("userComponentsAlignment")
end sub

sub onHeightChanged()
    m.userProfile.width = m.top.width
    m.userProfile.height = m.top.height
end sub

sub onitemContentChanged()
    m.userProfile.uri = m.top.itemContent.HDPOSTERURL
    m.userName.text = m.top.itemContent.title

    if m.top.itemContent.drawPencilEdit = true then
        m.dataUserProfile.opacity = 1
    else if m.top.itemContent.drawPencilEdit = false then
        m.dataUserProfile.opacity = 0.3
    end if
end sub 
