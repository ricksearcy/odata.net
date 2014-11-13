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

namespace Microsoft.OData.Client
{
    using System;
    using Microsoft.OData.Client.ALinq.UriParser;
    using Microsoft.OData.Core;

    /// <summary>
    /// Translate from an expand path token to a string.
    /// </summary>
    internal class SelectExpandPathToStringVisitor : IPathSegmentTokenVisitor<string>
    {
        /// <summary>
        /// The beginning of a sub-select clause
        /// </summary>
        public const string SelectClause = "($select=";

        /// <summary>
        /// The beginning of a sub-expand clause
        /// </summary>
        public const string StartingExpandClause = "($expand=";

        /// <summary>
        /// The beginning of an expand clause for the current level.
        /// </summary>
        public const string NonStartingExpandClause = "$expand=";

        /// <summary>
        /// Translate a system token, always throws.
        /// </summary>
        /// <param name="tokenIn">the system token.</param>
        /// <returns>Always throws, because a system token is illegal in this case.</returns>
        public string Visit(SystemToken tokenIn)
        {
            throw new NotSupportedException(Strings.ALinq_IllegalSystemQueryOption(tokenIn.Identifier));
        }

        /// <summary>
        /// Translate a NonSystemToken into a select or expand string.
        /// </summary>
        /// <param name="tokenIn">the non sytem token to translate</param>
        /// <returns>The string representation of a given NonSystemToken</returns>
        public string Visit(NonSystemToken tokenIn)
        {
            if (tokenIn.NextToken == null)
            {
                return tokenIn.Identifier;
            }
            else
            {
                if (tokenIn.NextToken.IsStructuralProperty)
                {
                    PathSegmentToken firstNonStructuralProperty;
                    string selectClauses = this.WriteNextStructuralProperties(tokenIn.NextToken, out firstNonStructuralProperty);
                    if (firstNonStructuralProperty != null)
                    {
                        return tokenIn.Identifier + SelectClause + selectClauses + UriHelper.SEMICOLON + NonStartingExpandClause + firstNonStructuralProperty.Accept(this) + UriHelper.RIGHTPAREN;
                    }
                    else
                    {
                        return tokenIn.Identifier + SelectClause + selectClauses + UriHelper.RIGHTPAREN;
                    }
                }
                else
                {
                    return tokenIn.Identifier + StartingExpandClause + tokenIn.NextToken.Accept(this) + UriHelper.RIGHTPAREN;
                }
            }
        }

        /// <summary>
        /// Follow a chain of structrual properties until we hit a non-structural property
        /// </summary>
        /// <param name="firstStructuralProperty">the first structural property we hit</param>
        /// <param name="firstNonStructuralProperty">the first non structural property we hit</param>
        /// <returns>a comma separated list of structural properties</returns>
        private string WriteNextStructuralProperties(PathSegmentToken firstStructuralProperty, out PathSegmentToken firstNonStructuralProperty)
        {
            firstNonStructuralProperty = firstStructuralProperty;
            string stringToWrite = "";
            while (firstNonStructuralProperty.IsStructuralProperty)
            {
                if (firstNonStructuralProperty.NextToken != null)
                {
                    if (firstNonStructuralProperty.NextToken.IsStructuralProperty)
                    {
                        stringToWrite += firstNonStructuralProperty.Identifier + ",";
                    }
                    else
                    {
                        stringToWrite += firstNonStructuralProperty.Identifier;
                    }

                    firstNonStructuralProperty = firstNonStructuralProperty.NextToken;  
                }
                else
                {
                    stringToWrite += firstNonStructuralProperty.Identifier;
                    firstNonStructuralProperty = null;
                    return stringToWrite;
                }
            }

            return stringToWrite;
        }
    }
}