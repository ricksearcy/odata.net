//   OData .NET Libraries ver. 6.8.1
//   Copyright (c) Microsoft Corporation
//   All rights reserved. 
//   MIT License
//   Permission is hereby granted, free of charge, to any person obtaining a copy of
//   this software and associated documentation files (the "Software"), to deal in
//   the Software without restriction, including without limitation the rights to use,
//   copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the
//   Software, and to permit persons to whom the Software is furnished to do so,
//   subject to the following conditions:

//   The above copyright notice and this permission notice shall be included in all
//   copies or substantial portions of the Software.

//   THE SOFTWARE IS PROVIDED *AS IS*, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//   IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
//   FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
//   COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
//   IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
//   CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

namespace Microsoft.OData.Edm.Csdl.Parsing.Ast
{
    using System.Collections.Generic;

    /// <summary>
    /// Represents a CSDL navigation property.
    /// </summary>
    internal class CsdlNavigationProperty : CsdlNamedElement
    {
        private readonly string type;
        private readonly bool? nullable;
        private readonly string partner;
        private readonly bool containsTarget;
        private readonly CsdlOnDelete onDelete;
        private readonly IEnumerable<CsdlReferentialConstraint> referentialConstraints;

        public CsdlNavigationProperty(string name, string type, bool? nullable, string partner, bool containsTarget, CsdlOnDelete onDelete, IEnumerable<CsdlReferentialConstraint> referentialConstraints, CsdlDocumentation documentation, CsdlLocation location)
            : base(name, documentation, location)
        {
            this.type = type;
            this.nullable = nullable;
            this.partner = partner;
            this.containsTarget = containsTarget;
            this.onDelete = onDelete;
            this.referentialConstraints = referentialConstraints;
        }

        public string Type
        {
            get { return this.type; }
        }

        public bool? Nullable
        {
            get { return this.nullable;  }
        }

        public string Partner
        {
            get { return this.partner; }
        }

        public bool ContainsTarget
        {
            get { return this.containsTarget; }
        }

        public CsdlOnDelete OnDelete
        {
            get { return this.onDelete; }
        }

        public IEnumerable<CsdlReferentialConstraint> ReferentialConstraints
        {
            get { return this.referentialConstraints; }
        }
    }
}