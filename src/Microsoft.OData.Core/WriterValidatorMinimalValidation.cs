﻿//---------------------------------------------------------------------
// <copyright file="WriterValidatorMinimalValidation.cs" company="Microsoft">
//      Copyright (C) Microsoft Corporation. All rights reserved. See License.txt in the project root for license information.
// </copyright>
//---------------------------------------------------------------------

namespace Microsoft.OData
{
    using Microsoft.OData.Metadata;
    using Microsoft.OData.Edm;

    internal sealed class WriterValidatorMinimalValidation : IWriterValidator
    {
        /// <summary>
        /// Validates that message writer settings are correct.
        /// </summary>
        /// <param name="messageWriterSettings">The message writer settings to validate.</param>
        /// <param name="writingResponse">True if we are writing a response.</param>
        public void ValidateMessageWriterSettings(ODataMessageWriterSettings messageWriterSettings, bool writingResponse)
        {
        }

        /// <summary>
        /// Validates an <see cref="ODataProperty"/> for not being null.
        /// </summary>
        /// <param name="property">The property to validate for not being null.</param>
        public void ValidatePropertyNotNull(ODataProperty property)
        {
        }

        /// <summary>
        /// Validates a property name to ensure all required information is specified.
        /// </summary>
        /// <param name="propertyName">The property name to validate.</param>
        public void ValidatePropertyName(string propertyName)
        {
        }

        /// <summary>
        /// Validates that a property with the specified name exists on a given structured type.
        /// The structured type can be null if no metadata is available.
        /// </summary>
        /// <param name="propertyName">The name of the property to validate.</param>
        /// <param name="owningStructuredType">The owning type of the property with name <paramref name="propertyName"/> 
        /// or null if no metadata is available.</param>
        /// <param name="throwOnMissingProperty">Whether throw exception on missing property.</param>
        /// <returns>The <see cref="IEdmProperty"/> instance representing the property with name <paramref name="propertyName"/> 
        /// or null if no metadata is available.</returns>
        public IEdmProperty ValidatePropertyDefined(
            string propertyName,
            IEdmStructuredType owningStructuredType,
            bool throwOnMissingProperty = true)
        {
            if (owningStructuredType == null)
            {
                return null;
            }

            return owningStructuredType.FindProperty(propertyName);
        }

        /// <summary>
        /// Validates that a navigation property with the specified name exists on a given entity type.
        /// The entity type can be null if no metadata is available.
        /// </summary>
        /// <param name="propertyName">The name of the property to validate.</param>
        /// <param name="owningEntityType">The owning entity type or null if no metadata is available.</param>
        /// <returns>The <see cref="IEdmProperty"/> instance representing the navigation property with name <paramref name="propertyName"/>
        /// or null if no metadata is available.</returns>
        public IEdmNavigationProperty ValidateNavigationPropertyDefined(string propertyName, IEdmEntityType owningEntityType)
        {
            return (IEdmNavigationProperty)ValidatePropertyDefined(propertyName, owningEntityType);
        }

        /// <summary>
        /// Validates a resource in an expanded link to make sure the entity types match.
        /// </summary>
        /// <param name="resourceType">The <see cref="IEdmEntityType"/> of the resource.</param>
        /// <param name="parentNavigationPropertyType">The type of the parent navigation property.</param>
        public void ValidateResourceInExpandedLink(IEdmEntityType resourceType, IEdmEntityType parentNavigationPropertyType)
        {
        }

        /// <summary>
        /// Validates that an <see cref="ODataOperation"/> can be written.
        /// </summary>
        /// <param name="operation">The operation (an action or a function) to validate.</param>
        /// <param name="writingResponse">true if writing a response; otherwise false.</param>
        public void ValidateCanWriteOperation(ODataOperation operation, bool writingResponse)
        {
        }

        /// <summary>
        /// Validates an <see cref="ODataResourceSet"/> to ensure all required information is specified and valid on the WriteEnd call.
        /// </summary>
        /// <param name="resourceSet">The resource set to validate.</param>
        /// <param name="writingRequest">Flag indicating whether the resource set is written as part of a request or a response.</param>
        public void ValidateResourceSetAtEnd(ODataResourceSet resourceSet, bool writingRequest)
        {
        }

