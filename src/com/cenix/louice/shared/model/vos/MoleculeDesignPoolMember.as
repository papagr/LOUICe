package com.cenix.louice.shared.model.vos
{
    import org.everest.flex.model.MembersCollection;
	
    public class MoleculeDesignPoolMember extends MoleculeDesignSetMember
    {
        public var molecule_type:MoleculeTypeMember;
        public var number_designs:Number;
        public var supplier_molecule_designs:MembersCollection;

        public function MoleculeDesignPoolMember(title:String=null, selfLink:String=null)
        {
            super(title, selfLink);
        }
        
        public function get productIdsLabel():String
        {
            var labels:Array = new Array();
            for each (var smd:SupplierMoleculeDesignMember in supplier_molecule_designs)
            {
                labels.push(smd.productIdLabel);
            }
            return labels.join('\n');
        }
		
    }
}