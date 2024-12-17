page 50100 pgfireplace
{
    Caption = 'Fireplace';
    PageType = CardPart;
    RefreshOnActivate = true;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'youtube';

                Visible = true;
                group(test)
                {
                    ShowCaption = false;
                    usercontrol(fireplace; FireplaceControl)
                    {

                        ApplicationArea = all;
                        trigger Ready()
                        begin
                            CurrPage.fireplace.embedHomePage();
                        end;
                    }

                }
            }
        }
    }

}


pageextension 50100 fireplaceextn extends "Business Manager Role Center"
{
    layout
    {
        modify(Control139)
        {
            Visible = false;
        }
        addbefore(Control16)
        {

            part(fireplacepart; pgfireplace)
            {
                ApplicationArea = all;
                Visible = true;
            }
        }
    }

}

controladdin "FireplaceControl"
{

    RequestedWidth = 760;
    RequestedHeight = 708;

    Scripts = 'js/fireplace.js';
    StartupScript = 'js/start.js';

    event Ready()
    procedure embedHomePage()

}