        /// <summary>
        /// Validates an <see cref="ODataResource"/> to ensure all required information is specified and valid on WriteStart call.
        /// </summary>
        /// <param name="resource">The resource to validate.</param>
        public void ValidateResourceAtStart(ODataResource resource)
        {
        }

        /// <summary>
        /// Validates an <see cref="ODataResource"/> to ensure all required information is specified and valid on WriteEnd call.
        /// </summary>
        /// <param name="resource">The resource to validate.</param>
        public void ValidateResourceAtEnd(ODataResource resource)
        {
        }

        /// <summary>
        /// Validates an <see cref="ODataStreamReferenceValue"/> to ensure all required information is specified and valid.
        /// </summary>
        /// <param name="streamReference">The stream reference to validate.</param>
        /// <param name="isDefaultStream">true if <paramref name="streamReference"/> is the default stream for an entity; false if it is a named stream property value.</param>
        public void ValidateStreamReferenceValue(ODataStreamReferenceValue streamReference, bool isDefaultStream)
        {
        }

        /// <summary>
        /// Validates a named stream property to ensure it's not null and it's name if correct.
        /// </summary>
        /// <param name="streamProperty">The stream reference property to validate.</param>
        /// <param name="edmProperty">Property metadata to validate against.</param>
        /// <param name="writingResponse">true when writing a response; otherwise false.</param>
        /// <remarks>This does NOT validate the value of the stream property, just the property itself.</remarks>
        public void ValidateStreamReferenceProperty(ODataProperty streamProperty, IEdmProperty edmProperty, bool writingResponse)
        {
        }

        /// <summary>
        /// Validates that the specified <paramref name="entityReferenceLink"/> is not null.
        /// </summary>
        /// <param name="entityReferenceLink">The entity reference link to validate.</param>
        /// <remarks>This should be called only for entity reference links inside the ODataEntityReferenceLinks.Links collection.</remarks>
        public void ValidateEntityReferenceLinkNotNull(ODataEntityReferenceLink entityReferenceLink)
        {
        }

        /// <summary>
        /// Validates an entity reference link instance.
        /// </summary>
        /// <param name="entityReferenceLink">The entity reference link to validate.</param>
        public void ValidateEntityReferenceLink(ODataEntityReferenceLink entityReferenceLink)
        {
        }

        /// <summary>
        /// Validates an <see cref="ODataNestedResourceInfo"/> to ensure all required information is specified and valid.
        /// </summary>
        /// <param name="nestedResourceInfo">The nested resource info to validate.</param>
        /// <param name="declaringStructuredType">The <see cref="IEdmStructuredType"/> declaring the navigation property; or null if metadata is not available.</param>
        /// <param name="expandedPayloadKind">The <see cref="ODataPayloadKind"/> of the expanded content of this nested resource info or null for deferred links.</param>
        /// <returns>The type of the navigation property for this nested resource info; or null if no <paramref name="declaringStructuredType"/> was specified.</returns>
        public IEdmNavigationProperty ValidateNestedResourceInfo(
            ODataNestedResourceInfo nestedResourceInfo,
            IEdmStructuredType declaringStructuredType,
            ODataPayloadKind? expandedPayloadKind)
        {
            return declaringStructuredType == null ? null : declaringStructuredType.FindProperty(nestedResourceInfo.Name) as IEdmNavigationProperty;
        }

        /// <summary>
        /// Validates that the sepcified nested resource info has cardinality, that is it has the IsCollection value set.
        /// </summary>
        /// <param name="nestedResourceInfo">The nested resource info to validate.</param>
        public void ValidateNestedResourceInfoHasCardinality(ODataNestedResourceInfo nestedResourceInfo)
        {
        }

