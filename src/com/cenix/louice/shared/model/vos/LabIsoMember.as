package com.cenix.louice.shared.model.vos
{
    
    [Bindable]
    public class LabIsoMember extends IsoMember
    {
        
        public var iso_request:LabIsoRequestMember;
        
        public function LabIsoMember(title:String=null, selfLink:String=null)
        {
            super(title, selfLink);
        }

    }
}