@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZZAPKG_STD_007STU'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZZAC_PKG_STD_007STU
  provider contract TRANSACTIONAL_QUERY
  as projection on ZZAR_PKG_STD_007STU
  association [1..1] to ZZAR_PKG_STD_007STU as _BaseEntity on $projection.STUDENTID = _BaseEntity.STUDENTID
{
  key StudentID,
  FirstName,
  LastName,
  Age,
  Dob,
  CourseName,
  CourseDuration,
  StudentGender,
  StudentEmail,
  StudentPhoneNumber,
  StudentAddress,
  @Semantics: {
    User.Createdby: true
  }
  LocalCreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  LocalCreatedAt,
  @Semantics: {
    User.Localinstancelastchangedby: true
  }
  LocalLastChangedBy,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  _BaseEntity
}
