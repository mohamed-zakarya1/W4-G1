//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WpfApp17
{
    using System;
    using System.Collections.Generic;
    
    public partial class order1
    {
        public int order_id { get; set; }
        public Nullable<int> cutomer_id { get; set; }
        public Nullable<int> book_id { get; set; }
        public System.DateTime order_date { get; set; }
        public int quantity { get; set; }
    
        public virtual book book { get; set; }
        public virtual customer customer { get; set; }
    }
}