        /// <summary>
        /// Validates that the expected property allows null value.
        /// </summary>
        /// <param name="expectedPropertyTypeReference">The expected property type or null if we don't have any.</param>
        /// <param name="propertyName">The name of the property.</param>
        /// <param name="writerSettings">The <see cref="ODataMessageWriterSettings"/> the settings of the writer.</param>
        /// <param name="model">The model to use to get the OData version.</param>
        public void ValidateNullPropertyValue(IEdmTypeReference expectedPropertyTypeReference, string propertyName, ODataMessageWriterSettings writerSettings, IEdmModel model)
        {
        }

        /// <summary>
        /// Validates that an open property value is supported.
        /// </summary>
        /// <param name="propertyName">The name of the open property.</param>
        /// <param name="value">The value of the open property.</param>
        public void ValidateOpenPropertyValue(string propertyName, object value)
        {
        }

        /// <summary>
        /// Validates a element in service document.
        /// </summary>
        /// <param name="serviceDocumentElement">The element in service document to validate.</param>
        /// <param name="format">Format that is being validated.</param>
        public void ValidateServiceDocumentElement(ODataServiceDocumentElement serviceDocumentElement, ODataFormat format)
        {
        }

        /// <summary>
        /// Validates an item of a collection to ensure it is not of collection and stream reference types.
        /// </summary>
        /// <param name="item">The collection item.</param>
        /// <param name="isNullable">True if the items in the collection are nullable, false otherwise.</param>
        public void ValidateCollectionItem(object item, bool isNullable)
        {
        }

        /// <summary>
        /// Validates that a given primitive value is of the expected (primitive) type.
        /// </summary>
        /// <param name="value">The value to check.</param>
        /// <param name="valuePrimitiveTypeReference">The primitive type reference for the value - some callers have this already, so we save the lookup here.</param>
        /// <param name="expectedTypeReference">The expected type for the value.</param>
        /// <remarks>
        /// Some callers have the primitive type reference already resolved (from the value type)
        /// so this method is an optimized version to not lookup the primitive type reference again.
        /// </remarks>
        public void ValidateIsExpectedPrimitiveType(object value,
            IEdmPrimitiveTypeReference valuePrimitiveTypeReference,
            IEdmTypeReference expectedTypeReference)
        {
        }

        /// <summary>
        /// Validates between metadata and value type reference.
        /// </summary>
        /// <param name="typeReferenceFromMetadata">The metadata type reference to check.</param>
        /// <param name="typeReferenceFromValue">The value type reference to check.</param>
        public void ValidateTypeReference(IEdmTypeReference typeReferenceFromMetadata,
            IEdmTypeReference typeReferenceFromValue)
        {
        }

        /// <summary>
        /// Validates that the observed type kind is the expected type kind.
        /// </summary>
        /// <param name="actualTypeKind">The actual type kind to compare.</param>
        /// <param name="expectedTypeKind">The expected type kind to compare against.</param>
        /// <param name="edmType">The edm type to use in the error.</param>
        public void ValidateTypeKind(EdmTypeKind actualTypeKind, EdmTypeKind expectedTypeKind, IEdmType edmType)
        {
        }

        /// <summary>
        /// Validates that the <paramref name="typeReference"/> represents a collection type.
        /// </summary>
        /// <param name="typeReference">The type reference to validate.</param>
        /// <returns>The <see cref="IEdmCollectionTypeReference"/> instance representing the collection passed as <paramref name="typeReference"/>.</returns>
        public IEdmCollectionTypeReference ValidateCollectionType(IEdmTypeReference typeReference)
        {
            return typeReference.AsCollectionOrNull();
        }

        /// <summary>
        /// Validates that the specified <paramref name="resource"/> is a valid resource as per the specified type.
        /// </summary>
        /// <param name="resource">The resource to validate.</param>
        /// <param name="resourceType">Optional entity type to validate the resource against.</param>
        /// <param name="model">Model containing the entity type.</param>
        /// <remarks>If the <paramref name="resourceType"/> is available only resource-level tests are performed, properties and such are not validated.</remarks>
        public void ValidateMetadataResource(ODataResource resource, IEdmEntityType resourceType, IEdmModel model)
        {
        }
    }
}