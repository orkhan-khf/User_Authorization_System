//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace User_Authorization_System.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Permission_Table
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Permission_Table()
        {
            this.Pivot_P_R_Table = new HashSet<Pivot_P_R_Table>();
        }
    
        public int permission_id { get; set; }
        public string permission_controller { get; set; }
        public string permission_action { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Pivot_P_R_Table> Pivot_P_R_Table { get; set; }
    }
}
